CLASS lhc_templatestore DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR templatestore RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR templatestore RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR templatestore RESULT result.
    METHODS createdby FOR DETERMINE ON MODIFY
      IMPORTING keys FOR templatestore~createdby.
    METHODS changedat FOR DETERMINE ON MODIFY
      IMPORTING keys FOR templatestore~changedat.

    METHODS comments FOR VALIDATE ON SAVE
      IMPORTING keys FOR templatestore~comments.

ENDCLASS.

CLASS lhc_templatestore IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.


  METHOD get_instance_features.
  ENDMETHOD.

  METHOD createdby.
  ENDMETHOD.

  METHOD changedat.
  ENDMETHOD.

  METHOD comments.
  ENDMETHOD.

ENDCLASS.
