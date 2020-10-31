.class public Lcom/google/android/mms/pdu/PduContentTypes;
.super Ljava/lang/Object;
.source "PduContentTypes.java"


# static fields
.field static final contentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 83

    const-string v0, "*/*"

    const-string v1, "text/*"

    const-string v2, "text/html"

    const-string v3, "text/plain"

    const-string v4, "text/x-hdml"

    const-string v5, "text/x-ttml"

    const-string v6, "text/x-vCalendar"

    const-string v7, "text/x-vCard"

    const-string v8, "text/vnd.wap.wml"

    const-string v9, "text/vnd.wap.wmlscript"

    const-string v10, "text/vnd.wap.wta-event"

    const-string v11, "multipart/*"

    const-string v12, "multipart/mixed"

    const-string v13, "multipart/form-data"

    const-string v14, "multipart/byterantes"

    const-string v15, "multipart/alternative"

    const-string v16, "application/*"

    const-string v17, "application/java-vm"

    const-string v18, "application/x-www-form-urlencoded"

    const-string v19, "application/x-hdmlc"

    const-string v20, "application/vnd.wap.wmlc"

    const-string v21, "application/vnd.wap.wmlscriptc"

    const-string v22, "application/vnd.wap.wta-eventc"

    const-string v23, "application/vnd.wap.uaprof"

    const-string v24, "application/vnd.wap.wtls-ca-certificate"

    const-string v25, "application/vnd.wap.wtls-user-certificate"

    const-string v26, "application/x-x509-ca-cert"

    const-string v27, "application/x-x509-user-cert"

    const-string v28, "image/*"

    const-string v29, "image/gif"

    const-string v30, "image/jpeg"

    const-string v31, "image/tiff"

    const-string v32, "image/png"

    const-string v33, "image/vnd.wap.wbmp"

    const-string v34, "application/vnd.wap.multipart.*"

    const-string v35, "application/vnd.wap.multipart.mixed"

    const-string v36, "application/vnd.wap.multipart.form-data"

    const-string v37, "application/vnd.wap.multipart.byteranges"

    const-string v38, "application/vnd.wap.multipart.alternative"

    const-string v39, "application/xml"

    const-string v40, "text/xml"

    const-string v41, "application/vnd.wap.wbxml"

    const-string v42, "application/x-x968-cross-cert"

    const-string v43, "application/x-x968-ca-cert"

    const-string v44, "application/x-x968-user-cert"

    const-string v45, "text/vnd.wap.si"

    const-string v46, "application/vnd.wap.sic"

    const-string v47, "text/vnd.wap.sl"

    const-string v48, "application/vnd.wap.slc"

    const-string v49, "text/vnd.wap.co"

    const-string v50, "application/vnd.wap.coc"

    const-string v51, "application/vnd.wap.multipart.related"

    const-string v52, "application/vnd.wap.sia"

    const-string v53, "text/vnd.wap.connectivity-xml"

    const-string v54, "application/vnd.wap.connectivity-wbxml"

    const-string v55, "application/pkcs7-mime"

    const-string v56, "application/vnd.wap.hashed-certificate"

    const-string v57, "application/vnd.wap.signed-certificate"

    const-string v58, "application/vnd.wap.cert-response"

    const-string v59, "application/xhtml+xml"

    const-string v60, "application/wml+xml"

    const-string v61, "text/css"

    const-string v62, "application/vnd.wap.mms-message"

    const-string v63, "application/vnd.wap.rollover-certificate"

    const-string v64, "application/vnd.wap.locc+wbxml"

    const-string v65, "application/vnd.wap.loc+xml"

    const-string v66, "application/vnd.syncml.dm+wbxml"

    const-string v67, "application/vnd.syncml.dm+xml"

    const-string v68, "application/vnd.syncml.notification"

    const-string v69, "application/vnd.wap.xhtml+xml"

    const-string v70, "application/vnd.wv.csp.cir"

    const-string v71, "application/vnd.oma.dd+xml"

    const-string v72, "application/vnd.oma.drm.message"

    const-string v73, "application/vnd.oma.drm.content"

    const-string v74, "application/vnd.oma.drm.rights+xml"

    const-string v75, "application/vnd.oma.drm.rights+wbxml"

    const-string v76, "application/vnd.wv.csp+xml"

    const-string v77, "application/vnd.wv.csp+wbxml"

    const-string v78, "application/vnd.syncml.ds.notification"

    const-string v79, "audio/*"

    const-string v80, "video/*"

    const-string v81, "application/vnd.oma.dd2+xml"

    const-string v82, "application/mikey"

    filled-new-array/range {v0 .. v82}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
