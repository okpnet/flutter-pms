import 'dart:async';
import 'dart:io' show SocketException;

import "package:collection/collection.dart";
import 'package:gql/language.dart';
import 'package:graphql/client.dart';
import 'package:pms_logger_lib/logger_provider.dart';

import 'package:pms_graphql_lib/constants/graphql_constant.dart';
import 'package:pms_graphql_lib/edit_models/iedit_model.dart';
import 'package:pms_graphql_lib/exceptions/graphql_exception.dart';
import 'package:pms_graphql_lib/exceptions/graphql_provider_exception.dart';
import 'package:pms_graphql_lib/extends/dupricate.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';
import 'package:pms_graphql_lib/results/graphql_prover_result.dart';

part 'providers/client_provider.dart';
