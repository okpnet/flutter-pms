import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 機能パッケージが命令を渡す窓口。
///
/// 宣言だけをここに置き、実体はアプリ側が `overrideWith` で差し込む
/// (「宣言はライブラリ、実体はアプリ」)。
final commandBusProvider = Provider<CommandBus>(
  (ref) => throw UnimplementedError(
    'commandBusProvider はアプリ側の ProviderScope で override してください',
  ),
);
