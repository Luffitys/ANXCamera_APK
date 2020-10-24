.class public Lcom/android/camera2/MiCamera2ShotSimplePreview;
.super Lcom/android/camera2/MiCamera2Shot;
.source ""

# interfaces
.implements Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCamera2ShotSimplePreview"


# instance fields
.field private mSaver:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotSimplePreview;->notifyResultData([B)V

    return-void
.end method

.method protected notifyResultData([B)V
    .locals 0

    return-void
.end method

.method protected onImageReceived(Landroid/media/Image;I)V
    .locals 0

    return-void
.end method

.method protected prepare()V
    .locals 0

    return-void
.end method

.method public save([BIII)V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(Z)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v11

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/camera2/MiCamera2ShotSimplePreview;->mSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    move-object/from16 v4, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v15, p4

    invoke-virtual/range {v3 .. v24}, Lcom/android/camera/storage/ImageSaver;->addSimpleImage([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;ILandroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotSimplePreview;->mSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method protected startSessionCapture()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(ZZZZ)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2ShotSimplePreview;->TAG:Ljava/lang/String;

    const-string v0, "startSessionCapture: null picture callback"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
