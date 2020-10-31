.class Lmiui/media/LocalWavRecorder;
.super Ljava/lang/Object;
.source "LocalWavRecorder.java"

# interfaces
.implements Lmiui/media/Recorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/LocalWavRecorder$EventHandler;,
        Lmiui/media/LocalWavRecorder$RecordingThread;
    }
.end annotation


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
    .registers 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    iput v0, p0, Lmiui/media/LocalWavRecorder;->WAVE_HEADER_LENGTH:I

    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/LocalWavRecorder;->OFFSET_WAVE_HEADER_DATA_LENGTH:I

    const/16 v0, 0x28

    iput v0, p0, Lmiui/media/LocalWavRecorder;->OFFSET_WAVE_HEADER_AUDIO_DATA_LENGTH:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1d

    new-instance v0, Lmiui/media/LocalWavRecorder$EventHandler;

    invoke-direct {v0, p0, v1}, Lmiui/media/LocalWavRecorder$EventHandler;-><init>(Lmiui/media/LocalWavRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_36

    :cond_1d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_2c

    new-instance v0, Lmiui/media/LocalWavRecorder$EventHandler;

    invoke-direct {v0, p0, v1}, Lmiui/media/LocalWavRecorder$EventHandler;-><init>(Lmiui/media/LocalWavRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_36

    :cond_2c
    const-string v0, "WavRecorder"

    const-string v2, "Could not create event handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mEventHandler:Landroid/os/Handler;

    :goto_36
    invoke-virtual {p0}, Lmiui/media/LocalWavRecorder;->reset()V

    return-void
.end method

.method static synthetic access$100(Lmiui/media/LocalWavRecorder;)I
    .registers 2

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    return v0
.end method

.method static synthetic access$1000(Lmiui/media/LocalWavRecorder;)J
    .registers 3

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1014(Lmiui/media/LocalWavRecorder;J)J
    .registers 5

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1100(Lmiui/media/LocalWavRecorder;)J
    .registers 3

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$1200(Lmiui/media/LocalWavRecorder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mOutputFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lmiui/media/LocalWavRecorder;)Lmiui/media/Recorder$OnErrorListener;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/media/LocalWavRecorder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/media/LocalWavRecorder;->notifyError(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mOutputStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/media/LocalWavRecorder;)[S
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mBufferPCM:[S

    return-object v0
.end method

.method static synthetic access$500(Lmiui/media/LocalWavRecorder;)Landroid/media/AudioRecord;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$614(Lmiui/media/LocalWavRecorder;J)J
    .registers 5

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    return-wide v0
.end method

.method static synthetic access$702(Lmiui/media/LocalWavRecorder;I)I
    .registers 2

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mMaxAmplitude:I

    return p1
.end method

.method static synthetic access$800(Lmiui/media/LocalWavRecorder;[SI)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/media/LocalWavRecorder;->findMaxAmplitude([SI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/media/LocalWavRecorder;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;

    return-object v0
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
    .registers 5

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_d
    return-void
.end method

.method private prepareExtraParameters(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    const-string v1, "WavRecorder"

    if-eqz v0, :cond_2b

    sget-object v0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

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

.method private updateWaveHeader()V
    .registers 12

    const-string v0, "file close"

    const-string v1, "WavRecorder"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v3, v4

    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x2c

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

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

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmiui/media/RecorderUtils;->updateBytes(Ljava/nio/MappedByteBuffer;I[B)V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_38} :catch_5a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_38} :catch_49
    .catchall {:try_start_6 .. :try_end_38} :catchall_47

    nop

    :try_start_39
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    goto :goto_6b

    :catch_42
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    :catchall_47
    move-exception v4

    goto :goto_6c

    :catch_49
    move-exception v4

    :try_start_4a
    const-string v5, "IOException"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_47

    if-eqz v2, :cond_54

    :try_start_51
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_54
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_59} :catch_42

    goto :goto_41

    :catch_5a
    move-exception v4

    :try_start_5b
    const-string v5, "FileNotFoundException"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_47

    if-eqz v2, :cond_65

    :try_start_62
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_65
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6a} :catch_42

    goto :goto_41

    :goto_6b
    return-void

    :goto_6c
    if-eqz v2, :cond_74

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_74

    :catch_72
    move-exception v5

    goto :goto_7a

    :cond_74
    :goto_74
    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_79} :catch_72

    goto :goto_7e

    :goto_7a
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7f

    :cond_7e
    :goto_7e
    nop

    :goto_7f
    throw v4
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getMaxAmplitude()I
    .registers 2

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mMaxAmplitude:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .registers 3

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .registers 5

    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->mCountRecordingSamples:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lmiui/media/LocalWavRecorder;->mChannelCount:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .registers 2

    sget-object v0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .registers 3

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

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
    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-eqz v0, :cond_3f

    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_47

    :try_start_d
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_47

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    const-string v1, "WavRecorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
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

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    iget v1, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mMinBufferSize:I

    const-string v1, "WavRecorder"

    if-ltz v0, :cond_4c

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

    if-ne v0, v3, :cond_38

    goto :goto_39

    :cond_38
    move v2, v4

    :goto_39
    iput v2, p0, Lmiui/media/LocalWavRecorder;->mChannelCount:I

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mOutputFile:Ljava/io/File;

    iput v4, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const-string v0, "WAVRecorder prepared"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4c
    const-string v0, "Error when getting min buffer size"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v1, "WavRecorder"

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v0, "AudioRecord released"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v0, "WAVRecorder released"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .registers 3

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

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

    if-ne v0, v1, :cond_51

    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    new-instance v0, Lmiui/media/LocalWavRecorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->start()V

    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder resumed"

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
    const-string v0, "WavRecorder"

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

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mAudioChannel:I

    return-void
.end method

.method public setAudioEncoder(I)V
    .registers 2

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 2

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .registers 2

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    return-void
.end method

.method public setAudioSource(I)V
    .registers 2

    iput p1, p0, Lmiui/media/LocalWavRecorder;->mAudioSource:I

    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lmiui/media/LocalWavRecorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->mParams:Ljava/lang/String;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not support extra parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxDuration(I)V
    .registers 4

    if-lez p1, :cond_12

    div-int/lit16 v0, p1, 0x3e8

    iget v1, p0, Lmiui/media/LocalWavRecorder;->mSampleRate:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    iget v1, p0, Lmiui/media/LocalWavRecorder;->mChannelCount:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    goto :goto_19

    :cond_12
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    :goto_19
    return-void
.end method

.method public setMaxFileSize(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    iput-wide p1, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    goto :goto_10

    :cond_9
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->mMaxFileSize:J

    :goto_10
    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->mOutputFilePath:Ljava/lang/String;

    return-void
.end method

.method public setOutputFormat(I)V
    .registers 2

    return-void
.end method

.method public setQuality(I)V
    .registers 2

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
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-nez v0, :cond_75

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_75

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_66

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

    if-ne v0, v1, :cond_5e

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

    new-instance v1, Lmiui/media/LocalWavRecorder$RecordingThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V

    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v1}, Lmiui/media/LocalWavRecorder$RecordingThread;->start()V

    const-string v1, "WavRecorder"

    const-string v2, "WAVRecorder started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_84

    monitor-exit p0

    return-void

    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wav record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    const-string v0, "WavRecorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    const-string v0, "WavRecorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_84
    .catchall {:try_start_5e .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_3d

    :cond_c
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

    :cond_3d
    :goto_3d
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingState:I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_87

    :try_start_40
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->join()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_51} :catch_52
    .catchall {:try_start_40 .. :try_end_51} :catchall_87

    :cond_51
    goto :goto_5a

    :catch_52
    move-exception v0

    :try_start_53
    const-string v1, "WavRecorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecordingThread:Lmiui/media/LocalWavRecorder$RecordingThread;
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_87

    :try_start_5d
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_87

    goto :goto_6b

    :catch_63
    move-exception v0

    :try_start_64
    const-string v1, "WavRecorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6b
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    invoke-direct {p0}, Lmiui/media/LocalWavRecorder;->updateWaveHeader()V

    const-string v0, "WavRecorder"

    const-string v1, "WavRecorder stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_64 .. :try_end_85} :catchall_87

    monitor-exit p0

    return-void

    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0
.end method
