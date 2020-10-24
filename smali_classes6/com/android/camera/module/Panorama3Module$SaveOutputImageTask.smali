.class Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private mSaveImage:Z

.field private mStopMode:Ljava/lang/String;

.field private start_time:J

.field final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mSaveImage:Z

    iput-object p3, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    return-void
.end method

.method private savePanoramaPicture()V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "Panorama3Module"

    const-string v3, "savePanoramaPicture start"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x600

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "Panorama3Module"

    const-string v5, "savePanoramaPicture enter mEngineLock"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Panorama3Module"

    const-string v1, "savePanoramaPicture while mMorphoPanoramaGP3 is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget-boolean v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mSaveImage:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    const-string v0, "Panorama3Module"

    const-string v1, "savePanoramaPicture, don\'t save image"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/panorama/RoundDetector;->currentDegree0Base()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->end(ID)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "Panorama3Module"

    const-string v2, "savePanoramaPicture, end() -> 0x%x"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setNoiseReductionParam(I)I

    move-result v4

    if-eqz v4, :cond_3

    const-string v7, "Panorama3Module"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNoiseReductionParam error ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUnsharpStrength(I)I

    move-result v2

    if-eqz v2, :cond_4

    const-string v4, "Panorama3Module"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "setUnsharpStrength error ret:0x%08X"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/panorama/RoundDetector;->currentDegree0Base()I

    move-result v4

    int-to-double v7, v4

    invoke-virtual {v2, v5, v7, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->end(ID)I

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "Panorama3Module"

    const-string v1, "savePanoramaPicture, end() -> 0x%x"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :cond_5
    :try_start_6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "Panorama3Module"

    const-string v1, "getClippingRect() -> 0x%x"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :cond_6
    :try_start_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eqz v10, :cond_a

    if-nez v11, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->createOutputImage(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "Panorama3Module"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOutputImage error ret:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :cond_8
    :try_start_a
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2, v8, v10, v11}, Lcom/android/camera/module/Panorama3Module;->access$1000(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;II)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v2, :cond_9

    :try_start_b
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-void

    :cond_9
    :try_start_c
    const-string v2, "Panorama3Module"

    const-string v4, "savePanoramaPicture process duration %s ms"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v6

    invoke-static {v2, v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v7, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->mStopMode:Ljava/lang/String;

    invoke-static/range {v7 .. v13}, Lcom/android/camera/module/Panorama3Module;->access$1100(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v6

    const-string v0, "Panorama3Module"

    const-string v1, "savePanoramaPicture total duration %s ms"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_a
    :goto_0
    :try_start_e
    const-string v0, "Panorama3Module"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClippingRect() "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)V

    throw v0

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    const-string p1, "Panorama3Module"

    const-string v0, "doInBackground>>"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->savePanoramaPicture()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7

    const-string p1, "Panorama3Module"

    const-string v0, "PanoramaFinish done"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-boolean v1, v1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0, v2}, Lcom/android/camera/module/Panorama3Module;->access$1302(Lcom/android/camera/module/Panorama3Module;Z)Z

    const-string p0, "panorama mode has been paused"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask$1;

    invoke-direct {v3, p0}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask$1;-><init>(Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, v2}, Lcom/android/camera/module/Panorama3Module;->access$1302(Lcom/android/camera/module/Panorama3Module;Z)Z

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->start_time:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "[MORTIME] PanoramaFinish time = %d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;->start_time:J

    return-void
.end method
