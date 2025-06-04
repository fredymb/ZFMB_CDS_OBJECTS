@ClientHandling.type: #CLIENT_INDEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'FMB Table Entity Numbers'
define table entity ZFMB_TABLE_ENTITY_NUMBERS
{
  key FirstNumber : ZFMB_TYPE_FIRST_NUMBER;
  key SecondNumber : ZFMB_TYPE_SECOND_NUMBER;
}
