/// 品質管理文書 機能。外へ公開するのは [QualityDocumentModule] と、アプリが差し込む取得元・権限の口。
library;

export 'src/body/document_body_gateway.dart'
    show
        DocumentBody,
        DocumentBodyNotFound,
        IDocumentBodyGateway,
        InMemoryDocumentBodyGateway,
        documentBodyGatewayProvider,
        documentBodyIsAdminProvider;
export 'src/graphql/graphql_document_body_gateway.dart' show GraphqlDocumentBodyGateway;
export 'src/graphql/quality_document_repositories.dart'
    show qualityDocumentRepositories;
export 'src/quality_document_module.dart' show QualityDocumentModule;
export 'src/body/document_pdf.dart'
    show
        DocumentApproval,
        IDocumentApprovalSource,
        IDocumentFileSaver,
        NoDocumentApprovalSource,
        documentApprovalSourceProvider,
        documentAppSettingsProvider,
        documentClockProvider,
        documentFileSaverProvider,
        documentPdfFontsProvider,
        documentPrinterNameProvider;
