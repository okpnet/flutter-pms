import 'package:graphql/src/core/mutation_options.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';

import '../../graphql/generated/schema.graphql.dart';
import '../../graphql/generated/staff.graphql.dart';
import 'staff_edit_model.dart';

class StaffEditModelConverter implements IGraphQLConverter<StaffEditModel> {
  @override
  MutationOptions toInsertOptions(StaffEditModel instance) {
    final map = instance.toMap();
    map.remove('info_office_id');
    final variables = Variables$Mutation$InsertStaff(
      objects: [Input$tests_info_staff_insert_input.fromJson(map)],
    );

    return Options$Mutation$InsertStaff(variables: variables);
  }

  @override
  MutationOptions toUpdateOptions(StaffEditModel instance) {
    final variables = Variables$Mutation$UpdateStaff(
      $_eq: instance.info_staff_id,
      $_set: Input$tests_info_staff_set_input.fromJson(instance.toMap()),
    );
    return Options$Mutation$UpdateStaff(variables: variables);
  }
}
