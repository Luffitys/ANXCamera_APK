.class public Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FEED_RESULT_DETECTED_END:I = 0x2

.field private static final RECORD_BUFFER_SIZE:I = 0x140

.field private static final SDK_VERSION:Ljava/lang/String; = "w2vp_sdk_202006011636"

.field private static final TAG:Ljava/lang/String; = "W2VPEngineImpl"

.field private static mInstance:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;


# instance fields
.field private init:Z

.field private isPrintLog:Z

.field private isWakeup:Z

.field private isWakeupInfoParser:Z

.field private mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

.field private mBspDataHandleTime:I

.field private mCacheCMVNData:Ljava/io/ByteArrayOutputStream;

.field private mCacheSVData:Ljava/io/ByteArrayOutputStream;

.field private mCaptureSession:I

.field private mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

.field private mDebugPath:Ljava/lang/String;

.field private mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

.field private mOutputStream:Ljava/io/ByteArrayOutputStream;

.field private mReturnIndex:I

.field private mSoundVerifyStr:Ljava/lang/String;

.field private mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

.field private mVoiceRecord:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

.field private mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

.field private mWakeupHandleTime:J

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkHandlerThread:Landroid/os/HandlerThread;

.field private openVoicePrint:Z

.field private running:Z

.field private saveRecord:Z

.field private saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->init:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->running:Z

    iput v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mReturnIndex:I

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mSoundVerifyStr:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeup:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isPrintLog:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveRecord:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeupInfoParser:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->openVoicePrint:Z

    iput v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mBspDataHandleTime:I

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDebugPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupHandleTime:J

    const-string v0, "wakeup-engine-level2"

    invoke-static {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheSVData:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheCMVNData:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    new-instance v1, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;

    invoke-direct {v1, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;-><init>(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;-><init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    const/4 v1, 0x2

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->setParam(II)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    const/4 v1, 0x1

    const/16 v2, 0x7cf

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->setParam(II)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wakeup-engine-impl-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;

    invoke-direct {v3, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;-><init>(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V

    invoke-direct {v0, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    new-instance v0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    const-string v1, "voiceprint-engine-bsp"

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->setRecordSource(I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->openVoicePrint:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/AudioSource;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->running:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->running:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCaptureSession:I

    return p0
.end method

.method static synthetic access$1400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeupInfoParser:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeupInfoParser:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;[BIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->checkWakeup([BIZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeup:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeup:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mSoundVerifyStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mSoundVerifyStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mReturnIndex:I

    return p0
.end method

.method static synthetic access$1902(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mReturnIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheCMVNData:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheSVData:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->parserWakeupInfo([BI)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mBspDataHandleTime:I

    return p0
.end method

.method static synthetic access$2502(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mBspDataHandleTime:I

    return p1
.end method

.method static synthetic access$2602(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupHandleTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->voicePrintReco()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveRecord:Z

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDebugPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getCurrentTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isPrintLog:Z

    return p0
.end method

.method static synthetic access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->init:Z

    return p0
.end method

.method static synthetic access$902(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->init:Z

    return p1
.end method

.method private checkWakeup([BIZ)V
    .locals 9

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveRecord:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-virtual {v0, p1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->writeFile([B)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheCMVNData:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveRecord:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->closeFile()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, p2, v4}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupFeedData([BII)I

    move-result p1

    iget-wide v5, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupHandleTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupHandleTime:J

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isPrintLog:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeup feed return:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data len:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isLastFrame:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "W2VPEngineImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    iput-boolean v4, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeup:Z

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    if-eqz p1, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wakeup two has wakeup. wakeup handle time:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupHandleTime:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput v4, p1, Landroid/os/Message;->arg1:I

    const-string p2, "keyword detected"

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_5
    if-eqz p3, :cond_7

    iget-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeup:Z

    if-nez p1, :cond_7

    new-instance p1, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {p1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    invoke-virtual {p1, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isWakeupAec()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeupStartTime(J)V

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeupEndTime(J)V

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupScore()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    const-string p2, "\u5c0f\u7231\u540c\u5b66"

    invoke-virtual {p1, p2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mSoundVerifyStr:Ljava/lang/String;

    const-string p3, "error:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v4

    invoke-virtual {p1, p2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVBPassed(Z)V

    new-instance p2, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;

    invoke-direct {p2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;-><init>()V

    iget-object p3, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheCMVNData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->setCacheCMVNData([B)V

    iget-object p3, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheSVData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->setCacheSVData([B)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setDebugInfo(Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;)V

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    :cond_6
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupReset()I

    :cond_7
    return-void
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;
    .locals 2

    sget-object v0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-direct {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;-><init>()V

    sput-object v1, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    return-object v0
.end method

.method private parserWakeupInfo([BI)V
    .locals 2

    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [S

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p1, p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->parse([S)V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isInfoValid()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isWakeupInfoParser:Z

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isInfoValid()Z

    move-result p1

    const-string p2, "W2VPEngineImpl"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wakeup start time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", wakeup end time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", wakeup score:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupScore()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pcm length:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getPcmLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wakeup aec:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDSPWakeupInfoParser:Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isWakeupAec()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "dsp parser fail."

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private voicePrintReco()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCacheSVData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isPrintLog:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sv data len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "W2VPEngineImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;-><init>(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;[B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public abortEnrollment()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->abortEnrollment()V

    return-void
.end method

.method public cancelEnrollment()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->cancelEnrollment()V

    return-void
.end method

.method public commitEnrollment()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->commitEnrollment()V

    return-void
.end method

.method public generateModel()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAllRegister()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->init:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->getAllRegister()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public openLog(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->isPrintLog:Z

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->setParam(II)V

    :cond_0
    return-void
.end method

.method public openVoicePrint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->openVoicePrint:Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeAllRegister()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public saveRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveRecord:Z

    return-void
.end method

.method public setDebugPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mDebugPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-virtual {p0, p1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->setSaveDir(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {p0, p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    return-void
.end method

.method public start(I)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mCaptureSession:I

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startEnrollment(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startEnrollmentStreamingFileRecorder(Lcom/xiaomi/asr/engine/record/AudioSource;I)V
    .locals 2

    const-string v0, "W2VPEngineImpl"

    const-string v1, "preStartAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public version()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->init:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w2vp_sdk_202006011636 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-virtual {v1}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->version()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
