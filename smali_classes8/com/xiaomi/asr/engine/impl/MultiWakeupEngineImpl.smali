.class public Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FEED_RESULT_DETECTED_END:I = 0x2

.field private static final FEED_RESULT_DETECTED_LEVEL_ONE:I = 0x1

.field private static final SDK_VERSION:Ljava/lang/String; = "wakeup_sdk_202006011636"

.field private static final TAG:Ljava/lang/String; = "WakeupEngineImpl"

.field private static final WAKEUP_BUFFER_SIZE:I = 0x280

.field private static mInstance:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;


# instance fields
.field private init:Z

.field private isPrintLog:Z

.field private isWakeup:Z

.field private isWriteBackward:Z

.field private mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

.field private mCacheData:[B

.field private mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

.field private mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

.field private mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

.field private mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkHandlerThread:Landroid/os/HandlerThread;

.field private pause:Z

.field private running:Z

.field private saveRecord:Z

.field private saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->init:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->running:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->pause:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isWakeup:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isPrintLog:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->saveRecord:Z

    const-string v1, "multi-wakeup-engine"

    invoke-static {v1}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->loadLibrary(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    invoke-direct {v1}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    new-instance v1, Lcom/xiaomi/asr/engine/record/VoiceRecord;

    new-instance v2, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;

    invoke-direct {v2, p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;-><init>(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;-><init>(Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;)V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/4 v2, 0x2

    const/16 v3, 0x280

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wakeup-engine-impl-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;

    invoke-direct {v2, p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;-><init>(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    const v1, 0xfa00

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    const/16 v1, 0x4b00

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    const-string p0, "/sdcard/miasr/asr/record"

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->setSaveDir(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isPrintLog:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mCacheData:[B

    return-object p0
.end method

.method static synthetic access$1002(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mCacheData:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isWriteBackward:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isWriteBackward:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->pause:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->init:Z

    return p0
.end method

.method static synthetic access$202(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->init:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->running:Z

    return p0
.end method

.method static synthetic access$402(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->running:Z

    return p1
.end method

.method static synthetic access$500(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->saveRecord:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isWakeup:Z

    return p0
.end method

.method static synthetic access$902(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isWakeup:Z

    return p1
.end method

.method public static getInstance()Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;
    .locals 2

    sget-object v0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-direct {v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;-><init>()V

    sput-object v1, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

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
    sget-object v0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public openLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isPrintLog:Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isPrintLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WakeupEngineImpl"

    const-string v1, "call release, releaseRecordMs:0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public restart()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->stop(J)V

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->start(I)V

    return-void
.end method

.method public saveRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->saveRecord:Z

    return-void
.end method

.method public setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-void
.end method

.method public start(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isPrintLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call start, startRecordMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeupEngineImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->pause:Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stop(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->isPrintLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call stop, stopRecordMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeupEngineImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->pause:Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public wakeupVersion()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->init:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeup_sdk_202006011636 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
