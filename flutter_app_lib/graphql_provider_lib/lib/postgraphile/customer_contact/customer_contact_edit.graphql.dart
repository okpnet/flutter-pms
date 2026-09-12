import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$CustomerContactEdit {
  factory Variables$Mutation$CustomerContactEdit({
    required String mstrStakeholderContactId,
    String? mstrStakeholderId,
    String? code,
    String? mail,
    String? mstrShippingKindId,
    String? remarks,
    required String officeAppellationsId,
    required String officeNameSharedDictionaryId,
    String? officeNameJa,
    String? officeNameEn,
    required String officePronunciationSharedDictionaryId,
    String? officePronunciationJa,
    String? officePronunciationEn,
    required String officeNicknameSharedDictionaryId,
    String? officeNicknameJa,
    String? officeNicknameEn,
    required String departmentAppellationsId,
    required String departmentNameSharedDictionaryId,
    String? departmentNameJa,
    String? departmentNameEn,
    required String departmentPronunciationSharedDictionaryId,
    String? departmentPronunciationJa,
    String? departmentPronunciationEn,
    required String departmentNicknameSharedDictionaryId,
    String? departmentNicknameJa,
    String? departmentNicknameEn,
    required String contactPersonAppellationsId,
    required String contactPersonNameSharedDictionaryId,
    String? contactPersonNameJa,
    String? contactPersonNameEn,
    required String contactPersonPronunciationSharedDictionaryId,
    String? contactPersonPronunciationJa,
    String? contactPersonPronunciationEn,
    required String contactPersonNicknameSharedDictionaryId,
    String? contactPersonNicknameJa,
    String? contactPersonNicknameEn,
  }) => Variables$Mutation$CustomerContactEdit._({
    r'mstrStakeholderContactId': mstrStakeholderContactId,
    if (mstrStakeholderId != null) r'mstrStakeholderId': mstrStakeholderId,
    if (code != null) r'code': code,
    if (mail != null) r'mail': mail,
    if (mstrShippingKindId != null) r'mstrShippingKindId': mstrShippingKindId,
    if (remarks != null) r'remarks': remarks,
    r'officeAppellationsId': officeAppellationsId,
    r'officeNameSharedDictionaryId': officeNameSharedDictionaryId,
    if (officeNameJa != null) r'officeNameJa': officeNameJa,
    if (officeNameEn != null) r'officeNameEn': officeNameEn,
    r'officePronunciationSharedDictionaryId':
        officePronunciationSharedDictionaryId,
    if (officePronunciationJa != null)
      r'officePronunciationJa': officePronunciationJa,
    if (officePronunciationEn != null)
      r'officePronunciationEn': officePronunciationEn,
    r'officeNicknameSharedDictionaryId': officeNicknameSharedDictionaryId,
    if (officeNicknameJa != null) r'officeNicknameJa': officeNicknameJa,
    if (officeNicknameEn != null) r'officeNicknameEn': officeNicknameEn,
    r'departmentAppellationsId': departmentAppellationsId,
    r'departmentNameSharedDictionaryId': departmentNameSharedDictionaryId,
    if (departmentNameJa != null) r'departmentNameJa': departmentNameJa,
    if (departmentNameEn != null) r'departmentNameEn': departmentNameEn,
    r'departmentPronunciationSharedDictionaryId':
        departmentPronunciationSharedDictionaryId,
    if (departmentPronunciationJa != null)
      r'departmentPronunciationJa': departmentPronunciationJa,
    if (departmentPronunciationEn != null)
      r'departmentPronunciationEn': departmentPronunciationEn,
    r'departmentNicknameSharedDictionaryId':
        departmentNicknameSharedDictionaryId,
    if (departmentNicknameJa != null)
      r'departmentNicknameJa': departmentNicknameJa,
    if (departmentNicknameEn != null)
      r'departmentNicknameEn': departmentNicknameEn,
    r'contactPersonAppellationsId': contactPersonAppellationsId,
    r'contactPersonNameSharedDictionaryId': contactPersonNameSharedDictionaryId,
    if (contactPersonNameJa != null)
      r'contactPersonNameJa': contactPersonNameJa,
    if (contactPersonNameEn != null)
      r'contactPersonNameEn': contactPersonNameEn,
    r'contactPersonPronunciationSharedDictionaryId':
        contactPersonPronunciationSharedDictionaryId,
    if (contactPersonPronunciationJa != null)
      r'contactPersonPronunciationJa': contactPersonPronunciationJa,
    if (contactPersonPronunciationEn != null)
      r'contactPersonPronunciationEn': contactPersonPronunciationEn,
    r'contactPersonNicknameSharedDictionaryId':
        contactPersonNicknameSharedDictionaryId,
    if (contactPersonNicknameJa != null)
      r'contactPersonNicknameJa': contactPersonNicknameJa,
    if (contactPersonNicknameEn != null)
      r'contactPersonNicknameEn': contactPersonNicknameEn,
  });

  Variables$Mutation$CustomerContactEdit._(this._$data);

  factory Variables$Mutation$CustomerContactEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrStakeholderContactId = data['mstrStakeholderContactId'];
    result$data['mstrStakeholderContactId'] =
        (l$mstrStakeholderContactId as String);
    if (data.containsKey('mstrStakeholderId')) {
      final l$mstrStakeholderId = data['mstrStakeholderId'];
      result$data['mstrStakeholderId'] = (l$mstrStakeholderId as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('mail')) {
      final l$mail = data['mail'];
      result$data['mail'] = (l$mail as String?);
    }
    if (data.containsKey('mstrShippingKindId')) {
      final l$mstrShippingKindId = data['mstrShippingKindId'];
      result$data['mstrShippingKindId'] = (l$mstrShippingKindId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    final l$officeAppellationsId = data['officeAppellationsId'];
    result$data['officeAppellationsId'] = (l$officeAppellationsId as String);
    final l$officeNameSharedDictionaryId = data['officeNameSharedDictionaryId'];
    result$data['officeNameSharedDictionaryId'] =
        (l$officeNameSharedDictionaryId as String);
    if (data.containsKey('officeNameJa')) {
      final l$officeNameJa = data['officeNameJa'];
      result$data['officeNameJa'] = (l$officeNameJa as String?);
    }
    if (data.containsKey('officeNameEn')) {
      final l$officeNameEn = data['officeNameEn'];
      result$data['officeNameEn'] = (l$officeNameEn as String?);
    }
    final l$officePronunciationSharedDictionaryId =
        data['officePronunciationSharedDictionaryId'];
    result$data['officePronunciationSharedDictionaryId'] =
        (l$officePronunciationSharedDictionaryId as String);
    if (data.containsKey('officePronunciationJa')) {
      final l$officePronunciationJa = data['officePronunciationJa'];
      result$data['officePronunciationJa'] =
          (l$officePronunciationJa as String?);
    }
    if (data.containsKey('officePronunciationEn')) {
      final l$officePronunciationEn = data['officePronunciationEn'];
      result$data['officePronunciationEn'] =
          (l$officePronunciationEn as String?);
    }
    final l$officeNicknameSharedDictionaryId =
        data['officeNicknameSharedDictionaryId'];
    result$data['officeNicknameSharedDictionaryId'] =
        (l$officeNicknameSharedDictionaryId as String);
    if (data.containsKey('officeNicknameJa')) {
      final l$officeNicknameJa = data['officeNicknameJa'];
      result$data['officeNicknameJa'] = (l$officeNicknameJa as String?);
    }
    if (data.containsKey('officeNicknameEn')) {
      final l$officeNicknameEn = data['officeNicknameEn'];
      result$data['officeNicknameEn'] = (l$officeNicknameEn as String?);
    }
    final l$departmentAppellationsId = data['departmentAppellationsId'];
    result$data['departmentAppellationsId'] =
        (l$departmentAppellationsId as String);
    final l$departmentNameSharedDictionaryId =
        data['departmentNameSharedDictionaryId'];
    result$data['departmentNameSharedDictionaryId'] =
        (l$departmentNameSharedDictionaryId as String);
    if (data.containsKey('departmentNameJa')) {
      final l$departmentNameJa = data['departmentNameJa'];
      result$data['departmentNameJa'] = (l$departmentNameJa as String?);
    }
    if (data.containsKey('departmentNameEn')) {
      final l$departmentNameEn = data['departmentNameEn'];
      result$data['departmentNameEn'] = (l$departmentNameEn as String?);
    }
    final l$departmentPronunciationSharedDictionaryId =
        data['departmentPronunciationSharedDictionaryId'];
    result$data['departmentPronunciationSharedDictionaryId'] =
        (l$departmentPronunciationSharedDictionaryId as String);
    if (data.containsKey('departmentPronunciationJa')) {
      final l$departmentPronunciationJa = data['departmentPronunciationJa'];
      result$data['departmentPronunciationJa'] =
          (l$departmentPronunciationJa as String?);
    }
    if (data.containsKey('departmentPronunciationEn')) {
      final l$departmentPronunciationEn = data['departmentPronunciationEn'];
      result$data['departmentPronunciationEn'] =
          (l$departmentPronunciationEn as String?);
    }
    final l$departmentNicknameSharedDictionaryId =
        data['departmentNicknameSharedDictionaryId'];
    result$data['departmentNicknameSharedDictionaryId'] =
        (l$departmentNicknameSharedDictionaryId as String);
    if (data.containsKey('departmentNicknameJa')) {
      final l$departmentNicknameJa = data['departmentNicknameJa'];
      result$data['departmentNicknameJa'] = (l$departmentNicknameJa as String?);
    }
    if (data.containsKey('departmentNicknameEn')) {
      final l$departmentNicknameEn = data['departmentNicknameEn'];
      result$data['departmentNicknameEn'] = (l$departmentNicknameEn as String?);
    }
    final l$contactPersonAppellationsId = data['contactPersonAppellationsId'];
    result$data['contactPersonAppellationsId'] =
        (l$contactPersonAppellationsId as String);
    final l$contactPersonNameSharedDictionaryId =
        data['contactPersonNameSharedDictionaryId'];
    result$data['contactPersonNameSharedDictionaryId'] =
        (l$contactPersonNameSharedDictionaryId as String);
    if (data.containsKey('contactPersonNameJa')) {
      final l$contactPersonNameJa = data['contactPersonNameJa'];
      result$data['contactPersonNameJa'] = (l$contactPersonNameJa as String?);
    }
    if (data.containsKey('contactPersonNameEn')) {
      final l$contactPersonNameEn = data['contactPersonNameEn'];
      result$data['contactPersonNameEn'] = (l$contactPersonNameEn as String?);
    }
    final l$contactPersonPronunciationSharedDictionaryId =
        data['contactPersonPronunciationSharedDictionaryId'];
    result$data['contactPersonPronunciationSharedDictionaryId'] =
        (l$contactPersonPronunciationSharedDictionaryId as String);
    if (data.containsKey('contactPersonPronunciationJa')) {
      final l$contactPersonPronunciationJa =
          data['contactPersonPronunciationJa'];
      result$data['contactPersonPronunciationJa'] =
          (l$contactPersonPronunciationJa as String?);
    }
    if (data.containsKey('contactPersonPronunciationEn')) {
      final l$contactPersonPronunciationEn =
          data['contactPersonPronunciationEn'];
      result$data['contactPersonPronunciationEn'] =
          (l$contactPersonPronunciationEn as String?);
    }
    final l$contactPersonNicknameSharedDictionaryId =
        data['contactPersonNicknameSharedDictionaryId'];
    result$data['contactPersonNicknameSharedDictionaryId'] =
        (l$contactPersonNicknameSharedDictionaryId as String);
    if (data.containsKey('contactPersonNicknameJa')) {
      final l$contactPersonNicknameJa = data['contactPersonNicknameJa'];
      result$data['contactPersonNicknameJa'] =
          (l$contactPersonNicknameJa as String?);
    }
    if (data.containsKey('contactPersonNicknameEn')) {
      final l$contactPersonNicknameEn = data['contactPersonNicknameEn'];
      result$data['contactPersonNicknameEn'] =
          (l$contactPersonNicknameEn as String?);
    }
    return Variables$Mutation$CustomerContactEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrStakeholderContactId =>
      (_$data['mstrStakeholderContactId'] as String);

  String? get mstrStakeholderId => (_$data['mstrStakeholderId'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get mail => (_$data['mail'] as String?);

  String? get mstrShippingKindId => (_$data['mstrShippingKindId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String get officeAppellationsId => (_$data['officeAppellationsId'] as String);

  String get officeNameSharedDictionaryId =>
      (_$data['officeNameSharedDictionaryId'] as String);

  String? get officeNameJa => (_$data['officeNameJa'] as String?);

  String? get officeNameEn => (_$data['officeNameEn'] as String?);

  String get officePronunciationSharedDictionaryId =>
      (_$data['officePronunciationSharedDictionaryId'] as String);

  String? get officePronunciationJa =>
      (_$data['officePronunciationJa'] as String?);

  String? get officePronunciationEn =>
      (_$data['officePronunciationEn'] as String?);

  String get officeNicknameSharedDictionaryId =>
      (_$data['officeNicknameSharedDictionaryId'] as String);

  String? get officeNicknameJa => (_$data['officeNicknameJa'] as String?);

  String? get officeNicknameEn => (_$data['officeNicknameEn'] as String?);

  String get departmentAppellationsId =>
      (_$data['departmentAppellationsId'] as String);

  String get departmentNameSharedDictionaryId =>
      (_$data['departmentNameSharedDictionaryId'] as String);

  String? get departmentNameJa => (_$data['departmentNameJa'] as String?);

  String? get departmentNameEn => (_$data['departmentNameEn'] as String?);

  String get departmentPronunciationSharedDictionaryId =>
      (_$data['departmentPronunciationSharedDictionaryId'] as String);

  String? get departmentPronunciationJa =>
      (_$data['departmentPronunciationJa'] as String?);

  String? get departmentPronunciationEn =>
      (_$data['departmentPronunciationEn'] as String?);

  String get departmentNicknameSharedDictionaryId =>
      (_$data['departmentNicknameSharedDictionaryId'] as String);

  String? get departmentNicknameJa =>
      (_$data['departmentNicknameJa'] as String?);

  String? get departmentNicknameEn =>
      (_$data['departmentNicknameEn'] as String?);

  String get contactPersonAppellationsId =>
      (_$data['contactPersonAppellationsId'] as String);

  String get contactPersonNameSharedDictionaryId =>
      (_$data['contactPersonNameSharedDictionaryId'] as String);

  String? get contactPersonNameJa => (_$data['contactPersonNameJa'] as String?);

  String? get contactPersonNameEn => (_$data['contactPersonNameEn'] as String?);

  String get contactPersonPronunciationSharedDictionaryId =>
      (_$data['contactPersonPronunciationSharedDictionaryId'] as String);

  String? get contactPersonPronunciationJa =>
      (_$data['contactPersonPronunciationJa'] as String?);

  String? get contactPersonPronunciationEn =>
      (_$data['contactPersonPronunciationEn'] as String?);

  String get contactPersonNicknameSharedDictionaryId =>
      (_$data['contactPersonNicknameSharedDictionaryId'] as String);

  String? get contactPersonNicknameJa =>
      (_$data['contactPersonNicknameJa'] as String?);

  String? get contactPersonNicknameEn =>
      (_$data['contactPersonNicknameEn'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    result$data['mstrStakeholderContactId'] = l$mstrStakeholderContactId;
    if (_$data.containsKey('mstrStakeholderId')) {
      final l$mstrStakeholderId = mstrStakeholderId;
      result$data['mstrStakeholderId'] = l$mstrStakeholderId;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('mail')) {
      final l$mail = mail;
      result$data['mail'] = l$mail;
    }
    if (_$data.containsKey('mstrShippingKindId')) {
      final l$mstrShippingKindId = mstrShippingKindId;
      result$data['mstrShippingKindId'] = l$mstrShippingKindId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    final l$officeAppellationsId = officeAppellationsId;
    result$data['officeAppellationsId'] = l$officeAppellationsId;
    final l$officeNameSharedDictionaryId = officeNameSharedDictionaryId;
    result$data['officeNameSharedDictionaryId'] =
        l$officeNameSharedDictionaryId;
    if (_$data.containsKey('officeNameJa')) {
      final l$officeNameJa = officeNameJa;
      result$data['officeNameJa'] = l$officeNameJa;
    }
    if (_$data.containsKey('officeNameEn')) {
      final l$officeNameEn = officeNameEn;
      result$data['officeNameEn'] = l$officeNameEn;
    }
    final l$officePronunciationSharedDictionaryId =
        officePronunciationSharedDictionaryId;
    result$data['officePronunciationSharedDictionaryId'] =
        l$officePronunciationSharedDictionaryId;
    if (_$data.containsKey('officePronunciationJa')) {
      final l$officePronunciationJa = officePronunciationJa;
      result$data['officePronunciationJa'] = l$officePronunciationJa;
    }
    if (_$data.containsKey('officePronunciationEn')) {
      final l$officePronunciationEn = officePronunciationEn;
      result$data['officePronunciationEn'] = l$officePronunciationEn;
    }
    final l$officeNicknameSharedDictionaryId = officeNicknameSharedDictionaryId;
    result$data['officeNicknameSharedDictionaryId'] =
        l$officeNicknameSharedDictionaryId;
    if (_$data.containsKey('officeNicknameJa')) {
      final l$officeNicknameJa = officeNicknameJa;
      result$data['officeNicknameJa'] = l$officeNicknameJa;
    }
    if (_$data.containsKey('officeNicknameEn')) {
      final l$officeNicknameEn = officeNicknameEn;
      result$data['officeNicknameEn'] = l$officeNicknameEn;
    }
    final l$departmentAppellationsId = departmentAppellationsId;
    result$data['departmentAppellationsId'] = l$departmentAppellationsId;
    final l$departmentNameSharedDictionaryId = departmentNameSharedDictionaryId;
    result$data['departmentNameSharedDictionaryId'] =
        l$departmentNameSharedDictionaryId;
    if (_$data.containsKey('departmentNameJa')) {
      final l$departmentNameJa = departmentNameJa;
      result$data['departmentNameJa'] = l$departmentNameJa;
    }
    if (_$data.containsKey('departmentNameEn')) {
      final l$departmentNameEn = departmentNameEn;
      result$data['departmentNameEn'] = l$departmentNameEn;
    }
    final l$departmentPronunciationSharedDictionaryId =
        departmentPronunciationSharedDictionaryId;
    result$data['departmentPronunciationSharedDictionaryId'] =
        l$departmentPronunciationSharedDictionaryId;
    if (_$data.containsKey('departmentPronunciationJa')) {
      final l$departmentPronunciationJa = departmentPronunciationJa;
      result$data['departmentPronunciationJa'] = l$departmentPronunciationJa;
    }
    if (_$data.containsKey('departmentPronunciationEn')) {
      final l$departmentPronunciationEn = departmentPronunciationEn;
      result$data['departmentPronunciationEn'] = l$departmentPronunciationEn;
    }
    final l$departmentNicknameSharedDictionaryId =
        departmentNicknameSharedDictionaryId;
    result$data['departmentNicknameSharedDictionaryId'] =
        l$departmentNicknameSharedDictionaryId;
    if (_$data.containsKey('departmentNicknameJa')) {
      final l$departmentNicknameJa = departmentNicknameJa;
      result$data['departmentNicknameJa'] = l$departmentNicknameJa;
    }
    if (_$data.containsKey('departmentNicknameEn')) {
      final l$departmentNicknameEn = departmentNicknameEn;
      result$data['departmentNicknameEn'] = l$departmentNicknameEn;
    }
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    result$data['contactPersonAppellationsId'] = l$contactPersonAppellationsId;
    final l$contactPersonNameSharedDictionaryId =
        contactPersonNameSharedDictionaryId;
    result$data['contactPersonNameSharedDictionaryId'] =
        l$contactPersonNameSharedDictionaryId;
    if (_$data.containsKey('contactPersonNameJa')) {
      final l$contactPersonNameJa = contactPersonNameJa;
      result$data['contactPersonNameJa'] = l$contactPersonNameJa;
    }
    if (_$data.containsKey('contactPersonNameEn')) {
      final l$contactPersonNameEn = contactPersonNameEn;
      result$data['contactPersonNameEn'] = l$contactPersonNameEn;
    }
    final l$contactPersonPronunciationSharedDictionaryId =
        contactPersonPronunciationSharedDictionaryId;
    result$data['contactPersonPronunciationSharedDictionaryId'] =
        l$contactPersonPronunciationSharedDictionaryId;
    if (_$data.containsKey('contactPersonPronunciationJa')) {
      final l$contactPersonPronunciationJa = contactPersonPronunciationJa;
      result$data['contactPersonPronunciationJa'] =
          l$contactPersonPronunciationJa;
    }
    if (_$data.containsKey('contactPersonPronunciationEn')) {
      final l$contactPersonPronunciationEn = contactPersonPronunciationEn;
      result$data['contactPersonPronunciationEn'] =
          l$contactPersonPronunciationEn;
    }
    final l$contactPersonNicknameSharedDictionaryId =
        contactPersonNicknameSharedDictionaryId;
    result$data['contactPersonNicknameSharedDictionaryId'] =
        l$contactPersonNicknameSharedDictionaryId;
    if (_$data.containsKey('contactPersonNicknameJa')) {
      final l$contactPersonNicknameJa = contactPersonNicknameJa;
      result$data['contactPersonNicknameJa'] = l$contactPersonNicknameJa;
    }
    if (_$data.containsKey('contactPersonNicknameEn')) {
      final l$contactPersonNicknameEn = contactPersonNicknameEn;
      result$data['contactPersonNicknameEn'] = l$contactPersonNicknameEn;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CustomerContactEdit<
    Variables$Mutation$CustomerContactEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CustomerContactEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CustomerContactEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final lOther$mstrStakeholderContactId = other.mstrStakeholderContactId;
    if (l$mstrStakeholderContactId != lOther$mstrStakeholderContactId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (_$data.containsKey('mstrStakeholderId') !=
        other._$data.containsKey('mstrStakeholderId')) {
      return false;
    }
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$mail = mail;
    final lOther$mail = other.mail;
    if (_$data.containsKey('mail') != other._$data.containsKey('mail')) {
      return false;
    }
    if (l$mail != lOther$mail) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (_$data.containsKey('mstrShippingKindId') !=
        other._$data.containsKey('mstrShippingKindId')) {
      return false;
    }
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (_$data.containsKey('remarks') != other._$data.containsKey('remarks')) {
      return false;
    }
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$officeAppellationsId = officeAppellationsId;
    final lOther$officeAppellationsId = other.officeAppellationsId;
    if (l$officeAppellationsId != lOther$officeAppellationsId) {
      return false;
    }
    final l$officeNameSharedDictionaryId = officeNameSharedDictionaryId;
    final lOther$officeNameSharedDictionaryId =
        other.officeNameSharedDictionaryId;
    if (l$officeNameSharedDictionaryId != lOther$officeNameSharedDictionaryId) {
      return false;
    }
    final l$officeNameJa = officeNameJa;
    final lOther$officeNameJa = other.officeNameJa;
    if (_$data.containsKey('officeNameJa') !=
        other._$data.containsKey('officeNameJa')) {
      return false;
    }
    if (l$officeNameJa != lOther$officeNameJa) {
      return false;
    }
    final l$officeNameEn = officeNameEn;
    final lOther$officeNameEn = other.officeNameEn;
    if (_$data.containsKey('officeNameEn') !=
        other._$data.containsKey('officeNameEn')) {
      return false;
    }
    if (l$officeNameEn != lOther$officeNameEn) {
      return false;
    }
    final l$officePronunciationSharedDictionaryId =
        officePronunciationSharedDictionaryId;
    final lOther$officePronunciationSharedDictionaryId =
        other.officePronunciationSharedDictionaryId;
    if (l$officePronunciationSharedDictionaryId !=
        lOther$officePronunciationSharedDictionaryId) {
      return false;
    }
    final l$officePronunciationJa = officePronunciationJa;
    final lOther$officePronunciationJa = other.officePronunciationJa;
    if (_$data.containsKey('officePronunciationJa') !=
        other._$data.containsKey('officePronunciationJa')) {
      return false;
    }
    if (l$officePronunciationJa != lOther$officePronunciationJa) {
      return false;
    }
    final l$officePronunciationEn = officePronunciationEn;
    final lOther$officePronunciationEn = other.officePronunciationEn;
    if (_$data.containsKey('officePronunciationEn') !=
        other._$data.containsKey('officePronunciationEn')) {
      return false;
    }
    if (l$officePronunciationEn != lOther$officePronunciationEn) {
      return false;
    }
    final l$officeNicknameSharedDictionaryId = officeNicknameSharedDictionaryId;
    final lOther$officeNicknameSharedDictionaryId =
        other.officeNicknameSharedDictionaryId;
    if (l$officeNicknameSharedDictionaryId !=
        lOther$officeNicknameSharedDictionaryId) {
      return false;
    }
    final l$officeNicknameJa = officeNicknameJa;
    final lOther$officeNicknameJa = other.officeNicknameJa;
    if (_$data.containsKey('officeNicknameJa') !=
        other._$data.containsKey('officeNicknameJa')) {
      return false;
    }
    if (l$officeNicknameJa != lOther$officeNicknameJa) {
      return false;
    }
    final l$officeNicknameEn = officeNicknameEn;
    final lOther$officeNicknameEn = other.officeNicknameEn;
    if (_$data.containsKey('officeNicknameEn') !=
        other._$data.containsKey('officeNicknameEn')) {
      return false;
    }
    if (l$officeNicknameEn != lOther$officeNicknameEn) {
      return false;
    }
    final l$departmentAppellationsId = departmentAppellationsId;
    final lOther$departmentAppellationsId = other.departmentAppellationsId;
    if (l$departmentAppellationsId != lOther$departmentAppellationsId) {
      return false;
    }
    final l$departmentNameSharedDictionaryId = departmentNameSharedDictionaryId;
    final lOther$departmentNameSharedDictionaryId =
        other.departmentNameSharedDictionaryId;
    if (l$departmentNameSharedDictionaryId !=
        lOther$departmentNameSharedDictionaryId) {
      return false;
    }
    final l$departmentNameJa = departmentNameJa;
    final lOther$departmentNameJa = other.departmentNameJa;
    if (_$data.containsKey('departmentNameJa') !=
        other._$data.containsKey('departmentNameJa')) {
      return false;
    }
    if (l$departmentNameJa != lOther$departmentNameJa) {
      return false;
    }
    final l$departmentNameEn = departmentNameEn;
    final lOther$departmentNameEn = other.departmentNameEn;
    if (_$data.containsKey('departmentNameEn') !=
        other._$data.containsKey('departmentNameEn')) {
      return false;
    }
    if (l$departmentNameEn != lOther$departmentNameEn) {
      return false;
    }
    final l$departmentPronunciationSharedDictionaryId =
        departmentPronunciationSharedDictionaryId;
    final lOther$departmentPronunciationSharedDictionaryId =
        other.departmentPronunciationSharedDictionaryId;
    if (l$departmentPronunciationSharedDictionaryId !=
        lOther$departmentPronunciationSharedDictionaryId) {
      return false;
    }
    final l$departmentPronunciationJa = departmentPronunciationJa;
    final lOther$departmentPronunciationJa = other.departmentPronunciationJa;
    if (_$data.containsKey('departmentPronunciationJa') !=
        other._$data.containsKey('departmentPronunciationJa')) {
      return false;
    }
    if (l$departmentPronunciationJa != lOther$departmentPronunciationJa) {
      return false;
    }
    final l$departmentPronunciationEn = departmentPronunciationEn;
    final lOther$departmentPronunciationEn = other.departmentPronunciationEn;
    if (_$data.containsKey('departmentPronunciationEn') !=
        other._$data.containsKey('departmentPronunciationEn')) {
      return false;
    }
    if (l$departmentPronunciationEn != lOther$departmentPronunciationEn) {
      return false;
    }
    final l$departmentNicknameSharedDictionaryId =
        departmentNicknameSharedDictionaryId;
    final lOther$departmentNicknameSharedDictionaryId =
        other.departmentNicknameSharedDictionaryId;
    if (l$departmentNicknameSharedDictionaryId !=
        lOther$departmentNicknameSharedDictionaryId) {
      return false;
    }
    final l$departmentNicknameJa = departmentNicknameJa;
    final lOther$departmentNicknameJa = other.departmentNicknameJa;
    if (_$data.containsKey('departmentNicknameJa') !=
        other._$data.containsKey('departmentNicknameJa')) {
      return false;
    }
    if (l$departmentNicknameJa != lOther$departmentNicknameJa) {
      return false;
    }
    final l$departmentNicknameEn = departmentNicknameEn;
    final lOther$departmentNicknameEn = other.departmentNicknameEn;
    if (_$data.containsKey('departmentNicknameEn') !=
        other._$data.containsKey('departmentNicknameEn')) {
      return false;
    }
    if (l$departmentNicknameEn != lOther$departmentNicknameEn) {
      return false;
    }
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    final lOther$contactPersonAppellationsId =
        other.contactPersonAppellationsId;
    if (l$contactPersonAppellationsId != lOther$contactPersonAppellationsId) {
      return false;
    }
    final l$contactPersonNameSharedDictionaryId =
        contactPersonNameSharedDictionaryId;
    final lOther$contactPersonNameSharedDictionaryId =
        other.contactPersonNameSharedDictionaryId;
    if (l$contactPersonNameSharedDictionaryId !=
        lOther$contactPersonNameSharedDictionaryId) {
      return false;
    }
    final l$contactPersonNameJa = contactPersonNameJa;
    final lOther$contactPersonNameJa = other.contactPersonNameJa;
    if (_$data.containsKey('contactPersonNameJa') !=
        other._$data.containsKey('contactPersonNameJa')) {
      return false;
    }
    if (l$contactPersonNameJa != lOther$contactPersonNameJa) {
      return false;
    }
    final l$contactPersonNameEn = contactPersonNameEn;
    final lOther$contactPersonNameEn = other.contactPersonNameEn;
    if (_$data.containsKey('contactPersonNameEn') !=
        other._$data.containsKey('contactPersonNameEn')) {
      return false;
    }
    if (l$contactPersonNameEn != lOther$contactPersonNameEn) {
      return false;
    }
    final l$contactPersonPronunciationSharedDictionaryId =
        contactPersonPronunciationSharedDictionaryId;
    final lOther$contactPersonPronunciationSharedDictionaryId =
        other.contactPersonPronunciationSharedDictionaryId;
    if (l$contactPersonPronunciationSharedDictionaryId !=
        lOther$contactPersonPronunciationSharedDictionaryId) {
      return false;
    }
    final l$contactPersonPronunciationJa = contactPersonPronunciationJa;
    final lOther$contactPersonPronunciationJa =
        other.contactPersonPronunciationJa;
    if (_$data.containsKey('contactPersonPronunciationJa') !=
        other._$data.containsKey('contactPersonPronunciationJa')) {
      return false;
    }
    if (l$contactPersonPronunciationJa != lOther$contactPersonPronunciationJa) {
      return false;
    }
    final l$contactPersonPronunciationEn = contactPersonPronunciationEn;
    final lOther$contactPersonPronunciationEn =
        other.contactPersonPronunciationEn;
    if (_$data.containsKey('contactPersonPronunciationEn') !=
        other._$data.containsKey('contactPersonPronunciationEn')) {
      return false;
    }
    if (l$contactPersonPronunciationEn != lOther$contactPersonPronunciationEn) {
      return false;
    }
    final l$contactPersonNicknameSharedDictionaryId =
        contactPersonNicknameSharedDictionaryId;
    final lOther$contactPersonNicknameSharedDictionaryId =
        other.contactPersonNicknameSharedDictionaryId;
    if (l$contactPersonNicknameSharedDictionaryId !=
        lOther$contactPersonNicknameSharedDictionaryId) {
      return false;
    }
    final l$contactPersonNicknameJa = contactPersonNicknameJa;
    final lOther$contactPersonNicknameJa = other.contactPersonNicknameJa;
    if (_$data.containsKey('contactPersonNicknameJa') !=
        other._$data.containsKey('contactPersonNicknameJa')) {
      return false;
    }
    if (l$contactPersonNicknameJa != lOther$contactPersonNicknameJa) {
      return false;
    }
    final l$contactPersonNicknameEn = contactPersonNicknameEn;
    final lOther$contactPersonNicknameEn = other.contactPersonNicknameEn;
    if (_$data.containsKey('contactPersonNicknameEn') !=
        other._$data.containsKey('contactPersonNicknameEn')) {
      return false;
    }
    if (l$contactPersonNicknameEn != lOther$contactPersonNicknameEn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$code = code;
    final l$mail = mail;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$remarks = remarks;
    final l$officeAppellationsId = officeAppellationsId;
    final l$officeNameSharedDictionaryId = officeNameSharedDictionaryId;
    final l$officeNameJa = officeNameJa;
    final l$officeNameEn = officeNameEn;
    final l$officePronunciationSharedDictionaryId =
        officePronunciationSharedDictionaryId;
    final l$officePronunciationJa = officePronunciationJa;
    final l$officePronunciationEn = officePronunciationEn;
    final l$officeNicknameSharedDictionaryId = officeNicknameSharedDictionaryId;
    final l$officeNicknameJa = officeNicknameJa;
    final l$officeNicknameEn = officeNicknameEn;
    final l$departmentAppellationsId = departmentAppellationsId;
    final l$departmentNameSharedDictionaryId = departmentNameSharedDictionaryId;
    final l$departmentNameJa = departmentNameJa;
    final l$departmentNameEn = departmentNameEn;
    final l$departmentPronunciationSharedDictionaryId =
        departmentPronunciationSharedDictionaryId;
    final l$departmentPronunciationJa = departmentPronunciationJa;
    final l$departmentPronunciationEn = departmentPronunciationEn;
    final l$departmentNicknameSharedDictionaryId =
        departmentNicknameSharedDictionaryId;
    final l$departmentNicknameJa = departmentNicknameJa;
    final l$departmentNicknameEn = departmentNicknameEn;
    final l$contactPersonAppellationsId = contactPersonAppellationsId;
    final l$contactPersonNameSharedDictionaryId =
        contactPersonNameSharedDictionaryId;
    final l$contactPersonNameJa = contactPersonNameJa;
    final l$contactPersonNameEn = contactPersonNameEn;
    final l$contactPersonPronunciationSharedDictionaryId =
        contactPersonPronunciationSharedDictionaryId;
    final l$contactPersonPronunciationJa = contactPersonPronunciationJa;
    final l$contactPersonPronunciationEn = contactPersonPronunciationEn;
    final l$contactPersonNicknameSharedDictionaryId =
        contactPersonNicknameSharedDictionaryId;
    final l$contactPersonNicknameJa = contactPersonNicknameJa;
    final l$contactPersonNicknameEn = contactPersonNicknameEn;
    return Object.hashAll([
      l$mstrStakeholderContactId,
      _$data.containsKey('mstrStakeholderId') ? l$mstrStakeholderId : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('mail') ? l$mail : const {},
      _$data.containsKey('mstrShippingKindId')
          ? l$mstrShippingKindId
          : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$officeAppellationsId,
      l$officeNameSharedDictionaryId,
      _$data.containsKey('officeNameJa') ? l$officeNameJa : const {},
      _$data.containsKey('officeNameEn') ? l$officeNameEn : const {},
      l$officePronunciationSharedDictionaryId,
      _$data.containsKey('officePronunciationJa')
          ? l$officePronunciationJa
          : const {},
      _$data.containsKey('officePronunciationEn')
          ? l$officePronunciationEn
          : const {},
      l$officeNicknameSharedDictionaryId,
      _$data.containsKey('officeNicknameJa') ? l$officeNicknameJa : const {},
      _$data.containsKey('officeNicknameEn') ? l$officeNicknameEn : const {},
      l$departmentAppellationsId,
      l$departmentNameSharedDictionaryId,
      _$data.containsKey('departmentNameJa') ? l$departmentNameJa : const {},
      _$data.containsKey('departmentNameEn') ? l$departmentNameEn : const {},
      l$departmentPronunciationSharedDictionaryId,
      _$data.containsKey('departmentPronunciationJa')
          ? l$departmentPronunciationJa
          : const {},
      _$data.containsKey('departmentPronunciationEn')
          ? l$departmentPronunciationEn
          : const {},
      l$departmentNicknameSharedDictionaryId,
      _$data.containsKey('departmentNicknameJa')
          ? l$departmentNicknameJa
          : const {},
      _$data.containsKey('departmentNicknameEn')
          ? l$departmentNicknameEn
          : const {},
      l$contactPersonAppellationsId,
      l$contactPersonNameSharedDictionaryId,
      _$data.containsKey('contactPersonNameJa')
          ? l$contactPersonNameJa
          : const {},
      _$data.containsKey('contactPersonNameEn')
          ? l$contactPersonNameEn
          : const {},
      l$contactPersonPronunciationSharedDictionaryId,
      _$data.containsKey('contactPersonPronunciationJa')
          ? l$contactPersonPronunciationJa
          : const {},
      _$data.containsKey('contactPersonPronunciationEn')
          ? l$contactPersonPronunciationEn
          : const {},
      l$contactPersonNicknameSharedDictionaryId,
      _$data.containsKey('contactPersonNicknameJa')
          ? l$contactPersonNicknameJa
          : const {},
      _$data.containsKey('contactPersonNicknameEn')
          ? l$contactPersonNicknameEn
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CustomerContactEdit<TRes> {
  factory CopyWith$Variables$Mutation$CustomerContactEdit(
    Variables$Mutation$CustomerContactEdit instance,
    TRes Function(Variables$Mutation$CustomerContactEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$CustomerContactEdit;

  factory CopyWith$Variables$Mutation$CustomerContactEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CustomerContactEdit;

  TRes call({
    String? mstrStakeholderContactId,
    String? mstrStakeholderId,
    String? code,
    String? mail,
    String? mstrShippingKindId,
    String? remarks,
    String? officeAppellationsId,
    String? officeNameSharedDictionaryId,
    String? officeNameJa,
    String? officeNameEn,
    String? officePronunciationSharedDictionaryId,
    String? officePronunciationJa,
    String? officePronunciationEn,
    String? officeNicknameSharedDictionaryId,
    String? officeNicknameJa,
    String? officeNicknameEn,
    String? departmentAppellationsId,
    String? departmentNameSharedDictionaryId,
    String? departmentNameJa,
    String? departmentNameEn,
    String? departmentPronunciationSharedDictionaryId,
    String? departmentPronunciationJa,
    String? departmentPronunciationEn,
    String? departmentNicknameSharedDictionaryId,
    String? departmentNicknameJa,
    String? departmentNicknameEn,
    String? contactPersonAppellationsId,
    String? contactPersonNameSharedDictionaryId,
    String? contactPersonNameJa,
    String? contactPersonNameEn,
    String? contactPersonPronunciationSharedDictionaryId,
    String? contactPersonPronunciationJa,
    String? contactPersonPronunciationEn,
    String? contactPersonNicknameSharedDictionaryId,
    String? contactPersonNicknameJa,
    String? contactPersonNicknameEn,
  });
}

class _CopyWithImpl$Variables$Mutation$CustomerContactEdit<TRes>
    implements CopyWith$Variables$Mutation$CustomerContactEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$CustomerContactEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CustomerContactEdit _instance;

  final TRes Function(Variables$Mutation$CustomerContactEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderContactId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? mail = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? remarks = _undefined,
    Object? officeAppellationsId = _undefined,
    Object? officeNameSharedDictionaryId = _undefined,
    Object? officeNameJa = _undefined,
    Object? officeNameEn = _undefined,
    Object? officePronunciationSharedDictionaryId = _undefined,
    Object? officePronunciationJa = _undefined,
    Object? officePronunciationEn = _undefined,
    Object? officeNicknameSharedDictionaryId = _undefined,
    Object? officeNicknameJa = _undefined,
    Object? officeNicknameEn = _undefined,
    Object? departmentAppellationsId = _undefined,
    Object? departmentNameSharedDictionaryId = _undefined,
    Object? departmentNameJa = _undefined,
    Object? departmentNameEn = _undefined,
    Object? departmentPronunciationSharedDictionaryId = _undefined,
    Object? departmentPronunciationJa = _undefined,
    Object? departmentPronunciationEn = _undefined,
    Object? departmentNicknameSharedDictionaryId = _undefined,
    Object? departmentNicknameJa = _undefined,
    Object? departmentNicknameEn = _undefined,
    Object? contactPersonAppellationsId = _undefined,
    Object? contactPersonNameSharedDictionaryId = _undefined,
    Object? contactPersonNameJa = _undefined,
    Object? contactPersonNameEn = _undefined,
    Object? contactPersonPronunciationSharedDictionaryId = _undefined,
    Object? contactPersonPronunciationJa = _undefined,
    Object? contactPersonPronunciationEn = _undefined,
    Object? contactPersonNicknameSharedDictionaryId = _undefined,
    Object? contactPersonNicknameJa = _undefined,
    Object? contactPersonNicknameEn = _undefined,
  }) => _then(
    Variables$Mutation$CustomerContactEdit._({
      ..._instance._$data,
      if (mstrStakeholderContactId != _undefined &&
          mstrStakeholderContactId != null)
        'mstrStakeholderContactId': (mstrStakeholderContactId as String),
      if (mstrStakeholderId != _undefined)
        'mstrStakeholderId': (mstrStakeholderId as String?),
      if (code != _undefined) 'code': (code as String?),
      if (mail != _undefined) 'mail': (mail as String?),
      if (mstrShippingKindId != _undefined)
        'mstrShippingKindId': (mstrShippingKindId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (officeAppellationsId != _undefined && officeAppellationsId != null)
        'officeAppellationsId': (officeAppellationsId as String),
      if (officeNameSharedDictionaryId != _undefined &&
          officeNameSharedDictionaryId != null)
        'officeNameSharedDictionaryId':
            (officeNameSharedDictionaryId as String),
      if (officeNameJa != _undefined) 'officeNameJa': (officeNameJa as String?),
      if (officeNameEn != _undefined) 'officeNameEn': (officeNameEn as String?),
      if (officePronunciationSharedDictionaryId != _undefined &&
          officePronunciationSharedDictionaryId != null)
        'officePronunciationSharedDictionaryId':
            (officePronunciationSharedDictionaryId as String),
      if (officePronunciationJa != _undefined)
        'officePronunciationJa': (officePronunciationJa as String?),
      if (officePronunciationEn != _undefined)
        'officePronunciationEn': (officePronunciationEn as String?),
      if (officeNicknameSharedDictionaryId != _undefined &&
          officeNicknameSharedDictionaryId != null)
        'officeNicknameSharedDictionaryId':
            (officeNicknameSharedDictionaryId as String),
      if (officeNicknameJa != _undefined)
        'officeNicknameJa': (officeNicknameJa as String?),
      if (officeNicknameEn != _undefined)
        'officeNicknameEn': (officeNicknameEn as String?),
      if (departmentAppellationsId != _undefined &&
          departmentAppellationsId != null)
        'departmentAppellationsId': (departmentAppellationsId as String),
      if (departmentNameSharedDictionaryId != _undefined &&
          departmentNameSharedDictionaryId != null)
        'departmentNameSharedDictionaryId':
            (departmentNameSharedDictionaryId as String),
      if (departmentNameJa != _undefined)
        'departmentNameJa': (departmentNameJa as String?),
      if (departmentNameEn != _undefined)
        'departmentNameEn': (departmentNameEn as String?),
      if (departmentPronunciationSharedDictionaryId != _undefined &&
          departmentPronunciationSharedDictionaryId != null)
        'departmentPronunciationSharedDictionaryId':
            (departmentPronunciationSharedDictionaryId as String),
      if (departmentPronunciationJa != _undefined)
        'departmentPronunciationJa': (departmentPronunciationJa as String?),
      if (departmentPronunciationEn != _undefined)
        'departmentPronunciationEn': (departmentPronunciationEn as String?),
      if (departmentNicknameSharedDictionaryId != _undefined &&
          departmentNicknameSharedDictionaryId != null)
        'departmentNicknameSharedDictionaryId':
            (departmentNicknameSharedDictionaryId as String),
      if (departmentNicknameJa != _undefined)
        'departmentNicknameJa': (departmentNicknameJa as String?),
      if (departmentNicknameEn != _undefined)
        'departmentNicknameEn': (departmentNicknameEn as String?),
      if (contactPersonAppellationsId != _undefined &&
          contactPersonAppellationsId != null)
        'contactPersonAppellationsId': (contactPersonAppellationsId as String),
      if (contactPersonNameSharedDictionaryId != _undefined &&
          contactPersonNameSharedDictionaryId != null)
        'contactPersonNameSharedDictionaryId':
            (contactPersonNameSharedDictionaryId as String),
      if (contactPersonNameJa != _undefined)
        'contactPersonNameJa': (contactPersonNameJa as String?),
      if (contactPersonNameEn != _undefined)
        'contactPersonNameEn': (contactPersonNameEn as String?),
      if (contactPersonPronunciationSharedDictionaryId != _undefined &&
          contactPersonPronunciationSharedDictionaryId != null)
        'contactPersonPronunciationSharedDictionaryId':
            (contactPersonPronunciationSharedDictionaryId as String),
      if (contactPersonPronunciationJa != _undefined)
        'contactPersonPronunciationJa':
            (contactPersonPronunciationJa as String?),
      if (contactPersonPronunciationEn != _undefined)
        'contactPersonPronunciationEn':
            (contactPersonPronunciationEn as String?),
      if (contactPersonNicknameSharedDictionaryId != _undefined &&
          contactPersonNicknameSharedDictionaryId != null)
        'contactPersonNicknameSharedDictionaryId':
            (contactPersonNicknameSharedDictionaryId as String),
      if (contactPersonNicknameJa != _undefined)
        'contactPersonNicknameJa': (contactPersonNicknameJa as String?),
      if (contactPersonNicknameEn != _undefined)
        'contactPersonNicknameEn': (contactPersonNicknameEn as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CustomerContactEdit<TRes>
    implements CopyWith$Variables$Mutation$CustomerContactEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CustomerContactEdit(this._res);

  TRes _res;

  call({
    String? mstrStakeholderContactId,
    String? mstrStakeholderId,
    String? code,
    String? mail,
    String? mstrShippingKindId,
    String? remarks,
    String? officeAppellationsId,
    String? officeNameSharedDictionaryId,
    String? officeNameJa,
    String? officeNameEn,
    String? officePronunciationSharedDictionaryId,
    String? officePronunciationJa,
    String? officePronunciationEn,
    String? officeNicknameSharedDictionaryId,
    String? officeNicknameJa,
    String? officeNicknameEn,
    String? departmentAppellationsId,
    String? departmentNameSharedDictionaryId,
    String? departmentNameJa,
    String? departmentNameEn,
    String? departmentPronunciationSharedDictionaryId,
    String? departmentPronunciationJa,
    String? departmentPronunciationEn,
    String? departmentNicknameSharedDictionaryId,
    String? departmentNicknameJa,
    String? departmentNicknameEn,
    String? contactPersonAppellationsId,
    String? contactPersonNameSharedDictionaryId,
    String? contactPersonNameJa,
    String? contactPersonNameEn,
    String? contactPersonPronunciationSharedDictionaryId,
    String? contactPersonPronunciationJa,
    String? contactPersonPronunciationEn,
    String? contactPersonNicknameSharedDictionaryId,
    String? contactPersonNicknameJa,
    String? contactPersonNicknameEn,
  }) => _res;
}

class Mutation$CustomerContactEdit {
  Mutation$CustomerContactEdit({
    this.updateMstrStakeholderContactByMstrStakeholderContactId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CustomerContactEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrStakeholderContactByMstrStakeholderContactId =
        json['updateMstrStakeholderContactByMstrStakeholderContactId'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit(
      updateMstrStakeholderContactByMstrStakeholderContactId:
          l$updateMstrStakeholderContactByMstrStakeholderContactId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId.fromJson(
              (l$updateMstrStakeholderContactByMstrStakeholderContactId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId?
  updateMstrStakeholderContactByMstrStakeholderContactId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrStakeholderContactByMstrStakeholderContactId =
        updateMstrStakeholderContactByMstrStakeholderContactId;
    _resultData['updateMstrStakeholderContactByMstrStakeholderContactId'] =
        l$updateMstrStakeholderContactByMstrStakeholderContactId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrStakeholderContactByMstrStakeholderContactId =
        updateMstrStakeholderContactByMstrStakeholderContactId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrStakeholderContactByMstrStakeholderContactId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CustomerContactEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrStakeholderContactByMstrStakeholderContactId =
        updateMstrStakeholderContactByMstrStakeholderContactId;
    final lOther$updateMstrStakeholderContactByMstrStakeholderContactId =
        other.updateMstrStakeholderContactByMstrStakeholderContactId;
    if (l$updateMstrStakeholderContactByMstrStakeholderContactId !=
        lOther$updateMstrStakeholderContactByMstrStakeholderContactId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit
    on Mutation$CustomerContactEdit {
  CopyWith$Mutation$CustomerContactEdit<Mutation$CustomerContactEdit>
  get copyWith => CopyWith$Mutation$CustomerContactEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$CustomerContactEdit<TRes> {
  factory CopyWith$Mutation$CustomerContactEdit(
    Mutation$CustomerContactEdit instance,
    TRes Function(Mutation$CustomerContactEdit) then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit;

  factory CopyWith$Mutation$CustomerContactEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CustomerContactEdit;

  TRes call({
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId?
    updateMstrStakeholderContactByMstrStakeholderContactId,
    String? $__typename,
  });
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
    TRes
  >
  get updateMstrStakeholderContactByMstrStakeholderContactId;
}

class _CopyWithImpl$Mutation$CustomerContactEdit<TRes>
    implements CopyWith$Mutation$CustomerContactEdit<TRes> {
  _CopyWithImpl$Mutation$CustomerContactEdit(this._instance, this._then);

  final Mutation$CustomerContactEdit _instance;

  final TRes Function(Mutation$CustomerContactEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrStakeholderContactByMstrStakeholderContactId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit(
      updateMstrStakeholderContactByMstrStakeholderContactId:
          updateMstrStakeholderContactByMstrStakeholderContactId == _undefined
          ? _instance.updateMstrStakeholderContactByMstrStakeholderContactId
          : (updateMstrStakeholderContactByMstrStakeholderContactId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
    TRes
  >
  get updateMstrStakeholderContactByMstrStakeholderContactId {
    final local$updateMstrStakeholderContactByMstrStakeholderContactId =
        _instance.updateMstrStakeholderContactByMstrStakeholderContactId;
    return local$updateMstrStakeholderContactByMstrStakeholderContactId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId(
            local$updateMstrStakeholderContactByMstrStakeholderContactId,
            (e) =>
                call(updateMstrStakeholderContactByMstrStakeholderContactId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit<TRes>
    implements CopyWith$Mutation$CustomerContactEdit<TRes> {
  _CopyWithStubImpl$Mutation$CustomerContactEdit(this._res);

  TRes _res;

  call({
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId?
    updateMstrStakeholderContactByMstrStakeholderContactId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
    TRes
  >
  get updateMstrStakeholderContactByMstrStakeholderContactId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId.stub(
        _res,
      );
}

const documentNodeMutationCustomerContactEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CustomerContactEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrStakeholderContactId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrStakeholderId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'code')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mail')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrShippingKindId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'remarks')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'officeAppellationsId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'officeNameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'officeNameJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'officeNameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'officePronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'officePronunciationJa'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'officePronunciationEn'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'officeNicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'officeNicknameJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'officeNicknameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'departmentAppellationsId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'departmentNameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'departmentNameJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'departmentNameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'departmentPronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'departmentPronunciationJa'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'departmentPronunciationEn'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'departmentNicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'departmentNicknameJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'departmentNicknameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'contactPersonAppellationsId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'contactPersonNameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'contactPersonNameJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'contactPersonNameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(
              value: 'contactPersonPronunciationSharedDictionaryId',
            ),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'contactPersonPronunciationJa'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'contactPersonPronunciationEn'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'contactPersonNicknameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'contactPersonNicknameJa'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'contactPersonNicknameEn'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(
              value: 'updateMstrStakeholderContactByMstrStakeholderContactId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStakeholderContactId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrStakeholderContactId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStakeholderContactPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrStakeholderId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrStakeholderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mail'),
                            value: VariableNode(name: NameNode(value: 'mail')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrShippingKindId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrShippingKindId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(
                              value: 'sharedAppellationToOfficeAppellationsId',
                            ),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateBySharedAppellationsId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationsId',
                                        ),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'officeAppellationsId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'officeNameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'officeNameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'officeNameEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryPronunciationId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'officePronunciationSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'officePronunciationJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'officePronunciationEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNicknameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'officeNicknameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'officeNicknameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'officeNicknameEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(
                              value:
                                  'sharedAppellationToDepartmentAppellationsId',
                            ),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateBySharedAppellationsId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationsId',
                                        ),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'departmentAppellationsId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'departmentNameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'departmentNameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'departmentNameEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryPronunciationId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'departmentPronunciationSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'departmentPronunciationJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'departmentPronunciationEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNicknameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'departmentNicknameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'departmentNicknameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'departmentNicknameEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(
                              value:
                                  'sharedAppellationToContactPersonAppellationsId',
                            ),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateBySharedAppellationsId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationsId',
                                        ),
                                        value: VariableNode(
                                          name: NameNode(
                                            value:
                                                'contactPersonAppellationsId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'contactPersonNameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'contactPersonNameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'contactPersonNameEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryPronunciationId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'contactPersonPronunciationSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'contactPersonPronunciationJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'contactPersonPronunciationEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNicknameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'contactPersonNicknameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'contactPersonNicknameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'contactPersonNicknameEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrStakeholderContact'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderContactId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mail'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrShippingKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'remarks'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'sharedAppellationByOfficeAppellationsId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationsId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryPronunciationId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNicknameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'sharedAppellationByDepartmentAppellationsId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationsId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryPronunciationId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNicknameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(
                          value:
                              'sharedAppellationByContactPersonAppellationsId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationsId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryPronunciationId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(
                                value:
                                    'sharedDictionaryBySharedDictionaryNicknameId',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Mutation$CustomerContactEdit _parserFn$Mutation$CustomerContactEdit(
  Map<String, dynamic> data,
) => Mutation$CustomerContactEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$CustomerContactEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$CustomerContactEdit?,
    );

class Options$Mutation$CustomerContactEdit
    extends graphql.MutationOptions<Mutation$CustomerContactEdit> {
  Options$Mutation$CustomerContactEdit({
    String? operationName,
    required Variables$Mutation$CustomerContactEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CustomerContactEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CustomerContactEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$CustomerContactEdit>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$CustomerContactEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCustomerContactEdit,
         parserFn: _parserFn$Mutation$CustomerContactEdit,
       );

  final OnMutationCompleted$Mutation$CustomerContactEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$CustomerContactEdit
    extends graphql.WatchQueryOptions<Mutation$CustomerContactEdit> {
  WatchOptions$Mutation$CustomerContactEdit({
    String? operationName,
    required Variables$Mutation$CustomerContactEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CustomerContactEdit? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationCustomerContactEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$CustomerContactEdit,
       );
}

extension ClientExtension$Mutation$CustomerContactEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CustomerContactEdit>>
  mutate$CustomerContactEdit(
    Options$Mutation$CustomerContactEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$CustomerContactEdit>
  watchMutation$CustomerContactEdit(
    WatchOptions$Mutation$CustomerContactEdit options,
  ) => this.watchMutation(options);
}

class Mutation$CustomerContactEdit$HookResult {
  Mutation$CustomerContactEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$CustomerContactEdit runMutation;

  final graphql.QueryResult<Mutation$CustomerContactEdit> result;
}

Mutation$CustomerContactEdit$HookResult useMutation$CustomerContactEdit([
  WidgetOptions$Mutation$CustomerContactEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$CustomerContactEdit(),
  );
  return Mutation$CustomerContactEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CustomerContactEdit>
useWatchMutation$CustomerContactEdit(
  WatchOptions$Mutation$CustomerContactEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CustomerContactEdit
    extends graphql.MutationOptions<Mutation$CustomerContactEdit> {
  WidgetOptions$Mutation$CustomerContactEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CustomerContactEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CustomerContactEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$CustomerContactEdit>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$CustomerContactEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCustomerContactEdit,
         parserFn: _parserFn$Mutation$CustomerContactEdit,
       );

  final OnMutationCompleted$Mutation$CustomerContactEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$CustomerContactEdit =
    graphql.MultiSourceResult<Mutation$CustomerContactEdit> Function(
      Variables$Mutation$CustomerContactEdit, {
      Object? optimisticResult,
      Mutation$CustomerContactEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$CustomerContactEdit =
    widgets.Widget Function(
      RunMutation$Mutation$CustomerContactEdit,
      graphql.QueryResult<Mutation$CustomerContactEdit>?,
    );

class Mutation$CustomerContactEdit$Widget
    extends graphql_flutter.Mutation<Mutation$CustomerContactEdit> {
  Mutation$CustomerContactEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CustomerContactEdit? options,
    required Builder$Mutation$CustomerContactEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$CustomerContactEdit(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId({
    this.mstrStakeholderContact,
    this.$__typename = 'UpdateMstrStakeholderContactPayload',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderContact = json['mstrStakeholderContact'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId(
      mstrStakeholderContact: l$mstrStakeholderContact == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact.fromJson(
              (l$mstrStakeholderContact as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact?
  mstrStakeholderContact;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderContact = mstrStakeholderContact;
    _resultData['mstrStakeholderContact'] = l$mstrStakeholderContact?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderContact = mstrStakeholderContact;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrStakeholderContact, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderContact = mstrStakeholderContact;
    final lOther$mstrStakeholderContact = other.mstrStakeholderContact;
    if (l$mstrStakeholderContact != lOther$mstrStakeholderContact) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId;

  TRes call({
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact?
    mstrStakeholderContact,
    String? $__typename,
  });
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
    TRes
  >
  get mstrStakeholderContact;
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderContact = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId(
      mstrStakeholderContact: mstrStakeholderContact == _undefined
          ? _instance.mstrStakeholderContact
          : (mstrStakeholderContact
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
    TRes
  >
  get mstrStakeholderContact {
    final local$mstrStakeholderContact = _instance.mstrStakeholderContact;
    return local$mstrStakeholderContact == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact(
            local$mstrStakeholderContact,
            (e) => call(mstrStakeholderContact: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact?
    mstrStakeholderContact,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
    TRes
  >
  get mstrStakeholderContact =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact.stub(
        _res,
      );
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact({
    required this.mstrStakeholderContactId,
    required this.mstrStakeholderId,
    required this.code,
    this.mail,
    this.mstrShippingKindId,
    this.remarks,
    this.sharedAppellationByOfficeAppellationsId,
    this.sharedAppellationByDepartmentAppellationsId,
    this.sharedAppellationByContactPersonAppellationsId,
    this.$__typename = 'MstrStakeholderContact',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderContactId = json['mstrStakeholderContactId'];
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$code = json['code'];
    final l$mail = json['mail'];
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$remarks = json['remarks'];
    final l$sharedAppellationByOfficeAppellationsId =
        json['sharedAppellationByOfficeAppellationsId'];
    final l$sharedAppellationByDepartmentAppellationsId =
        json['sharedAppellationByDepartmentAppellationsId'];
    final l$sharedAppellationByContactPersonAppellationsId =
        json['sharedAppellationByContactPersonAppellationsId'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact(
      mstrStakeholderContactId: (l$mstrStakeholderContactId as String),
      mstrStakeholderId: (l$mstrStakeholderId as String),
      code: (l$code as String),
      mail: (l$mail as String?),
      mstrShippingKindId: (l$mstrShippingKindId as String?),
      remarks: (l$remarks as String?),
      sharedAppellationByOfficeAppellationsId:
          l$sharedAppellationByOfficeAppellationsId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId.fromJson(
              (l$sharedAppellationByOfficeAppellationsId
                  as Map<String, dynamic>),
            ),
      sharedAppellationByDepartmentAppellationsId:
          l$sharedAppellationByDepartmentAppellationsId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId.fromJson(
              (l$sharedAppellationByDepartmentAppellationsId
                  as Map<String, dynamic>),
            ),
      sharedAppellationByContactPersonAppellationsId:
          l$sharedAppellationByContactPersonAppellationsId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId.fromJson(
              (l$sharedAppellationByContactPersonAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderContactId;

  final String mstrStakeholderId;

  final String code;

  final String? mail;

  final String? mstrShippingKindId;

  final String? remarks;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId?
  sharedAppellationByOfficeAppellationsId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId?
  sharedAppellationByDepartmentAppellationsId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId?
  sharedAppellationByContactPersonAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    _resultData['mstrStakeholderContactId'] = l$mstrStakeholderContactId;
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mail = mail;
    _resultData['mail'] = l$mail;
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$sharedAppellationByOfficeAppellationsId =
        sharedAppellationByOfficeAppellationsId;
    _resultData['sharedAppellationByOfficeAppellationsId'] =
        l$sharedAppellationByOfficeAppellationsId?.toJson();
    final l$sharedAppellationByDepartmentAppellationsId =
        sharedAppellationByDepartmentAppellationsId;
    _resultData['sharedAppellationByDepartmentAppellationsId'] =
        l$sharedAppellationByDepartmentAppellationsId?.toJson();
    final l$sharedAppellationByContactPersonAppellationsId =
        sharedAppellationByContactPersonAppellationsId;
    _resultData['sharedAppellationByContactPersonAppellationsId'] =
        l$sharedAppellationByContactPersonAppellationsId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$code = code;
    final l$mail = mail;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$remarks = remarks;
    final l$sharedAppellationByOfficeAppellationsId =
        sharedAppellationByOfficeAppellationsId;
    final l$sharedAppellationByDepartmentAppellationsId =
        sharedAppellationByDepartmentAppellationsId;
    final l$sharedAppellationByContactPersonAppellationsId =
        sharedAppellationByContactPersonAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderContactId,
      l$mstrStakeholderId,
      l$code,
      l$mail,
      l$mstrShippingKindId,
      l$remarks,
      l$sharedAppellationByOfficeAppellationsId,
      l$sharedAppellationByDepartmentAppellationsId,
      l$sharedAppellationByContactPersonAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final lOther$mstrStakeholderContactId = other.mstrStakeholderContactId;
    if (l$mstrStakeholderContactId != lOther$mstrStakeholderContactId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mail = mail;
    final lOther$mail = other.mail;
    if (l$mail != lOther$mail) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$sharedAppellationByOfficeAppellationsId =
        sharedAppellationByOfficeAppellationsId;
    final lOther$sharedAppellationByOfficeAppellationsId =
        other.sharedAppellationByOfficeAppellationsId;
    if (l$sharedAppellationByOfficeAppellationsId !=
        lOther$sharedAppellationByOfficeAppellationsId) {
      return false;
    }
    final l$sharedAppellationByDepartmentAppellationsId =
        sharedAppellationByDepartmentAppellationsId;
    final lOther$sharedAppellationByDepartmentAppellationsId =
        other.sharedAppellationByDepartmentAppellationsId;
    if (l$sharedAppellationByDepartmentAppellationsId !=
        lOther$sharedAppellationByDepartmentAppellationsId) {
      return false;
    }
    final l$sharedAppellationByContactPersonAppellationsId =
        sharedAppellationByContactPersonAppellationsId;
    final lOther$sharedAppellationByContactPersonAppellationsId =
        other.sharedAppellationByContactPersonAppellationsId;
    if (l$sharedAppellationByContactPersonAppellationsId !=
        lOther$sharedAppellationByContactPersonAppellationsId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact;

  TRes call({
    String? mstrStakeholderContactId,
    String? mstrStakeholderId,
    String? code,
    String? mail,
    String? mstrShippingKindId,
    String? remarks,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId?
    sharedAppellationByOfficeAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId?
    sharedAppellationByDepartmentAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId?
    sharedAppellationByContactPersonAppellationsId,
    String? $__typename,
  });
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
    TRes
  >
  get sharedAppellationByOfficeAppellationsId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
    TRes
  >
  get sharedAppellationByDepartmentAppellationsId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
    TRes
  >
  get sharedAppellationByContactPersonAppellationsId;
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderContactId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? mail = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? remarks = _undefined,
    Object? sharedAppellationByOfficeAppellationsId = _undefined,
    Object? sharedAppellationByDepartmentAppellationsId = _undefined,
    Object? sharedAppellationByContactPersonAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact(
      mstrStakeholderContactId:
          mstrStakeholderContactId == _undefined ||
              mstrStakeholderContactId == null
          ? _instance.mstrStakeholderContactId
          : (mstrStakeholderContactId as String),
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mail: mail == _undefined ? _instance.mail : (mail as String?),
      mstrShippingKindId: mstrShippingKindId == _undefined
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      sharedAppellationByOfficeAppellationsId:
          sharedAppellationByOfficeAppellationsId == _undefined
          ? _instance.sharedAppellationByOfficeAppellationsId
          : (sharedAppellationByOfficeAppellationsId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId?),
      sharedAppellationByDepartmentAppellationsId:
          sharedAppellationByDepartmentAppellationsId == _undefined
          ? _instance.sharedAppellationByDepartmentAppellationsId
          : (sharedAppellationByDepartmentAppellationsId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId?),
      sharedAppellationByContactPersonAppellationsId:
          sharedAppellationByContactPersonAppellationsId == _undefined
          ? _instance.sharedAppellationByContactPersonAppellationsId
          : (sharedAppellationByContactPersonAppellationsId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
    TRes
  >
  get sharedAppellationByOfficeAppellationsId {
    final local$sharedAppellationByOfficeAppellationsId =
        _instance.sharedAppellationByOfficeAppellationsId;
    return local$sharedAppellationByOfficeAppellationsId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId(
            local$sharedAppellationByOfficeAppellationsId,
            (e) => call(sharedAppellationByOfficeAppellationsId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
    TRes
  >
  get sharedAppellationByDepartmentAppellationsId {
    final local$sharedAppellationByDepartmentAppellationsId =
        _instance.sharedAppellationByDepartmentAppellationsId;
    return local$sharedAppellationByDepartmentAppellationsId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId(
            local$sharedAppellationByDepartmentAppellationsId,
            (e) => call(sharedAppellationByDepartmentAppellationsId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
    TRes
  >
  get sharedAppellationByContactPersonAppellationsId {
    final local$sharedAppellationByContactPersonAppellationsId =
        _instance.sharedAppellationByContactPersonAppellationsId;
    return local$sharedAppellationByContactPersonAppellationsId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId(
            local$sharedAppellationByContactPersonAppellationsId,
            (e) => call(sharedAppellationByContactPersonAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderContactId,
    String? mstrStakeholderId,
    String? code,
    String? mail,
    String? mstrShippingKindId,
    String? remarks,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId?
    sharedAppellationByOfficeAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId?
    sharedAppellationByDepartmentAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId?
    sharedAppellationByContactPersonAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
    TRes
  >
  get sharedAppellationByOfficeAppellationsId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
    TRes
  >
  get sharedAppellationByDepartmentAppellationsId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
    TRes
  >
  get sharedAppellationByContactPersonAppellationsId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId.stub(
        _res,
      );
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CustomerContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}
