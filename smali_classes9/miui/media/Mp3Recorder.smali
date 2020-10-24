.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source ""


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
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    :goto_0
    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Could not create event handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    :goto_1
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    return-void
.end method

.method static synthetic access$100(Lmiui/media/Mp3Recorder;)I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    return p0
.end method

.method static synthetic access$1000(Lmiui/media/Mp3Recorder;)[B
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    return-object p0
.end method

.method static synthetic access$1100(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    return-object p0
.end method

.method static synthetic access$1200(Lmiui/media/Mp3Recorder;)I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    return p0
.end method

.method static synthetic access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object p0
.end method

.method static synthetic access$1400(Lmiui/media/Mp3Recorder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1500(Lmiui/media/Mp3Recorder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1514(Lmiui/media/Mp3Recorder;J)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1600(Lmiui/media/Mp3Recorder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$1700(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/media/Mp3Recorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->notifyError(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic access$400(Lmiui/media/Mp3Recorder;)[S
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    return-object p0
.end method

.method static synthetic access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$614(Lmiui/media/Mp3Recorder;J)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    return-wide v0
.end method

.method static synthetic access$702(Lmiui/media/Mp3Recorder;I)I
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return p1
.end method

.method static synthetic access$800(Lmiui/media/Mp3Recorder;[SI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lmiui/media/Mp3Recorder;)I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    return p0
.end method

.method private findMaxAmplitude([SI)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge p0, p2, :cond_2

    aget-short v1, p1, p0

    if-gez v1, :cond_0

    aget-short v1, p1, p0

    neg-int v1, v1

    goto :goto_1

    :cond_0
    aget-short v1, p1, p0

    :goto_1
    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private notifyError(I)V
    .locals 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result p0

    const-string v0, "Mp3Recorder"

    if-eqz p0, :cond_0

    sget-object p0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setParameters: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Do not support extra parameters"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return p0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget p0, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .locals 0

    sget-object p0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget p0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized pause()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .locals 9

    iget v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    const-string v1, "Mp3Recorder"

    if-ltz v0, :cond_2

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

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
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

    const-string p0, "Mp3Recorder prepared"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "Error when getting min buffer size"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not calculate the min buffer size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v1, "Mp3Recorder"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v0, "AudioRecord released"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    invoke-virtual {p0}, Lmiui/media/Mp3Encoder;->close()I

    const-string p0, "Mp3Recorder released"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

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
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

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

    if-ne v0, v1, :cond_0

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioChannel(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Do not support extra parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr p1, v0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    return-void
.end method

.method public setVBRQuality(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v0, :cond_2

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

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

    if-ne v0, v1, :cond_0

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

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
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

    :cond_1
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lmiui/media/Mp3Encoder;->flush([BI)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v0, :cond_4

    :try_start_3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iget v0, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    if-ltz v0, :cond_3

    iget v0, p0, Lmiui/media/Mp3Recorder;->mVBRQuality:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->writeVBRHeader(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer flush must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be written when flush"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    goto :goto_3

    :cond_5
    :goto_5
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-void

    :goto_6
    :try_start_a
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    :catch_4
    move-exception v1

    :try_start_b
    const-string v2, "Mp3Recorder"

    const-string v3, "Error file cannot be closed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
