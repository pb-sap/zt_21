@AbapCatalog.sqlViewName: 'ZIEMPLOYEE211'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Employee Data'
@Metadata.ignorePropagatedAnnotations: true


@UI: {
  headerInfo: {
    typeName: 'Funcionário',
    typeNamePlural: 'Funcionários',
    title: {
      type: #STANDARD,
      value: 'first_name'
    },
    description: {
      type: #STANDARD,
      value: 'last_name'
    }
    
  }
}

define root view ZI_EMPLOYEE_211 as select from zdt_employee_211 {

  // Anotações dos campos para a página de detalhes/criação
  @UI.facet: [ {
    id: 'Employee',
    purpose: #STANDARD,
    type: #IDENTIFICATION_REFERENCE,
    label: 'Informações Gerais',
    position: 10
  } ]

  key employee_id,


  @UI.lineItem: [{ position: 20, label: 'Nome' }]
  @UI.identification: [{ position: 20, label: 'Nome' }] // <-- Campo no formulário
  first_name,

  @UI.lineItem: [{ position: 30, label: 'Sobrenome' }]
  @UI.identification: [{ position: 30, label: 'Sobrenome' }] // <-- Campo no formulário
  last_name,

  @UI.lineItem: [{ position: 40, label: 'Data de Admissão' }]
  @UI.identification: [{ position: 40, label: 'Data de Admissão' }] // <-- Campo no formulário
  entry_date,

  @UI.lineItem: [{ position: 50, label: 'Data de Nasc.' }]
  @UI.identification: [{ position: 50, label: 'Data de Nascimento' }] // <-- Campo no formulário
  birth_date,

  @UI.lineItem: [{ position: 60, label: 'Salário Anual' }]
  @UI.identification: [{ position: 60, label: 'Salário Anual' }] // <-- Campo no formulário
  @Semantics.amount.currencyCode: 'currency_code'
  annual_salary,

  // A UI não precisa mostrar o código da moeda no formulário, só no campo de salário
  @Semantics.currencyCode: true
  currency_code,

  last_changed_at
}













//@AbapCatalog.sqlViewName: 'ZIEMPLOYEE21'
//@AbapCatalog.compiler.compareFilter: true
//@AccessControl.authorizationCheck: #NOT_REQUIRED
//@EndUserText.label: 'Consumption View for Employee Data'
//@Metadata.ignorePropagatedAnnotations: true
//define root view ZI_EMPLOYEE_21 as select from zdt_employee_21
//{
//    
//    
//      @UI.lineItem: [{ position: 10 }] 
//      @UI.selectionField: [{ position: 10 }] 
//  key employee_id,
//
//      @Search.defaultSearchElement: true // 
//      @UI.lineItem: [{ position: 20, label: 'Nome' }]
//      first_name,
//
//      @Search.defaultSearchElement: true
//      @UI.lineItem: [{ position: 30, label: 'Sobrenome' }]
//      last_name,
//
//      @UI.lineItem: [{ position: 40, label: 'Data de Admissão' }]
//      @UI.selectionField: [{ position: 20 }]
//      entry_date,
//
//      @UI.lineItem: [{ position: 50 }]  
//      birth_date,
//
//      @UI.lineItem: [{ position: 60, label: 'Salário Anual' }]
//      @Semantics.amount.currencyCode: 'currency_code'
//      annual_salary,
//
//      @UI.hidden: true // 
//      currency_code,
//      
//      last_changed_at
//}
