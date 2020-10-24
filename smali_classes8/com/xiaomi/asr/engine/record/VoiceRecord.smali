.class public Lcom/xiaomi/asr/engine/record/VoiceRecord;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PARAM_KEY_SET_AUDIO_SOURCE:I = 0x1

.field public static final PARAM_KEY_SET_CHANNEL:I = 0x0

.field public static final PARAM_KEY_SET_ENCODING_BITS:I = 0x4

.field public static final PARAM_KEY_SET_PRINT_LOG:I = 0x5

.field public static final PARAM_KEY_SET_RECORD_BUFFER_SIZE:I = 0x2

.field public static final PARAM_KEY_SET_SAMPLE_RATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VoiceRecord"


# instance fields
.field private isPrintLog:Z

.field private mAudioEncodingBits:I

.field private mAudioSource:I

.field private mChannels:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

.field private mRecordBufferSize:I

.field private volatile mRecordTaskType:I

.field private mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

.field private mSampleRate:I

.field private mStartNewTask:Ljava/lang/Runnable;

.field protected syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mChannels:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioSource:I

    const/16 v1, 0x600

    iput v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordBufferSize:I

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mSampleRate:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioEncodingBits:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->syncObj:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->isPrintLog:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordTaskType:I

    new-instance v0, Lcom/xiaomi/asr/engine/record/VoiceRecord$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$1;-><init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mStartNewTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VoiceRecord"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordTaskType:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->startRecordImp()V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaomi/asr/engine/record/VoiceRecord;Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mSampleRate:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mChannels:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioEncodingBits:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->onAudioRecordFail()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioSource:I

    return p0
.end method

.method static synthetic access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordBufferSize:I

    return p0
.end method

.method private onAudioRecordFail()V
    .locals 2

    const-string v0, "VoiceRecord"

    const-string v1, "onAudioRecordFail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordCreateError()V

    :cond_0
    return-void
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->isPrintLog:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startRecordImp()V
    .locals 3

    const-string v0, "VoiceRecord"

    const-string v1, "startRecordImp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    if-eqz v2, :cond_0

    const-string v2, "record already start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;-><init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;Lcom/xiaomi/asr/engine/record/VoiceRecord$1;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordCreateError()V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getParamValue(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioEncodingBits:I

    return p0

    :cond_1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mSampleRate:I

    return p0

    :cond_2
    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordBufferSize:I

    return p0

    :cond_3
    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioSource:I

    return p0

    :cond_4
    iget p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mChannels:I

    return p0
.end method

.method public setParam(II)V
    .locals 2

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->isPrintLog:Z

    goto :goto_1

    :cond_2
    iput p2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioEncodingBits:I

    goto :goto_1

    :cond_3
    iput p2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mSampleRate:I

    goto :goto_1

    :cond_4
    iput p2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordBufferSize:I

    goto :goto_1

    :cond_5
    iput p2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mAudioSource:I

    goto :goto_1

    :cond_6
    iput p2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mChannels:I

    :goto_1
    return-void
.end method

.method public startRecord()V
    .locals 2

    const-string v0, "VoiceRecord"

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordTaskType:I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mStartNewTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mStartNewTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopRecord()V
    .locals 2

    const-string v0, "VoiceRecord"

    const-string v1, "startRecordImp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordTaskType:I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mStartNewTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecordImp()V

    return-void
.end method

.method public stopRecordImp()V
    .locals 2

    const-string v0, "VoiceRecord"

    const-string v1, "stopRecordImp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    if-eqz v1, :cond_0

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    :cond_0
    return-void
.end method
