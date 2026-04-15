@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for Template Store Log Changes'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_TEMPLOG as select from zdb_templog
association to parent ZI_TEMP as _Head on  $projection.Fileid = _Head.Fileid and $projection.Enduser = _Head.Enduser and $projection.Endusername = _Head.Endusername
{
    key fileid as Fileid,
    key enduser as Enduser,
    key endusername as Endusername,
    key logchange as Logchange,
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
    last_changed_date as LastChangedDate,
    @Semantics.user.lastChangedBy: true
    last_changed_by as LastChangedBy,
    @Semantics.user.localInstanceLastChangedBy: true
    locallastchangedby as Locallastchangedby,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat as Locallastchangedat,
    locallastchangeddate as Locallastchangeddate,
    locallastchangedtime as Locallastchangedtime,
    _Head
}
