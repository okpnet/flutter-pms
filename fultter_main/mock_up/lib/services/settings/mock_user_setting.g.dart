// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_user_setting.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MockUserSetting)
final mockUserSettingProvider = MockUserSettingProvider._();

final class MockUserSettingProvider
    extends $NotifierProvider<MockUserSetting, SettingModel> {
  MockUserSettingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockUserSettingProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockUserSettingHash();

  @$internal
  @override
  MockUserSetting create() => MockUserSetting();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingModel>(value),
    );
  }
}

String _$mockUserSettingHash() => r'848fc834c5349f5fad35f007e6a4c39a5ed0f480';

abstract class _$MockUserSetting extends $Notifier<SettingModel> {
  SettingModel build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SettingModel, SettingModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SettingModel, SettingModel>,
              SettingModel,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
