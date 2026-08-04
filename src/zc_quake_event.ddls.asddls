@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZQUAKE_EVENT'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_QUAKE_EVENT
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_QUAKE_EVENT
  association [1..1] to ZR_QUAKE_EVENT as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  EventID,
  EventTime,
  Magnitude,
  Place,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
