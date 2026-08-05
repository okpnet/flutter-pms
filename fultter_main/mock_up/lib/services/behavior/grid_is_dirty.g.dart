// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_is_dirty.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gridIsDirty)
final gridIsDirtyProvider = GridIsDirtyProvider._();

final class GridIsDirtyProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  GridIsDirtyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridIsDirtyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridIsDirtyHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return gridIsDirty(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$gridIsDirtyHash() => r'5696e30ba0c2643e0ee43488e595abd923318fbc';
