.class public Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PARAM_KEY_SET_AUDIO_SOURCE:I = 0x1

.field public static final PARAM_KEY_SET_CHANNEL:I = 0x0

.field public static final PARAM_KEY_SET_ENCODING_BITS:I = 0x4

.field public static final PARAM_KEY_SET_PRINT_LOG:I = 0x5

.field public static final PARAM_KEY_SET_RECORD_BUFFER_SIZE:I = 0x2

.field public static final PARAM_KEY_SET_SAMPLE_RATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DSPVoiceRecord"


# instance fields
.field private isPrintLog:Z

.field private mAudioEncodingBits:I

.field private mAudioSource:I

.field private mCaptureSession:I

.field private mChannels:I

.field private mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

.field private mRecordBufferSize:I

.field private mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

.field private mSampleRate:I

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    const/16 v1, 0x600

    iput v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->syncObj:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->isPrintLog:Z

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

    return p0
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    return p0
.end method

.method static synthetic access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mCaptureSession:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->syncObj:Ljava/lang/Object;

    return-object p0
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->isPrintLog:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
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
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    return p0

    :cond_1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    return p0

    :cond_2
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    return p0

    :cond_3
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    return p0

    :cond_4
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

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
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->isPrintLog:Z

    goto :goto_1

    :cond_2
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    goto :goto_1

    :cond_3
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    goto :goto_1

    :cond_4
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    goto :goto_1

    :cond_5
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    goto :goto_1

    :cond_6
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

    :goto_1
    return-void
.end method

.method public startRecord(I)V
    .locals 1

    :try_start_0
    iput p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mCaptureSession:I

    iget-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;-><init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$1;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordingFailed()V

    :cond_1
    :goto_1
    return-void
.end method

.method public stopRecord()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    if-eqz v0, :cond_0

    const-string v0, "DSPVoiceRecord"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    :cond_0
    return-void
.end method
