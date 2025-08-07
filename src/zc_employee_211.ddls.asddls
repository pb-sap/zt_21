@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.sapObjectNodeType.name: 'ZI_EMPLOYEE_211'
define root view entity ZC_EMPLOYEE_211
  provider contract transactional_query
  as projection on ZI_EMPLOYEE_211
{

      
  key employee_id, 
  first_name,     
  last_name,       
  birth_date,      
  entry_date,      
  annual_salary,   
  currency_code   
  

  
  
}
