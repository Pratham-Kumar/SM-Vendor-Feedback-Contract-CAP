using sm.vendorfeedbackcontract as my from '../db/vendorfeedbackcontract-model';

service CatalogService {
    entity Headers   as projection on my.headerT;
    entity Questions as projection on my.questionsT;
    entity Files     as projection on my.Files;
}
