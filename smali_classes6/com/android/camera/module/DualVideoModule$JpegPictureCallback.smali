.class public final Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;
.super Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;
.source ""


# instance fields
.field final mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/DualVideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/DualVideoModule;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-direct {p0}, Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v13

    iget-object v1, v0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/DualVideoModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/DualVideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v10, v0, Lcom/android/camera/CameraSize;->width:I

    iget v11, v0, Lcom/android/camera/CameraSize;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    invoke-virtual/range {v1 .. v22}, Lcom/android/camera/storage/ImageSaver;->addImage([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget-object p2, p0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/DualVideoModule;

    invoke-static {p2}, Lcom/android/camera/module/DualVideoModule;->access$300(Lcom/android/camera/module/DualVideoModule;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onPictureTaken"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/DualVideoModule;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    iget-boolean p2, p2, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/DualVideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/DualVideoModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/DualVideoModule$JpegPictureCallback;->storeImage([BLandroid/location/Location;)V

    return-void
.end method
