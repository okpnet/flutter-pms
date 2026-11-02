import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'account/account_service.dart';
import 'admin/admin_service.dart';
import 'core/pb_connection.dart';
import 'files/personal_file_service.dart';
import 'files/shared_file_service.dart';
import 'session/session_service.dart';

/// PocketBase への接続。アプリが起動時に [PbConnection.open] で開き、上書きする。
/// (接続先とトークンの保存先はアプリが決めるため、既定は無い。)
final pbConnectionProvider = Provider<PbConnection>(
  (ref) => throw UnimplementedError(
    'pbConnectionProvider を PbConnection.open(...) の結果で上書きしてください',
  ),
);

final sessionServiceProvider = Provider<SessionService>(
  (ref) => SessionService(ref.watch(pbConnectionProvider)),
);

final accountServiceProvider = Provider<AccountService>(
  (ref) => AccountService(
    ref.watch(pbConnectionProvider),
    ref.watch(sessionServiceProvider),
  ),
);

final adminServiceProvider = Provider<AdminService>(
  (ref) => AdminService(ref.watch(pbConnectionProvider)),
);

final sharedFileServiceProvider = Provider<SharedFileService>(
  (ref) => SharedFileService(ref.watch(pbConnectionProvider)),
);

final personalFileServiceProvider = Provider<PersonalFileService>(
  (ref) => PersonalFileService(ref.watch(pbConnectionProvider)),
);
