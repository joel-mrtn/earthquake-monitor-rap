@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZQUAKE_EVENT'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_QUAKE_EVENT
  as select from zquake_event as QuakeEvent
{
  key uuid                  as UUID,
      event_id              as EventID,
      event_time            as EventTime,
      magnitude             as Magnitude,
      place                 as Place,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt
}
