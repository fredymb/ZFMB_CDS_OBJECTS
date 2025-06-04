CLASS zfmb_cl_fill_numbers DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zfmb_cl_fill_numbers IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lt_numbers TYPE STANDARD TABLE OF zfmb_table_entity_numbers.
    lt_numbers = VALUE #( ( FirstNumber = 1 SecondNumber = 1 )
                          ( FirstNumber = 2 SecondNumber = 2 )
                          ( FirstNumber = 3 SecondNumber = 3 ) ).
    INSERT zfmb_table_entity_numbers FROM TABLE @lt_numbers.

  ENDMETHOD.
ENDCLASS.
