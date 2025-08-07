CLASS zcl_populate_employeee DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_populate_employeee IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA lt_employees TYPE TABLE OF zdt_employee_211.

  lt_employees = VALUE #(
      ( employee_id   = '1001'
        first_name    = 'Juliana'
        last_name     = 'Oliveira'
        birth_date    = '19900825'
        entry_date    = '20220310'
        annual_salary = '120000.00'
        currency_code = 'BRL'
        created_by    = sy-uname
        created_at    = cl_abap_context_info=>get_system_time( )
      )
      (
        employee_id   = '1002'
        first_name    = 'Ricardo'
        last_name     = 'Santos'
        birth_date    = '19851105'
        entry_date    = '20200720'
        annual_salary = '85000.50'
        currency_code = 'USD'
        created_by    = sy-uname
        created_at    = cl_abap_context_info=>get_system_time( )
      )
      (
        employee_id   = '1003'
        first_name    = 'Mariana'
        last_name     = 'Ferreira'
        birth_date    = '19950212'
        entry_date    = '20240115'
        annual_salary = '95000.00'
        currency_code = 'EUR'
        created_by    = sy-uname
        created_at    = cl_abap_context_info=>get_system_time( )
      )
    ).


    MODIFY zdt_employee_211 FROM TABLE @lt_employees.

    IF sy-subrc = 0.
      out->write( |✅ Sucesso! { lines( lt_employees ) } registros inseridos na tabela ZDT_EMPLOYEE_21.| ).
    ELSE.
      out->write( |❌ Erro ao inserir dados. Código de erro: { sy-subrc }| ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
