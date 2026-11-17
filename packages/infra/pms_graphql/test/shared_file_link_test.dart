import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

void main() {
  const link = SharedFileLink(
    type: 'TransComplaintFile',
    fields: {'transComplaintId': 'UUID'},
  );

  test('登録の文は、PostGraphile v4 の名前の規則で組み立てられ、構文として正しい', () {
    final d = link.createDocument;
    expect(
      d,
      contains(
        'transComplaintFilesUsingTransFileId: {create: [{transComplaintId: \$f_transComplaintId,',
      ),
    );
    expect(
      d,
      contains(
        'transComplaintFilesByTransFileId { nodes { transComplaintFileId } }',
      ),
    );
    expect(d, contains('transFileId: \$id'));
    expect(d, contains('\$f_transComplaintId: UUID'));
    expect(() => gql(d), returnsNormally);
  });

  test('子に渡す列が無くても、文は正しい', () {
    const bare = SharedFileLink(type: 'MstrEquipmentTag');
    expect(() => gql(bare.createDocument), returnsNormally);
    expect(
      bare.createDocument,
      contains(
        'mstrEquipmentTagsUsingTransFileId: {create: [{updateUserId: \$u',
      ),
    );
  });

  test('付け替えの文は、既存の子を主キーでつなぐ', () {
    final d = link.replaceDocument;
    expect(
      d,
      contains(
        'connectByTransComplaintFileId: [{transComplaintFileId: \$link}]',
      ),
    );
    expect(() => gql(d), returnsNormally);
  });
}
