.class Lmiui/media/LocalWavRecorder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/media/Recorder;


# static fields
.field private static final AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

.field private static final EVENT_ERROR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "WavRecorder"

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_STOPED:I = 0x4


# instance fields
.field private final OFFSET_WAVE_HEADER_AUDIO_DATA_LENGTH:I

.field private final OFFSET_WAVE_HEADER_DATA_LENGTH:I

.field private final WAVE_HEADER_LENGTH:I

.field private mAudioChannel:I

.field private mAudioSource:I

.field private mBufferPCM:[S

.field private mChannelCount:I

.field private mCountRecordingSamples:J

.field private mCurrentRecordingSize:J

.field private mEventHandler:Landroid/os/Handler;

.field private mMaxAmplitude:I

.field private mMaxFileSize:J

.field private mMinBufferSize:I

.field private mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

.field private mOutputFile:Ljava/io/File;

.field private mOutputFilePath:Ljava/lang/String;

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mParams:Ljava/lang/String;

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecordingState:I

.field private mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    iput v0, p0, Lmiui/media/LocalWavRecorder;->WAVE_HEADER_LENGTH:I

    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/LocalWavRecorder;->OFFSET_WAVE_HEADER_DATA_LENGTH:I

    const/16 v0, 0x28

    iput v0, p0, Lmiui/media/LocalWavRecorder;->OFFSET_WAVE_HEADER_AUDIO_DATA_LENGTH:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lmiui/media/LocalWavRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/LocalWavRecorder$EventHandler;-><init>(Lmiui/media/LocalWavRecorder;Landroid/os/Looper;)V

    :goto_0
    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lmiui/media/LocalWavRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/LocalWavRecorder$EventHandler;-><init>(Lmiui/media/LocalWavRecorder;Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    const-string v0, "WavRecorder"

    const-string v1, "Could not create event handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mEventHandler:Landroid/os/Handler;

    :goto_1
    invoke-virtual {p0}, Lmiui/media/LocalWavRecorder;->reset()V

    return-void
.end method

.method static synthetic access$100(Lmiui/media/LocalWavRecorder;)I
    .locals 0

    iget p0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    return p0
.end method

.method static synthetic access$1000(Lmiui/media/LocalWavRecorder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1014(Lmiui/media/LocalWavRecorder;J)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1100(Lmiui/media/LocalWavRecorder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$1200(Lmiui/media/LocalWavRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->mOutputFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lmiui/media/LocalWavRecorder;)Lmiui/media/Recorder$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/media/LocalWavRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/media/LocalWavRecorder;->notifyError(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;
    .locals 0

    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->mOutputStream:Ljava/io/DataOutputStream;

    return-object p0
.end method

.method static synthetic access$400(Lmiui/media/LocalWavRecorder;)[S
    .locals 0

    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->mBufferPCM:[S

    return-object p0
.end method

.method static synthetic access$500(Lmiui/media/LocalWavRecorder;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$614(Lmiui/media/LocalWavRecorder;J)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    return-wide v0
.end method

.method static synthetic access$702(Lmiui/media/LocalWavRecorder;I)I
    .locals 0

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mMaxAmplitude:I

    return p1
.end method

.method static synthetic access$800(Lmiui/media/LocalWavRecorder;[SI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/media/LocalWavRecorder;->findMaxAmplitude([SI)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lmiui/media/LocalWavRecorder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;

    return-object p0
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

    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->mEventHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result p0

    const-string v0, "WavRecorder"

    if-eqz p0, :cond_0

    sget-object p0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

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

.method private updateWaveHeader()V
    .locals 13

    const-string v0, "file close"

    const-string v1, "WavRecorder"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x2c

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    const/4 v5, 0x4

    iget-wide v6, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    const-wide/16 v8, 0x24

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lmiui/media/RecorderUtils;->getBytes(J)[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmiui/media/RecorderUtils;->updateBytes(Ljava/nio/MappedByteBuffer;I[B)V

    const/16 v5, 0x28

    iget-wide v6, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    invoke-static {v6, v7}, Lmiui/media/RecorderUtils;->getBytes(J)[B

    move-result-object p0

    invoke-static {v4, v5, p0}, Lmiui/media/RecorderUtils;->updateBytes(Ljava/nio/MappedByteBuffer;I[B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v3, v2

    :goto_0
    :try_start_3
    const-string v4, "IOException"

    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v3, v2

    :goto_1
    :try_start_5
    const-string v4, "FileNotFoundException"

    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :goto_3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_4
    return-void

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_6

    :catch_5
    move-exception v2

    goto :goto_7

    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :goto_7
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_8
    throw p0
.end method


# virtual methods
.method public canPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getMaxAmplitude()I
    .locals 0

    iget p0, p0, Lmiui/media/LocalWavRecorder;->mMaxAmplitude:I

    return p0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    mul-int/lit8 v2, v2, 0x2

    iget p0, p0, Lmiui/media/LocalWavRecorder;->mChannelCount:I

    mul-int/2addr v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .locals 0

    sget-object p0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget p0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

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
    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "WavRecorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder paused"

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

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    iget v1, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mMinBufferSize:I

    const-string v1, "WavRecorder"

    if-ltz v0, :cond_1

    mul-int/2addr v0, v2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mBufferPCM:[S

    new-instance v0, Landroid/media/AudioRecord;

    iget v4, p0, Lmiui/media/LocalWavRecorder;->mAudioSource:I

    iget v5, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    iget v6, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    const/4 v7, 0x2

    iget-object v3, p0, Lmiui/media/LocalWavRecorder;->mBufferPCM:[S

    array-length v8, v3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v3, p0, Lmiui/media/LocalWavRecorder;->mParams:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lmiui/media/LocalWavRecorder;->prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V

    const-string v0, "Apply new AudioRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput v2, p0, Lmiui/media/LocalWavRecorder;->mChannelCount:I

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;

    iput v4, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const-string p0, "WAVRecorder prepared"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "Error when getting min buffer size"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not calculate the min buffer size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v1, "WavRecorder"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string p0, "AudioRecord released"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "WAVRecorder released"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iput v1, p0, Lmiui/media/LocalWavRecorder;->mAudioSource:I

    const v1, 0xac44

    iput v1, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    const/16 v1, 0x10

    iput v1, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    return-void
.end method

.method public declared-synchronized resume()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/media/AudioRecord;

    iget v3, p0, Lmiui/media/LocalWavRecorder;->mAudioSource:I

    iget v4, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    iget v5, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    const/4 v6, 0x2

    iget-object v2, p0, Lmiui/media/LocalWavRecorder;->mBufferPCM:[S

    array-length v7, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v0, "WavRecorder"

    const-string v2, "Apply new AudioRecord"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder;->mParams:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lmiui/media/LocalWavRecorder;->prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    new-instance v0, Lmiui/media/LocalWavRecorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder resumed"

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
    const-string v0, "WavRecorder"

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

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 0

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 0

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mAudioSource:I

    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->mParams:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Do not support extra parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDuration(I)V
    .locals 2

    if-lez p1, :cond_0

    div-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x10

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mChannelCount:I

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x8

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

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
    iput-wide p1, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->mOutputFilePath:Ljava/lang/String;

    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-nez v0, :cond_2

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    iput-wide v2, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    iput v1, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->mOutputStream:Ljava/io/DataOutputStream;

    const-string v1, "WavRecorder"

    const-string v2, "AudioRecord started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    iget v2, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    invoke-static {v1, v2}, Lmiui/media/RecorderUtils;->getWaveHeader(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v0, Lmiui/media/LocalWavRecorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wav record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "WavRecorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "WavRecorder"

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
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WavRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "WavRecorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "WavRecorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lmiui/media/LocalWavRecorder;->updateWaveHeader()V

    const-string v0, "WavRecorder"

    const-string v1, "WavRecorder stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
