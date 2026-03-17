// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:graphql/client.dart';

abstract interface class IEditModel<TMutationArgs> {
  bool get isValid;
  bool get isNew;
}
