CLASS lhc_zr_quake_event DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR QuakeEvent
        RESULT result.
ENDCLASS.

CLASS lhc_zr_quake_event IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.
ENDCLASS.
