.class public Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static final DEFAULT_CHANNELS:S = 0x1s

.field public static final RATE16K:I = 0x3e80

.field public static final READ_INTERVAL40MS:I = 0x28

.field private static final RECORD_BUFFER_TIMES_FOR_FRAME:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_BIT_SAMPLES:S

.field private checkDataSum:D

.field private checkStandDev:D

.field private volatile exit:Z

.field private mAudioSource:I

.field private mDataBuffer:[B

.field private mInterval:I

.field private mOutListener:Ljava/lang/ref/WeakReference;

.field private mRate:I

.field private mReadInterval:I

.field private mRecorder:Landroid/media/AudioRecord;

.field private mStopListener:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x10

    iput-short v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->DEFAULT_BIT_SAMPLES:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->exit:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkDataSum:D

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkStandDev:D

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRate:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mInterval:I

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mReadInterval:I

    iput p3, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mAudioSource:I

    iput p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRate:I

    iput p2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mInterval:I

    if-lt p2, v0, :cond_0

    const/16 p1, 0x64

    if-le p2, p1, :cond_1

    :cond_0
    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mInterval:I

    :cond_1
    const/16 p1, 0xa

    iput p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mReadInterval:I

    return-void
.end method

.method private checkAudio([BI)D
    .locals 9

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_2

    :cond_0
    array-length p0, p1

    const/4 p2, 0x0

    move v2, p2

    move-wide v3, v0

    :goto_0
    if-ge v2, p0, :cond_1

    aget-byte v5, p1, v2

    int-to-double v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p1

    int-to-double v5, p0

    div-double/2addr v3, v5

    array-length p0, p1

    :goto_1
    if-ge p2, p0, :cond_2

    aget-byte v2, p1, p2

    int-to-double v5, v2

    sub-double/2addr v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_2
    return-wide v0
.end method

.method private getVolume(I[B)D
    .locals 5

    array-length p0, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-byte v3, p2, v2

    mul-int/2addr v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x4034000000000000L    # 20.0

    cmpl-double p2, v0, p0

    if-lez p2, :cond_1

    sub-double/2addr v0, p0

    :cond_1
    return-wide v0
.end method

.method private readRecordData()I
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    invoke-static {v2, v0}, Lcom/android/camera/fragment/subtitle/recog/record/VolumeUtil;->computeVolume([BI)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    if-nez v3, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    invoke-interface {v3, p0, v1, v0, v2}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;->onRecordBuffer([BIII)V

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    sget-object p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record read data error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    invoke-interface {v1}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release record over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v1, "[finalize] release recoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected initRecord(SII)V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v1, "[initRecord] recoder release first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->release()V

    :cond_0
    mul-int/2addr p3, p2

    div-int/lit16 p3, p3, 0x3e8

    mul-int/lit8 v0, p3, 0x4

    mul-int/lit8 v0, v0, 0x10

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    invoke-static {p2, v3, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v10

    if-ge v0, v10, :cond_2

    move v0, v10

    :cond_2
    new-instance v11, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mAudioSource:I

    const/4 v8, 0x2

    move-object v4, v11

    move v6, p2

    move v7, v3

    move v9, v0

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v11, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    mul-int/2addr p1, p3

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    sget-object p1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nSampleRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nChannel:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nFormat:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nFramePeriod:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nBufferSize:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nMinBufferSize:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nActualBufferSize:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    array-length p2, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p0

    if-eq p0, v2, :cond_3

    sget-object p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string p1, "create AudioRecord error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->exit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v3, 0x28

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-nez v2, :cond_0

    :try_start_1
    iget v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRate:I

    iget v7, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mInterval:I

    invoke-virtual {p0, v6, v2, v7}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->initRecord(SII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    add-int/2addr v1, v6

    if-ge v1, v5, :cond_0

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    :goto_1
    move v1, v0

    :goto_2
    iget-boolean v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->exit:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_2

    :try_start_3
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    sget-object v2, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v7, "recorder state is not recoding"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    add-int/2addr v1, v6

    if-ge v1, v5, :cond_1

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v2, "recoder start failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    sget-object v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v2, "recoder start success "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v1, v6}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;->onRecordStarted(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_5
    :goto_4
    iget-boolean v3, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->exit:Z

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->readRecordData()I

    move-result v3

    if-eqz v6, :cond_8

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkDataSum:D

    int-to-double v7, v3

    add-double/2addr v4, v7

    iput-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkDataSum:D

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkStandDev:D

    iget-object v7, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    iget-object v8, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v7, v8}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkAudio([BI)D

    move-result-wide v7

    add-double/2addr v4, v7

    iput-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkStandDev:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v7, 0x3e8

    cmp-long v4, v4, v7

    if-ltz v4, :cond_8

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkDataSum:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->checkStandDev:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move v6, v0

    goto :goto_6

    :cond_7
    :goto_5
    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v1, "cannot get record permission, get invalid audio data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v4, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mDataBuffer:[B

    array-length v4, v4

    if-le v4, v3, :cond_5

    sget-object v4, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current record read size is less than buffer size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mReadInterval:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_9

    const/16 v1, 0x6f

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;->onError(I)V

    :cond_9
    :goto_7
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->release()V

    return-void
.end method

.method public startRecording(Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopRecord(Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->exit:Z

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mOutListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v2, "stopRecord...release"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-ne v0, p1, :cond_1

    sget-object p1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v0, "stopRecord releaseRecording ing..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    sget-object p1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string v0, "stopRecord releaseRecording end..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_3
    :try_start_4
    invoke-interface {p1}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->mStopListener:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :cond_5
    :goto_2
    sget-object p0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->TAG:Ljava/lang/String;

    const-string p1, "stop record"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
