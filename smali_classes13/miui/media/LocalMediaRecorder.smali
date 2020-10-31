.class Lmiui/media/LocalMediaRecorder;
.super Ljava/lang/Object;
.source "LocalMediaRecorder.java"

# interfaces
.implements Lmiui/media/Recorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/LocalMediaRecorder$RecorderAppendThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Media:LocalMediaRecorder"

.field private static final setParameter:Lmiui/reflect/Method;


# instance fields
.field private mAudioEncoder:I

.field private mAudioSource:I

.field private mBitRate:I

.field private mDestFilePath:Ljava/lang/String;

.field private mExtraParameter:Ljava/lang/String;

.field private mIsPaused:Z

.field private mMaxDuration:I

.field private mMaxSize:J

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNumChannels:I

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mOutputFormat:I

.field private mRecorderAppendThread:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

.field private mRecorderAppendWriteFd:Landroid/os/ParcelFileDescriptor;

.field private mRecorderOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

.field private mRecordingDuration:I

.field private mSamplingRate:I

.field private mSizeRecored:J

.field private mStartTime:J

.field private mSyncer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/media/MediaRecorder;

    const-string v2, "setParameter"

    const-string v3, "(Ljava/lang/String;)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1
    :try_end_b
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    goto :goto_15

    :catch_d
    move-exception v1

    const-string v2, "Media:LocalMediaRecorder"

    const-string v3, "Could not get method:setParameter"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    sput-object v0, Lmiui/media/LocalMediaRecorder;->setParameter:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->mAudioSource:I

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->mSamplingRate:I

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->mOutputFormat:I

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->mAudioEncoder:I

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->mBitRate:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->mMaxSize:J

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->mMaxDuration:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->mSizeRecored:J

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->mNumChannels:I

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->mStartTime:J

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method static synthetic access$000(Lmiui/media/LocalMediaRecorder;)Lmiui/media/Recorder$OnErrorListener;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mRecorderOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/media/LocalMediaRecorder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mDestFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private setExtraParametersLocal(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lmiui/media/LocalMediaRecorder;->setParameter:Lmiui/reflect/Method;

    if-eqz v0, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lmiui/media/LocalMediaRecorder;->setParameter:Lmiui/reflect/Method;

    const-class v1, Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method private waitingForAppendThread()V
    .registers 5

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendThread:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    if-eqz v0, :cond_31

    # getter for: Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->access$200(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    :goto_9
    :try_start_9
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendThread:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    # getter for: Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->access$200(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_2e

    if-eqz v1, :cond_29

    :try_start_15
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendThread:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    # getter for: Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->access$200(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2e

    goto :goto_9

    :catch_1f
    move-exception v1

    :try_start_20
    const-string v2, "Media:LocalMediaRecorder"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_9

    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendThread:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    goto :goto_31

    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 3

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    monitor-exit v0

    return v1

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method protected getHeaderLen()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxAmplitude()I
    .registers 3

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->mIsPaused:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    :cond_9
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    :goto_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getRecordingTimeInMillis()J
    .registers 5

    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lmiui/media/LocalMediaRecorder;->mRecordingDuration:I

    int-to-long v0, v0

    goto :goto_15

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/media/LocalMediaRecorder;->mStartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lmiui/media/LocalMediaRecorder;->mRecordingDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_15
    return-wide v0
.end method

.method public isPaused()Z
    .registers 3

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->mIsPaused:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public pause()V
    .registers 8

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->mIsPaused:Z

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mRecordingDuration:I

    int-to-long v1, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lmiui/media/LocalMediaRecorder;->mStartTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mRecordingDuration:I

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendWriteFd:Landroid/os/ParcelFileDescriptor;
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_45

    if-eqz v1, :cond_36

    :try_start_25
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendWriteFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_2f
    .catchall {:try_start_25 .. :try_end_2a} :catchall_45

    nop

    :try_start_2b
    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;->waitingForAppendThread()V

    goto :goto_36

    :catch_2f
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_36
    :goto_36
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mDestFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->mSizeRecored:J

    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_45

    throw v1
.end method

.method public prepare()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->resetParameters()V

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->resetParameters()V

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method protected resetParameters()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mDestFilePath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mExtraParameter:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mAudioSource:I

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mSamplingRate:I

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mAudioEncoder:I

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mOutputFormat:I

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mBitRate:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/media/LocalMediaRecorder;->mMaxSize:J

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mNumChannels:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->mSizeRecored:J

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->mRecorderOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    return-void
.end method

.method public resume()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->mIsPaused:Z

    if-eqz v1, :cond_c6

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mExtraParameter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mExtraParameter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/media/LocalMediaRecorder;->setExtraParameters(Ljava/lang/String;)V

    :cond_1b
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mAudioSource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->mAudioSource:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_27
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mSamplingRate:I

    if-eq v1, v2, :cond_32

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->mSamplingRate:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_32
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mOutputFormat:I

    if-eq v1, v2, :cond_3d

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->mOutputFormat:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :cond_3d
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mAudioEncoder:I

    if-eq v1, v2, :cond_48

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->mAudioEncoder:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_48
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mBitRate:I

    if-eq v1, v2, :cond_53

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->mBitRate:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :cond_53
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mNumChannels:I

    if-eq v1, v2, :cond_5e

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->mNumChannels:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :cond_5e
    iget-wide v3, p0, Lmiui/media/LocalMediaRecorder;->mMaxSize:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_70

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v3, p0, Lmiui/media/LocalMediaRecorder;->mMaxSize:J

    iget-wide v5, p0, Lmiui/media/LocalMediaRecorder;->mSizeRecored:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_70
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->mMaxDuration:I

    if-eq v1, v2, :cond_7b

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Lmiui/media/LocalMediaRecorder;->mMaxDuration:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_7b
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :cond_86
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    :cond_91
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendWriteFd:Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-direct {v2, p0, v4}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;-><init>(Lmiui/media/LocalMediaRecorder;Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendThread:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendWriteFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendThread:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    invoke-virtual {v2}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->start()V

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    iput-boolean v3, p0, Lmiui/media/LocalMediaRecorder;->mIsPaused:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/media/LocalMediaRecorder;->mStartTime:J

    :cond_c6
    monitor-exit v0

    return-void

    :catchall_c8
    move-exception v1

    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_3 .. :try_end_ca} :catchall_c8

    throw v1
.end method

.method public setAudioChannel(I)V
    .registers 5

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_b

    const/4 v1, 0x1

    :try_start_8
    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mNumChannels:I

    goto :goto_e

    :cond_b
    const/4 v1, 0x2

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mNumChannels:I

    :goto_e
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Lmiui/media/LocalMediaRecorder;->mNumChannels:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setAudioEncoder(I)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->mAudioEncoder:I

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->mBitRate:I

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setAudioSamplingRate(I)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->mSamplingRate:I

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setAudioSource(I)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->mAudioSource:I

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->mExtraParameter:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/media/LocalMediaRecorder;->setExtraParametersLocal(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setMaxDuration(I)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->mMaxDuration:I

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setMaxFileSize(J)V
    .registers 5

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-wide p1, p0, Lmiui/media/LocalMediaRecorder;->mMaxSize:J

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .registers 3

    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->mRecorderOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    new-instance v0, Lmiui/media/LocalMediaRecorder$1;

    invoke-direct {v0, p0}, Lmiui/media/LocalMediaRecorder$1;-><init>(Lmiui/media/LocalMediaRecorder;)V

    invoke-virtual {p0, v0}, Lmiui/media/LocalMediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    new-instance v0, Lmiui/media/LocalMediaRecorder$2;

    invoke-direct {v0, p0}, Lmiui/media/LocalMediaRecorder$2;-><init>(Lmiui/media/LocalMediaRecorder;)V

    invoke-virtual {p0, v0}, Lmiui/media/LocalMediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->mDestFilePath:Ljava/lang/String;

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setOutputFormat(I)V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->mOutputFormat:I

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setQuality(I)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->mStartTime:J

    const/4 v1, 0x0

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->mRecordingDuration:I

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->resetParameters()V

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendWriteFd:Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_29

    if-eqz v1, :cond_24

    :try_start_13
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->mRecorderAppendWriteFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_1d
    .catchall {:try_start_13 .. :try_end_18} :catchall_29

    nop

    :try_start_19
    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;->waitingForAppendThread()V

    goto :goto_24

    :catch_1d
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_24
    :goto_24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->mIsPaused:Z

    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v1
.end method
