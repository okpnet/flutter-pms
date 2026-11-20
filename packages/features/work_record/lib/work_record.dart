/// 作業実績 機能。外へ公開するのは [WorkRecordModule] だけ。
library;

export 'src/graphql/work_record_repositories.dart' show workRecordRepositories;
export 'src/work_record_module.dart' show WorkRecordModule;
export 'src/graphql/graphql_register_gateway.dart' show GraphqlWorkRegisterGateway;
export 'src/register/in_memory_register_gateway.dart' show InMemoryWorkRegisterGateway;
export 'src/register/register_gateway.dart' show IWorkRegisterGateway, workRegisterGatewayProvider;
