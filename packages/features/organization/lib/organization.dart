/// 会社情報機能。外へ公開するのは [OrganizationModule] だけ。
library;

export 'src/graphql/organization_repositories.dart'
    show organizationRepositories;
export 'src/graphql/staff_history_lookup.dart' show staffHistoryLookup;
export 'src/organization_module.dart' show OrganizationModule;
export 'src/graphql/user_display_lookup.dart'
    show UserDisplay, userDisplayLookup;
export 'src/approval_defaults/approval_defaults_gateway.dart'
    show
        ApprovalDefaults,
        ApprovalPatternChoice,
        IApprovalDefaultsGateway,
        InMemoryApprovalDefaultsGateway,
        approvalDefaultKinds,
        approvalDefaultsGatewayProvider;
export 'src/graphql/graphql_approval_defaults_gateway.dart' show GraphqlApprovalDefaultsGateway;
