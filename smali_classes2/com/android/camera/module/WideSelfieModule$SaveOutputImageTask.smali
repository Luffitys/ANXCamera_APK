.class Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "WideSelfieModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/WideSelfieModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

.field private final mFileName:Ljava/lang/String;

.field private mHeight:I

.field private mMirror:Z

.field private mNv21Data:[B

.field private mOrientation:I

.field private mStopMode:Ljava/lang/String;

.field private mTriggerMode:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;[BIIZIILjava/lang/String;Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;)V
    .locals 0
    .param p1    # Lcom/android/camera/Camera;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iput p4, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iput p5, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    iput-boolean p6, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mMirror:Z

    iput p7, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    iput p8, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mTriggerMode:I

    iput-object p9, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V
    .locals 25

    move-object/from16 v8, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v13

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v23, ""

    move-object/from16 v10, p2

    move/from16 v14, p6

    move-object/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-static/range {v9 .. v24}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move/from16 v2, p6

    invoke-static {v8, v2, v13, v11, v12}, Lcom/android/camera/ExifHelper;->writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p1

    move-wide v3, v11

    move-object v5, v13

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/camera/storage/Storage;->addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string v1, "WideSelfieModule"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addImageAsApplication uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    if-eqz v0, :cond_2

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/ActivityBase;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addImageAsApplication Thumbnail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 23

    move-object/from16 v7, p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyShowLevel()I

    move-result v0

    move v14, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    move v14, v0

    :goto_0
    const/4 v15, 0x1

    const-string v1, "WideSelfieModule"

    if-gtz v0, :cond_3

    if-lez v14, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v0

    goto/16 :goto_5

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->ib()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    move/from16 v21, v3

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v21, v2

    goto :goto_3

    :cond_5
    move/from16 v21, v15

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Lcom/android/camera/beautyshot/BeautyShot;

    invoke-direct {v5}, Lcom/android/camera/beautyshot/BeautyShot;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/beautyshot/BeautyShot;->init(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beautyShot start  mWidth "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mHeight = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beautyLevel "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v8, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v9, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    const/16 v20, 0x10e

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/camera/beautyshot/BeautyShot;->processByBeautyLevel([BIIIII)I

    goto :goto_4

    :cond_6
    if-lez v14, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beautyLevel smooth "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v10, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v11, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    const/16 v12, 0x10e

    move-object v8, v5

    move/from16 v13, v21

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/beautyshot/BeautyShot;->processBySmoothLevel([BIIIII)I

    :cond_7
    :goto_4
    invoke-virtual {v5}, Lcom/android/camera/beautyshot/BeautyShot;->uninit()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beautyShot end, time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :goto_5
    iget-boolean v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mMirror:Z

    if-eqz v0, :cond_9

    iget v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_8

    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v0, v3, v4}, Lcom/android/camera/beautyshot/BeautyShot;->flipYuvVertical([BII)V

    goto :goto_6

    :cond_8
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v0, v3, v4}, Lcom/android/camera/beautyshot/BeautyShot;->flipYuvHorizontal([BII)V

    :cond_9
    :goto_6
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mNv21Data:[B

    iget v3, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    invoke-static {v2}, Lcom/android/camera/module/BaseModule;->getJpegQuality(Z)I

    move-result v2

    invoke-static {v0, v3, v4, v2}, Lcom/android/camera/ImageHelper;->encodeNv21ToJpeg([BIII)[B

    move-result-object v3

    const/4 v9, 0x0

    if-nez v3, :cond_a

    const-string v0, "jpegData is null, can\'t save"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_a
    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->generateFilepath4Jpeg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v2, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v5, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    iget v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V

    goto :goto_7

    :cond_b
    invoke-static {v1, v3}, Lcom/arcsoft/camera/utils/d;->a(Ljava/lang/String;[B)I

    iget-object v2, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mFileName:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mWidth:I

    iget v5, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mHeight:I

    iget v6, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mOrientation:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;[BIII)V

    :goto_7
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0xb0

    iget v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mTriggerMode:I

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string v22, "auto-off"

    move/from16 v19, v0

    invoke-static/range {v16 .. v22}, Lcom/android/camera/statistic/CameraStatUtil;->trackGeneralInfo(IZIIZLcom/android/camera/MutexModeManager;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v0, v1}, Lcom/android/camera/statistic/CameraStatUtil;->trackPictureTakenInWideSelfie(ILjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;->onSaveCompleted()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string p0, "WideSelfieModule"

    const-string v0, "onPreExecute"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_0

    const-string v0, "onPreExecute recordState is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart()V

    return-void
.end method
