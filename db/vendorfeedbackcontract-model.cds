namespace sm.vendorfeedbackcontract;

using {
  managed,
  cuid
} from '@sap/cds/common';


entity headerT : managed, cuid {
  key ID                   : String;
      ContractorName       : String;
      ContractorCodeNumber : String;
      ContractOwner        : String;
      ContractNumber       : String;
      ContractDescription  : String;
      FPALCode             : String;
      ContractDuration     : String;
      DateofReport         : String;
      ContractCloseout     : String;
      lineItems            : Composition of many questionsT
                               on lineItems.parentKey = $self;

}

entity questionsT : managed, cuid {
  key ID        : UUID;
  key parentKey : Association to one headerT;
      Section   : String;
      Comment   : String;
}
