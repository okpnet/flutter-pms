import 'package:dart_mappable/dart_mappable.dart';

import '../notice_model.dart';

part 'maintenance_status.mapper.dart';

@MappableClass()
class MaintenanceStatus with MaintenanceStatusMappable implements INoticeModel {
  final bool isMaintenance;
  @override
  final String message;
  final DateTime? maintenanceCompletionTime;

  MaintenanceStatus({
    this.isMaintenance = false,
    this.message = '',
    this.maintenanceCompletionTime,
  });
}
