// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_user_setting.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserSetting)
final userSettingProvider = UserSettingProvider._();

final class UserSettingProvider
    extends $NotifierProvider<UserSetting, SettingModel> {
  UserSettingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userSettingProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userSettingHash();

  @$internal
  @override
  UserSetting create() => UserSetting();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingModel>(value),
    );
  }
}

String _$userSettingHash() => r'040eccdd1fe085fbf1105256a1d33dd1c25366ae';

abstract class _$UserSetting extends $Notifier<SettingModel> {
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
