.class public Lcom/android/camera/AudioCalculateDecibels;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final DEF_AUDIO_FILE:Ljava/lang/String; = "audio_test.pcm"

.field public static final DEF_VOLUME_SIZE:F = 25.0f

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final TAG:Ljava/lang/String; = "AudioCalculateDecibels"


# instance fields
.field private mAudioDataOs:Ljava/io/FileOutputStream;

.field private mAudioFileName:Ljava/lang/String;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioSource:I

.field private mBuffer:[B

.field private mCacheDir:Ljava/lang/String;

.field private mOnVolumeListener:Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

.field private mRecBufSize:I

.field private mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mCacheDir:Ljava/lang/String;

    const p2, 0xac44

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    const/16 v0, 0x2000

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/camera/AudioCalculateDecibels;->mBuffer:[B

    iput p1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioSource:I

    new-instance p1, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioSource:I

    iget v5, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    const v2, 0xac44

    const/4 v3, 0x3

    const/4 v4, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AudioCalculateDecibels;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/AudioCalculateDecibels;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mBuffer:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/AudioCalculateDecibels;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/AudioCalculateDecibels;[B)[F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/AudioCalculateDecibels;->calculateVolumeSize([B)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/AudioCalculateDecibels;)Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mOnVolumeListener:Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/AudioCalculateDecibels;)Ljava/io/FileOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioDataOs:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method private calculateVolumeSize([B)[F
    .locals 9

    const/4 p0, 0x2

    new-array p0, p0, [F

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v4, v0, :cond_2

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v4, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    shl-int/lit8 v6, v8, 0x8

    add-int/2addr v7, v6

    const v6, 0xffff

    const v8, 0x8000

    if-lt v5, v8, :cond_0

    sub-int v5, v6, v5

    :cond_0
    if-lt v7, v8, :cond_1

    sub-int v7, v6, v7

    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_2
    int-to-float p1, v0

    div-float/2addr v2, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr v2, v0

    div-float/2addr v3, p1

    div-float/2addr v3, v0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v2, p1

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v0, v2

    add-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    double-to-float p1, v3

    mul-float/2addr p1, v2

    aput v0, p0, v1

    const/4 v0, 0x1

    aput p1, p0, v0

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 3

    const-string v0, "AudioCalculateDecibels"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/AudioCalculateDecibels;->stopRecord()V

    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    const-string p0, "release record..."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnVolumeListener(Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AudioCalculateDecibels;->mOnVolumeListener:Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mCacheDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "audio_test.pcm"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioFileName:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioDataOs:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioSource:I

    const v3, 0xac44

    const/4 v4, 0x2

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/camera/AudioCalculateDecibels;->mRecBufSize:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_3
    const-string v0, "AudioCalculateDecibels"

    const-string v1, "start record..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    new-instance v0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;-><init>(Lcom/android/camera/AudioCalculateDecibels;Lcom/android/camera/AudioCalculateDecibels$1;)V

    iput-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/AudioCalculateDecibels;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRecord()V
    .locals 3

    const-string v0, "AudioCalculateDecibels"

    const-string v1, "stopRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->setIsStopRecordThread(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/android/camera/AudioCalculateDecibels;->mRunnale:Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;

    const-string p0, "stop record..."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
