import 'package:feature_shared/feature_shared.dart';

/// 利害関係者の実体のキー。顧客・外部供給者・配送サービサーは同じ実体(`mstr_stakeholder`)を、
/// 役割のフラグで見分ける。
const String stakeholderEntityKey = 'stakeholder';

/// 役割のフラグがオンのときの値。
const String stakeholderRoleOn = 'はい';

/// 顧客台帳(利害関係者のうち、顧客のフラグがオン)。
const EntityListDestination customerLedgerDestination = EntityListDestination(
  stakeholderEntityKey,
  filter: {'is_customer': stakeholderRoleOn},
);

/// 外部供給者台帳(利害関係者のうち、外部供給者のフラグがオン)。
const EntityListDestination supplierLedgerDestination = EntityListDestination(
  stakeholderEntityKey,
  filter: {'is_supplier': stakeholderRoleOn},
);

/// 利害関係者の編集へ。[id] が null なら新規。[role] の台帳から開くときは、その役割の
/// フラグをオンにして始める。
EntityEditDestination stakeholderEditDestination({
  String? id,
  Map<String, String> initialValues = const {},
}) => EntityEditDestination(
  stakeholderEntityKey,
  id: id,
  initialValues: initialValues,
);
