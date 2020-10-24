.class public Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;

.field private mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private final mCaptureTime:J

.field private final mFileName:Ljava/lang/String;

.field private mHeight:I

.field private mNv21Data:[B

.field private mOrientation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;[BIIIJLandroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/AmbilightModule$SaveStateCallback;)V
    .locals 0
    .param p1    # Lcom/android/camera/Camera;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    iput p4, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iput p5, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    iput p6, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    iput-object p10, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

    iput-object p9, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    iput-wide p7, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIIIJ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-string v27, ""

    move-object/from16 v13, p2

    move-object/from16 v16, v10

    move/from16 v17, p6

    move-object/from16 v18, p3

    move/from16 v20, p4

    move/from16 v21, p5

    invoke-static/range {v12 .. v28}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v12, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v12, :cond_1

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v5, v14

    move-object v7, v10

    move-wide/from16 v8, p7

    move-object v13, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/android/camera/Util;->appendCaptureResultToExif(Ljava/lang/String;IIIJLandroid/location/Location;JLandroid/hardware/camera2/CaptureResult;)V

    move/from16 v3, p6

    goto :goto_0

    :cond_1
    move/from16 v3, p6

    move-object v13, v10

    invoke-static {v11, v3, v13, v14, v15}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p6

    move-wide v4, v14

    move-object v6, v13

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/camera/storage/Storage;->addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    sget-object v1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    sget-object v2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageAsApplication uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ActivityBase;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v3

    sget-object v4, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addImageAsApplication Thumbnail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    iget v2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v3, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v5

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/ImageHelper;->encodeNv21ToJpeg([BIII)[B

    move-result-object v3

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    if-nez v3, :cond_0

    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v1, "jpegData is null, can\'t save"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    iget v4, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v5, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    iget v6, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    iget-wide v7, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIIIJ)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Lcom/arcsoft/camera/utils/OooO0OO;->OooOOO(Ljava/lang/String;[B)I

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v5, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    iget v6, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    iget-wide v7, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIIIJ)V

    :goto_0
    return-object v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/AmbilightModule$SaveStateCallback;->onSaveCompleted()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    sget-object p0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v0, "onPreExecute"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
