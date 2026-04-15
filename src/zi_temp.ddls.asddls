@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for Template Store'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #L,
    dataClass: #CUSTOMIZING
}
@Metadata.allowExtensions: true
define root view entity ZI_TEMP as select from zdb_temptab
composition [1..*] of ZI_TEMPLOG as _log
{
    key fileid as Fileid,
    key enduser as Enduser,
    key endusername as Endusername,
    formname as Formname,
    @Semantics.mimeType: true
    filename as Filename,
    filestatus as Filestatus,
    @Semantics.largeObject:
                   { mimeType: 'Mimetype',
                   fileName: 'Filename',
                   acceptableMimeTypes: ['application/vnd.adobe.xdp+xml' ],
                   contentDispositionPreference: #ATTACHMENT }
    attachment as Attachment,
    mimetype as Mimetype,
    comments as Comments,
    @Semantics.user.createdBy: true
    localcreatedby as Localcreatedby,
    @Semantics.systemDateTime.createdAt: true
    localcreatedat as Localcreatedat,
    localcreateddate as Localcreateddate,
    localcreatedtime as Localcreatedtime,
    @Semantics.systemDateTime.lastChangedAt: true
    lastchangedat as Lastchangedat,
    last_changed_at as LastChanged_At,
    @Semantics.businessDate.at: true
    last_changed_date as LastChangedDate,
    @Semantics.user.lastChangedBy: true
    last_changed_by as LastChangedBy,
    @Semantics.user.localInstanceLastChangedBy: true
    locallastchangedby as Locallastchangedby,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat as Locallastchangedat,
    locallastchangeddate as Locallastchangeddate,
    locallastchangedtime as Locallastchangedtime,
    _log
}
