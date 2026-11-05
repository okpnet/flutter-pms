// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_core_serveice.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///主サービス
///立ち上げるときに1度呼びだし、インスタンス化する。
///終了時に明示的には記するサービスを追加する。
///
///ログイン・ログアウトの画面とセッションは`auth_files`が持つ。ページの切り替え・更新での
///セッション確認とログインへの向け先は、`rootRouter`の`redirect`が行う。

@ProviderFor(mockCoreService)
final mockCoreServiceProvider = MockCoreServiceProvider._();

///主サービス
///立ち上げるときに1度呼びだし、インスタンス化する。
///終了時に明示的には記するサービスを追加する。
///
///ログイン・ログアウトの画面とセッションは`auth_files`が持つ。ページの切り替え・更新での
///セッション確認とログインへの向け先は、`rootRouter`の`redirect`が行う。

final class MockCoreServiceProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  ///主サービス
  ///立ち上げるときに1度呼びだし、インスタンス化する。
  ///終了時に明示的には記するサービスを追加する。
  ///
  ///ログイン・ログアウトの画面とセッションは`auth_files`が持つ。ページの切り替え・更新での
  ///セッション確認とログインへの向け先は、`rootRouter`の`redirect`が行う。
  MockCoreServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockCoreServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockCoreServiceHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return mockCoreService(ref);
  }
}

String _$mockCoreServiceHash() => r'8eda8a69bfbfba9ec501769d3319bccade83e010';
