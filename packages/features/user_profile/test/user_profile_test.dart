import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';
import 'package:user_profile/user_profile.dart';
import 'package:user_profile/user_profile_api.dart';

/// 1x1 の PNG(画面に出す画像の代役)。
final _tinyPng = base64Decode(
  'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChwGA60e6kgAAAABJRU5ErkJggg==',
);

class _FakeSession implements SessionService {
  _FakeSession(this.userId);

  final String? userId;

  @override
  AuthSession? get current => userId == null
      ? null
      : AuthSession(
          token: 'secret-token',
          userId: userId!,
          username: 'yamada',
          appUserId: 'U0001',
        );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeAvatars implements AvatarService {
  UserAvatar? stored;
  PbException? findFailure;
  PbException? setFailure;
  final calls = <String>[];
  Uint8List? lastUpload;

  @override
  Future<UserAvatar?> find(String userId) async {
    calls.add('find:$userId');
    if (findFailure != null) throw findFailure!;
    return stored;
  }

  @override
  Future<Uint8List> download(UserAvatar avatar, {String? thumb}) async {
    calls.add('download:${avatar.imageName}:$thumb');
    return _tinyPng;
  }

  @override
  Future<UserAvatar> set(
    String userId,
    Uint8List bytes, {
    String filename = 'avatar.png',
  }) async {
    calls.add('set:$userId:$filename');
    if (setFailure != null) throw setFailure!;
    lastUpload = bytes;
    return stored = UserAvatar(
      recordId: 'a1',
      userId: userId,
      imageName: 'img_${calls.length}.png',
    );
  }

  @override
  Future<void> delete(String userId) async {
    calls.add('delete:$userId');
    stored = null;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Picker implements IImagePickerGateway {
  _Picker(this.result);

  final Object? result;

  @override
  Future<PickedImage?> pick() async {
    final r = result;
    if (r is Exception) throw r;
    return r as PickedImage?;
  }
}

class _Normalizer implements IImageNormalizer {
  _Normalizer({this.failure});

  final Exception? failure;

  @override
  Future<Uint8List> normalize(Uint8List bytes) async {
    if (failure != null) throw failure!;
    return Uint8List.fromList([...bytes, 9]);
  }
}

PickedImage _image() =>
    PickedImage(name: 'me.jpg', bytes: Uint8List.fromList([1, 2, 3]));

List<Override> _base({
  String? userId = 'pb-u1',
  required _FakeAvatars avatars,
  bool changeable = false,
  UserSummary? summary = const UserSummary(name: '山田 太郎', role: '生産管理部'),
}) => [
  defaultAvatarImageProvider.overrideWith((ref) => MemoryImage(_tinyPng)),
  sessionServiceProvider.overrideWithValue(_FakeSession(userId)),
  avatarServiceProvider.overrideWithValue(avatars),
  isChangeUserImageProvider.overrideWithValue(changeable),
  userSummaryProvider.overrideWith(
    () => UserSummaryNotifier(summary),
  ),
];

Future<void> _pumpPage(
  WidgetTester tester,
  List<Override> overrides,
) async {
  await tester.binding.setSurfaceSize(const Size(900, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    FeatureHost(
      key: UniqueKey(),
      title: 'UserProfile',
      modules: const [UserProfileModule()],
      entries: const [FeatureHostEntry('開く', MyImageDestination())],
      overrides: overrides,
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('開く'));
  await tester.pumpAndSettle();
}

ProviderContainer _container(List<Override> overrides) {
  final c = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      ...overrides,
    ],
  );
  addTearDown(c.dispose);
  return c;
}

void main() {
  test('見本の遷移先はすべてパスに変換できる(登録漏れ検出)', () {
    const module = UserProfileModule();
    for (final d in userProfileDestinationSamples) {
      expect(module.locationOf(d), isNotNull, reason: '$d');
    }
    expect(module.locationOf(const MyImageDestination()), '/profile/image');
  });

  test('標準はユーザーが変更できない(起動時のプロパティで変えられる)', () {
    // 標準は false。起動時の --dart-define=IS_CHANGE_USER_IMAGE=true が最優先で、その値が標準になる
    expect(
      _container([]).read(isChangeUserImageProvider),
      const bool.fromEnvironment('IS_CHANGE_USER_IMAGE'),
    );
    expect(
      _container([
        isChangeUserImageProvider.overrideWithValue(true),
      ]).read(isChangeUserImageProvider),
      isTrue,
    );
  });

  group('アプリケーションの裏設定との優先順位(起動時の値 > 裏設定の値 > 標準の false)', () {
    const defined = bool.hasEnvironment('IS_CHANGE_USER_IMAGE');

    test('裏設定の値を読む(起動時の値が無いとき)', () {
      for (final v in [true, false]) {
        final value = _container([
          backstageValuesProvider.overrideWithValue(
            BackstageValues(isChangeUserImage: v),
          ),
        ]).read(isChangeUserImageProvider);
        expect(
          value,
          defined ? const bool.fromEnvironment('IS_CHANGE_USER_IMAGE') : v,
          reason: '起動時の値があるときは、裏設定の値に関係なく起動時の値',
        );
      }
    });

    test('裏設定が未指定なら標準の false(起動時の値が無いとき)', () {
      final value = _container([
        backstageValuesProvider.overrideWithValue(const BackstageValues()),
      ]).read(isChangeUserImageProvider);
      expect(value, const bool.fromEnvironment('IS_CHANGE_USER_IMAGE'));
    });
  });

  group('顔写真の取得', () {
    test('ログインしていなければ何も取得しない', () async {
      final avatars = _FakeAvatars();
      final c = _container([
        ..._base(avatars: avatars, summary: null),
      ]);
      expect(await c.read(userAvatarProvider.future), isNull);
      expect(avatars.calls, isEmpty);
    });

    test('登録が無ければ既定のイメージ', () async {
      final avatars = _FakeAvatars();
      final state = await _container(
        _base(avatars: avatars),
      ).read(userAvatarProvider.future);
      expect(state!.isDefault, isTrue);
      expect(avatars.calls, ['find:pb-u1']);
    });

    test('登録があればサムネイル(256x256)を取る', () async {
      final avatars = _FakeAvatars()
        ..stored = const UserAvatar(
          recordId: 'a1',
          userId: 'pb-u1',
          imageName: 'img_abc.png',
        );
      final state = await _container(
        _base(avatars: avatars),
      ).read(userAvatarProvider.future);
      expect(state!.isDefault, isFalse);
      expect(avatars.calls, ['find:pb-u1', 'download:img_abc.png:256x256']);
    });

    test('取得に失敗しても既定のイメージで続ける(画面は止めない)', () async {
      final avatars = _FakeAvatars()
        ..findFailure = const PbException(PbFailureKind.network);
      final state = await _container(
        _base(avatars: avatars),
      ).read(userAvatarProvider.future);
      expect(state!.isDefault, isTrue);
    });

    test('PocketBase に接続していない(未ログイン)ときも既定のイメージ', () async {
      final avatars = _FakeAvatars();
      final state = await _container(
        _base(avatars: avatars, userId: null),
      ).read(userAvatarProvider.future);
      expect(state!.isDefault, isTrue);
      expect(avatars.calls, isEmpty);
    });
  });

  group('自分のイメージの画面', () {
    testWidgets('標準は変更できない: 現在のイメージと管理者への案内だけを出す', (tester) async {
      await _pumpPage(tester, _base(avatars: _FakeAvatars()));
      expect(find.text('山田 太郎'), findsOneWidget);
      expect(find.text('生産管理部'), findsOneWidget);
      expect(find.textContaining('管理者が変更します'), findsOneWidget);
      expect(find.text('画像ファイルを選ぶ'), findsNothing);
      expect(find.text('初期のイメージに戻す'), findsNothing);
    });

    testWidgets('変更できる設定: 選ぶと縮小して登録し、完了を案内する', (tester) async {
      final avatars = _FakeAvatars();
      await _pumpPage(tester, [
        ..._base(avatars: avatars, changeable: true),
        imagePickerGatewayProvider.overrideWithValue(_Picker(_image())),
        imageNormalizerProvider.overrideWithValue(_Normalizer()),
      ]);
      expect(find.textContaining('2MBまで'), findsOneWidget);
      // 登録が無いあいだは「初期のイメージに戻す」は押せない
      expect(
        tester
            .widget<OutlinedButton>(
              find.widgetWithText(OutlinedButton, '初期のイメージに戻す'),
            )
            .onPressed,
        isNull,
      );

      await tester.tap(find.text('画像ファイルを選ぶ'));
      await tester.pumpAndSettle();
      expect(avatars.calls, contains('set:pb-u1:avatar.png'));
      // 原寸ではなく、縮小(再エンコード)したものを送る
      expect(avatars.lastUpload, [1, 2, 3, 9]);
      expect(find.text('自分のイメージを変更しました。'), findsOneWidget);
      expect(
        tester
            .widget<OutlinedButton>(
              find.widgetWithText(OutlinedButton, '初期のイメージに戻す'),
            )
            .onPressed,
        isNotNull,
      );
    });

    testWidgets('初期のイメージに戻すと、登録を削除する', (tester) async {
      final avatars = _FakeAvatars()
        ..stored = const UserAvatar(
          recordId: 'a1',
          userId: 'pb-u1',
          imageName: 'img_abc.png',
        );
      await _pumpPage(tester, _base(avatars: avatars, changeable: true));
      await tester.tap(find.text('初期のイメージに戻す'));
      await tester.pumpAndSettle();
      expect(avatars.calls, contains('delete:pb-u1'));
      expect(find.text('初期のイメージに戻しました。'), findsOneWidget);
    });

    testWidgets('取り消しでは何もしない', (tester) async {
      final avatars = _FakeAvatars();
      await _pumpPage(tester, [
        ..._base(avatars: avatars, changeable: true),
        imagePickerGatewayProvider.overrideWithValue(_Picker(null)),
      ]);
      await tester.tap(find.text('画像ファイルを選ぶ'));
      await tester.pumpAndSettle();
      expect(avatars.calls.where((c) => c.startsWith('set')), isEmpty);
      expect(find.textContaining('変更しました'), findsNothing);
    });

    testWidgets('失敗は種類ごとの文言にする(大きすぎる・画像でない・権限なし)', (tester) async {
      Future<void> expectMessage(
        Object? pickResult,
        Exception? normalizerFailure,
        PbException? setFailure,
        String message,
      ) async {
        final avatars = _FakeAvatars()..setFailure = setFailure;
        await _pumpPage(tester, [
          ..._base(avatars: avatars, changeable: true),
          imagePickerGatewayProvider.overrideWithValue(_Picker(pickResult)),
          imageNormalizerProvider.overrideWithValue(
            _Normalizer(failure: normalizerFailure),
          ),
        ]);
        await tester.tap(find.text('画像ファイルを選ぶ'));
        await tester.pumpAndSettle();
        expect(find.text(message), findsOneWidget, reason: message);
      }

      await expectMessage(
        const ImageTooLargeException(3 << 20, 2 << 20),
        null,
        null,
        '画像が大きすぎます。2MB以下のファイルを選んでください。',
      );
      await expectMessage(
        _image(),
        const InvalidImageException(),
        null,
        '画像として読み込めません。PNG・JPEG・GIF・WebPのファイルを選んでください。',
      );
      await expectMessage(
        _image(),
        null,
        const PbException(PbFailureKind.notFound),
        'この画像を変更する権限がありません。',
      );
    });
  });

  group('画像の縮小', () {
    Future<Uint8List> pngOf(int w, int h) async {
      final recorder = ui.PictureRecorder();
      ui.Canvas(recorder).drawRect(
        ui.Rect.fromLTWH(0, 0, w.toDouble(), h.toDouble()),
        ui.Paint()..color = const ui.Color(0xFF336699),
      );
      final image = await recorder.endRecording().toImage(w, h);
      final data = await image.toByteData(format: ui.ImageByteFormat.png);
      return data!.buffer.asUint8List();
    }

    Future<(int, int)> sizeOf(Uint8List png) async {
      final codec = await ui.instantiateImageCodec(png);
      final frame = await codec.getNextFrame();
      return (frame.image.width, frame.image.height);
    }

    testWidgets('長辺を512に縮小してPNGにする。小さい画像はそのまま', (tester) async {
      await tester.runAsync(() async {
        const normalizer = UiImageNormalizer();
        final big = await normalizer.normalize(await pngOf(1000, 500));
        expect(await sizeOf(big), (512, 256));
        final small = await normalizer.normalize(await pngOf(100, 80));
        expect(await sizeOf(small), (100, 80));
      });
    });

    testWidgets('GIFもPNGに変換する(サーバーはGIFを受け付けない)', (tester) async {
      await tester.runAsync(() async {
        final gif = base64Decode('R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7');
        final png = await const UiImageNormalizer().normalize(gif);
        expect(png.sublist(0, 8), [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A]);
        expect(await sizeOf(png), (1, 1));
      });
    });

    testWidgets('画像として読み込めないバイト列はInvalidImageException', (tester) async {
      await tester.runAsync(() async {
        await expectLater(
          const UiImageNormalizer().normalize(Uint8List.fromList([1, 2, 3])),
          throwsA(isA<InvalidImageException>()),
        );
      });
    });

    testWidgets('既定のイメージは画面案(avatar.svg)の大きさのPNGを描く', (tester) async {
      await tester.runAsync(() async {
        final png = await DefaultAvatar.renderPng(size: 120);
        expect(await sizeOf(png), (120, 120));
      });
    });
  });

  group('ファイルの選択', () {
    test('2MBを超えるファイルは、読む前に断る', () async {
      var read = false;
      final picker = PlatformImagePicker(
        pickFile: () async => (
          name: 'big.png',
          size: 3 << 20,
          read: () async {
            read = true;
            return Uint8List(0);
          },
        ),
      );
      await expectLater(picker.pick(), throwsA(isA<ImageTooLargeException>()));
      expect(read, isFalse);
    });

    test('取り消しはnull、選べば名前とバイト列を返す', () async {
      expect(await PlatformImagePicker(pickFile: () async => null).pick(), isNull);
      final picked = await PlatformImagePicker(
        pickFile: () async =>
            (name: 'a.png', size: 2, read: () async => Uint8List(2)),
      ).pick();
      expect(picked!.name, 'a.png');
      expect(picked.bytes, hasLength(2));
    });
  });
}
