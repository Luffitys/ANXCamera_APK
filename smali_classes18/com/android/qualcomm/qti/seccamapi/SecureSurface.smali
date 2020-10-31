.class public Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
.super Ljava/lang/Object;
.source "SecureSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;,
        Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;,
        Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;
    }
.end annotation


# static fields
.field public static final FLIP_HORIZONTALLY:I = 0x1

.field public static final FLIP_VERTICALLY:I = 0x2

.field public static final IMAGE_FORMAT_PRIVATE:I = 0x22

.field public static final IMAGE_FORMAT_RAW:I = 0x24

.field public static final IMAGE_FORMAT_RAW10:I = 0x25

.field public static final IMAGE_FORMAT_RAW_SENSOR:I = 0x20

.field public static final IMAGE_FORMAT_YUV420:I = 0x23

.field public static final IMAGE_FORMAT_YUV420SP:I = 0x11

.field public static final IMAGE_FORMAT_YUV420SP_UBWC:I = 0x7fa30c06

.field public static final NO_ROTATION:I = 0x0

.field public static final ROTATE_180:I = 0x3

.field public static final ROTATE_270:I = 0x7

.field public static final ROTATE_90:I = 0x4

.field public static final ROTATE_90_HORIZONTAL_FLIP:I = 0x5

.field public static final ROTATE_90_VERTICAL_FLIP:I = 0x6

.field protected static final SECCAM_API_LOG_TAG:Ljava/lang/String; = "SECCAM-API"


# instance fields
.field private cameraId_:I

.field protected captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

.field protected imageFormat_:I

.field private previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

.field protected previewSurfaceHolder_:Landroid/view/SurfaceHolder;


# direct methods
.method protected constructor <init>(IIIII)V
    .registers 15

    const-string v0, "SecureSurface::SecureSurface - ERROR: "

    const-string v1, "SECCAM-API"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->cameraId_:I

    :try_start_11
    iput p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->cameraId_:I

    iput p4, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->imageFormat_:I

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getSecureCameraSurface(IIIII)Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureSurface::SecureSurface - CaptureSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    invoke-virtual {v3}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", surfaceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    invoke-virtual {v3}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurfaceId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_4c} :catch_61
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4c} :catch_4d

    goto :goto_74

    :catch_4d
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :catch_61
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    nop

    :goto_75
    return-void
.end method

.method static synthetic access$000(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Landroid/view/SurfaceHolder$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

    return-object v0
.end method

.method public static imageFormatToString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x11

    if-eq p0, v0, :cond_39

    const/16 v0, 0x20

    if-eq p0, v0, :cond_36

    const v0, 0x7fa30c06

    if-eq p0, v0, :cond_33

    packed-switch p0, :pswitch_data_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_27
    const-string v0, "RAW10"

    return-object v0

    :pswitch_2a
    const-string v0, "RAW(PRIVATE)"

    return-object v0

    :pswitch_2d
    const-string v0, "YUV420"

    return-object v0

    :pswitch_30
    const-string v0, "PRIVATE"

    return-object v0

    :cond_33
    const-string v0, "YUV420SP_UBWC"

    return-object v0

    :cond_36
    const-string v0, "RAW(SENSOR)"

    return-object v0

    :cond_39
    const-string v0, "YUV420SP"

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x22
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const-string v0, "0"

    return-object v0

    :pswitch_6
    const-string v0, "270"

    return-object v0

    :pswitch_9
    const-string v0, "90+VFLIP"

    return-object v0

    :pswitch_c
    const-string v0, "90+HFLIP"

    return-object v0

    :pswitch_f
    const-string v0, "90"

    return-object v0

    :pswitch_12
    const-string v0, "180"

    return-object v0

    :pswitch_15
    const-string v0, "VFLIP"

    return-object v0

    :pswitch_18
    const-string v0, "HFLIP"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public assignPreviewSurface(Landroid/view/SurfaceHolder;IIIII)Z
    .registers 15

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->setSecurePreviewSurface(Landroid/view/Surface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface;IIIII)Z

    move-result v0

    if-eqz v0, :cond_22

    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;

    invoke-direct {v1, p0}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;-><init>(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)V

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSerfaceCallback_:Landroid/view/SurfaceHolder$Callback;

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_22
    return v0
.end method

.method public enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z
    .registers 4

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z

    move-result v0

    return v0
.end method

.method public getCameraId()I
    .registers 2

    iget v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->cameraId_:I

    return v0
.end method

.method public getCaptureSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureSurfaceId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurfaceId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getImageFormat()I
    .registers 2

    iget v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->imageFormat_:I

    return v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->releaseCaptureSurface(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    :cond_10
    return v0
.end method

.method protected releaseCaptureSurface()Z
    .registers 2

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->releaseCaptureSurface(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Z

    move-result v0

    return v0
.end method
