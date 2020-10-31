.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/Mp3Recorder$EventHandler;,
        Lmiui/media/Mp3Recorder$RecordingThread;,
        Lmiui/media/Mp3Recorder$RecordingErrorListener;
    }
.end annotation


# static fields
.field private static final AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

.field public static final ERR_COULD_NOT_START:I = 0x6

.field public static final ERR_ENCODE_PCM_FAILED:I = 0x4

.field public static final ERR_FILE_NOT_EXIST:I = 0x8

.field public static final ERR_ILLEGAL_STATE:I = 0x1

.field public static final ERR_MAX_SIZE_REACHED:I = 0x7

.field public static final ERR_OUT_STREAM_NOT_READY:I = 0x2

.field public static final ERR_RECORD_PCM_FAILED:I = 0x3

.field public static final ERR_WRITE_TO_FILE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "Mp3Recorder"

.field private static final MP3_RECORDER_EVENT_ERROR:I = 0x1

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_STOPED:I = 0x4

.field public static final VBR_QUALITY_HIGH:I = 0x2

.field public static final VBR_QUALITY_LOW:I = 0x9

.field public static final VBR_QUALITY_MEDIUM:I = 0x6


# instance fields
.field private bufferMP3:[B

.field private bufferPCM:[S

.field private mAudioChannel:I

.field private mAudioSource:I

.field private mChannelCount:I

.field private mCountRecordingSamples:J

.field private mCurrentRecordingSize:J

.field private mEventHandler:Landroid/os/Handler;

.field private mMaxAmplitude:I

.field private mMaxFileSize:J

.field private mMinBufferSize:I

.field private mMp3Encoder:Lmiui/media/Mp3Encoder;

.field private mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

.field private mOutBitRate:I

.field private mOutMode:I

.field private mOutputFile:Ljava/io/File;

.field private mOutputFilePath:Ljava/lang/String;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mParams:Ljava/lang/String;

.field private mQuality:I

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecordingState:I

.field private mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

.field private mSampleRate:I

.field private mVBRQuality:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_12

    new-instance v0, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_2b

    :cond_12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_21

    new-instance v0, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_2b

    :cond_21
    const-string v0, "Mp3Recorder"

    const-string v2, "Could not create event handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    :goto_2b
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    return-void
.end method

.method static synthetic access$100(Lmiui/media/Mp3Recorder;)I
    .registers 2

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    return v0
.end method

.method static synthetic access$1000(Lmiui/media/Mp3Recorder;)[B
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/media/Mp3Recorder;)I
    .registers 2

    iget v0, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    return v0
.end method

.method static synthetic access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/media/Mp3Recorder;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1500(Lmiui/media/Mp3Recorder;)J
    .registers 3

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1514(Lmiui/media/Mp3Recorder;J)J
    .registers 5

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1600(Lmiui/media/Mp3Recorder;)J
    .registers 3

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$1700(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/media/Mp3Recorder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->notifyError(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/media/Mp3Recorder;)[S
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    return-object v0
.end method

.method static synthetic access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .registers 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$614(Lmiui/media/Mp3Recorder;J)J
    .registers 5

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    return-wide v0
.end method

.method static synthetic access$702(Lmiui/media/Mp3Recorder;I)I
    .registers 2

    iput p1, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return p1
.end method

.method static synthetic access$800(Lmiui/media/Mp3Recorder;[SI)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/media/Mp3Recorder;)I
    .registers 2

    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    return v0
.end method

.method private findMaxAmplitude([SI)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_14

    aget-short v2, p1, v1

    if-gez v2, :cond_c

    aget-short v2, p1, v1

    neg-int v2, v2

    goto :goto_e

    :cond_c
    aget-short v2, p1, v1

    :goto_e
    if-le v2, v0, :cond_11

    move v0, v2

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method private notifyError(I)V
    .registers 4

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method

.method private prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    const-string v1, "Mp3Recorder"

    if-eqz v0, :cond_2b

    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_2b
    const-string v0, "Do not support extra parameters"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public getMaxAmplitude()I
    .registers 2

    iget v0, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .registers 3

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .registers 5

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget v2, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .registers 2

    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .registers 3

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public declared-synchronized pause()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v0, :cond_3f

    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_47

    :try_start_d
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_47

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_47

    monitor-exit p0

    return-void

    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    const-string v1, "Mp3Recorder"

    if-ltz v0, :cond_9d

    mul-int/2addr v0, v2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    new-instance v0, Landroid/media/AudioRecord;

    iget v4, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v6, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v7, 0x2

    iget-object v3, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v8, v3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lmiui/media/Mp3Recorder;->prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V

    const-string v0, "Apply new AudioRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_38

    const/4 v0, 0x0

    goto :goto_39

    :cond_38
    const/4 v0, 0x3

    :goto_39
    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_41

    goto :goto_42

    :cond_41
    move v2, v4

    :goto_42
    iput v2, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    const-wide v2, 0x40bc200000000000L    # 7200.0

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v0, v0

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v5, v7

    add-double/2addr v5, v2

    double-to-int v0, v5

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setInSampleRate(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutMode(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setChannelCount(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutSampleRate(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutBitRate(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setQuality(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setVBRQuality(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->init()Z

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    iput v4, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const-string v0, "Mp3Recorder prepared"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9d
    const-string v0, "Error when getting min buffer size"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v1, "Mp3Recorder"

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v0, "AudioRecord released"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->close()I

    const-string v0, "Mp3Recorder released"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iput v1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    const v1, 0xac44

    iput v1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    const/16 v1, 0x10

    iput v1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    iput v0, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    new-instance v0, Lmiui/media/Mp3Encoder;

    invoke-direct {v0}, Lmiui/media/Mp3Encoder;-><init>()V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    return-void
.end method

.method public declared-synchronized resume()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

    new-instance v0, Landroid/media/AudioRecord;

    iget v3, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v4, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v6, 0x2

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v7, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v0, "Mp3Recorder"

    const-string v2, "Apply new AudioRecord"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lmiui/media/Mp3Recorder;->prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v1, :cond_51

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_68

    monitor-exit p0

    return-void

    :cond_51
    :try_start_51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioChannel(I)V
    .registers 2

    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .registers 2

    iput p1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    return-void
.end method

.method public setAudioSource(I)V
    .registers 2

    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not support extra parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxDuration(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    iget v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_16

    :cond_f
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    :goto_16
    return-void
.end method

.method public setMaxFileSize(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_10

    :cond_9
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    :goto_10
    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-void
.end method

.method public setOutBitRate(I)V
    .registers 2

    iput p1, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    return-void
.end method

.method public setQuality(I)V
    .registers 2

    iput p1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    return-void
.end method

.method public setVBRQuality(I)V
    .registers 2

    iput p1, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    return-void
.end method

.method public declared-synchronized start()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v0, :cond_60

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_60

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_51

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_6f

    monitor-exit p0

    return-void

    :cond_49
    :try_start_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_3d

    :cond_c
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder shoul not be stopped in state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_3d
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_fc

    :try_start_40
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_51} :catch_52
    .catchall {:try_start_40 .. :try_end_51} :catchall_fc

    :cond_51
    goto :goto_5a

    :catch_52
    move-exception v0

    :try_start_53
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lmiui/media/Mp3Encoder;->flush([BI)I

    move-result v0
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_fc

    if-lez v0, :cond_a3

    :try_start_6a
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iget v1, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    if-ltz v1, :cond_83

    iget v1, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_83

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/media/Mp3Encoder;->writeVBRHeader(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_83} :catch_a1
    .catchall {:try_start_6a .. :try_end_83} :catchall_9f

    :cond_83
    :try_start_83
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_88} :catch_89
    .catchall {:try_start_83 .. :try_end_88} :catchall_fc

    goto :goto_91

    :catch_89
    move-exception v1

    :try_start_8a
    const-string v2, "Mp3Recorder"

    const-string v3, "Error file cannot be closed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_91
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"
    :try_end_9e
    .catchall {:try_start_8a .. :try_end_9e} :catchall_fc

    goto :goto_d0

    :catchall_9f
    move-exception v1

    goto :goto_dd

    :catch_a1
    move-exception v1

    goto :goto_ae

    :cond_a3
    :try_start_a3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Buffer flush must greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ab} :catch_ad
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v1

    goto :goto_dd

    :catch_ad
    move-exception v1

    :goto_ae
    :try_start_ae
    const-string v2, "Mp3Recorder"

    const-string v3, "Error file cannot be written when flush"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_9f

    :try_start_b5
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_ba} :catch_bb
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_fc

    goto :goto_c3

    :catch_bb
    move-exception v1

    :try_start_bc
    const-string v2, "Mp3Recorder"

    const-string v3, "Error file cannot be closed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    :goto_d0
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    const-string v1, "Mp3Recorder"

    const-string v2, "Mp3Recorder stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_bc .. :try_end_da} :catchall_fc

    nop

    monitor-exit p0

    return-void

    :goto_dd
    :try_start_dd
    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e2} :catch_e3
    .catchall {:try_start_dd .. :try_end_e2} :catchall_fc

    goto :goto_eb

    :catch_e3
    move-exception v2

    :try_start_e4
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be closed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_eb
    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_fb

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    const-string v2, "Mp3Recorder"

    const-string v3, "AudioRecord stoped"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    throw v1
    :try_end_fc
    .catchall {:try_start_e4 .. :try_end_fc} :catchall_fc

    :catchall_fc
    move-exception v0

    monitor-exit p0

    throw v0
.end method
