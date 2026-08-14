import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mock_up/contents/_models/error/server_error.dart';
import 'package:ntp/ntp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../contents/_models/app_datetime/app_time_state.dart';
import '../../../contents/_models/app_datetime/time_sate.dart';

part 'app_standard_time.g.dart';

@Riverpod(keepAlive: true)
class AppStandardTime extends _$AppStandardTime {
  @override
  Future<AppTimeState> build() async {
    final stateValue = await _inquire();
    return stateValue;
  }

  Future<void> reinquire() async {
    state = await AsyncValue.guard(() async {
      return await _inquire();
    });
  }

  Future<AppTimeState> _inquire() async {
    try {
      final ntpDateTime = await NTP.now(
        lookUpAddress: 'ntp.nict.jp',
        timeout: const Duration(seconds: 5),
      );
      final sw = Stopwatch()..start();

      final timestate = TimeState(
        serverBaseTimeUtc: ntpDateTime.toUtc(),
        stopwatch: sw,
      );
      return AppTimeState(timeState: timestate);
    } catch (ex) {
      return AppTimeState(
        exception: ServerError(.ntp, .timeout, exception: ex),
      );
    }
  }
}
