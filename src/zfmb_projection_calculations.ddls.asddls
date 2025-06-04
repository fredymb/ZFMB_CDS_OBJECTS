@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'FMB Projection Calculations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZFMB_PROJECTION_CALCULATIONS as select from ZFMB_TABLE_ENTITY_NUMBERS
bind aspect ZFMB_ASPECT_CALCULATIONS( FirstNumber => $projection.FirstNumber,
                                      SecondNumber => $projection.SecondNumber ) as Calculations
{
    key FirstNumber,
    key SecondNumber,
    include Calculations.ResultSumm as ResultSumm,
    include Calculations.ResultMult as ResultMult 
}
