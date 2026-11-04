import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

import 'default_avatar.dart';
import 'image_normalizer.dart';
import 'image_picker_gateway.dart';

/// ログインユーザーの顔写真。[isDefault] が true のときは既定のイメージ。
class UserAvatarState {
  const UserAvatarState({required this.image, required this.isDefault});

  final ImageProvider image;
  final bool isDefault;
}

/// ログインユーザーの顔写真(`AppUser.photo` に渡す)。
///
/// ログインしていない(`userSummaryProvider` が null)ときは null(何も取得しない)。
/// 登録が無い・取得できないときは既定のイメージ([defaultAvatarImageProvider])を返し、画面は止めない
/// (取得の失敗は `[user_profile]` 付きでログに残す)。
/// サムネイル(256x256)を取得する。
///
/// 変更・初期化は [change]・[reset]。失敗は例外のまま呼び出し元(画面)へ返し、文言にするのは画面の責務。
final userAvatarProvider =
    AsyncNotifierProvider<UserAvatarNotifier, UserAvatarState?>(
      UserAvatarNotifier.new,
    );

class UserAvatarNotifier extends AsyncNotifier<UserAvatarState?> {
  static const _thumb = '256x256';

  @override
  Future<UserAvatarState?> build() async {
    final summary = ref.watch(userSummaryProvider);
    if (summary == null) return null;
    final fallback = await ref.watch(defaultAvatarImageProvider.future);
    final defaultState = UserAvatarState(image: fallback, isDefault: true);
    try {
      final userId = _userId();
      if (userId == null) return defaultState;
      final service = ref.read(avatarServiceProvider);
      final avatar = await service.find(userId);
      if (avatar == null) return defaultState;
      final bytes = await service.download(avatar, thumb: _thumb);
      return UserAvatarState(image: MemoryImage(bytes), isDefault: false);
    } catch (e, st) {
      _log(e, st, 'load');
      return defaultState;
    }
  }

  /// ログインしているユーザーの PocketBase 上のID。PocketBase に接続していない・未ログインなら null。
  String? _userId() {
    try {
      return ref.read(sessionServiceProvider).current?.userId;
    } catch (_) {
      return null;
    }
  }

  /// 画像を縮小(EXIF を除去)して登録し、顔写真を更新する。
  ///
  /// [InvalidImageException]・[PbException]・[StateError](ログインしていない)を投げる。
  Future<void> change(PickedImage image) async {
    final userId = _requireUserId();
    try {
      final bytes = await ref.read(imageNormalizerProvider).normalize(image.bytes);
      await ref
          .read(avatarServiceProvider)
          .set(userId, bytes, filename: 'avatar.png');
    } catch (e, st) {
      _log(e, st, 'change');
      rethrow;
    }
    ref.invalidateSelf();
    await future;
  }

  /// 登録を削除して、既定のイメージに戻す。
  Future<void> reset() async {
    final userId = _requireUserId();
    try {
      await ref.read(avatarServiceProvider).delete(userId);
    } catch (e, st) {
      _log(e, st, 'reset');
      rethrow;
    }
    ref.invalidateSelf();
    await future;
  }

  String _requireUserId() {
    final userId = _userId();
    if (userId == null) throw StateError('not logged in to PocketBase');
    return userId;
  }

  /// この機能が発生元の失敗だけを、ログに残す(画像・URL・トークンは出さない)。
  void _log(Object e, StackTrace st, String operation) {
    final logger = ref.read(loggerProvider);
    if (e is PbException || e is ImageTooLargeException || e is InvalidImageException) {
      logger.warn('[user_profile] $operation: $e');
    } else {
      logger.error('[user_profile] $operation', ex: e, trace: st);
    }
  }
}
