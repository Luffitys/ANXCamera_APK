.class public Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FEED_RESULT_DETECTED_END:I = 0x2

.field private static final FEED_RESULT_DETECTED_LEVEL_ONE:I = 0x1

.field private static final SDK_VERSION:Ljava/lang/String; = "wakeup_sdk_202006011636"

.field private static final TAG:Ljava/lang/String; = "WakeupEngineImpl"

.field private static final WAKEUP_BUFFER_SIZE:I = 0x280

.field private static mInstance:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;


# instance fields
.field private ModelPath:Ljava/lang/String;

.field private init:Z

.field private isPrintLog:Z

.field private isWakeup:Z

.field private isWriteBackward:Z

.field private mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

.field private mCacheData:[B

.field private mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

.field private mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

.field private mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

.field private mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

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

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->init:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->running:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->pause:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isWakeup:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isPrintLog:Z

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->saveRecord:Z

    const-string v1, "ModelPath"

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->ModelPath:Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-direct {v1}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    new-instance v1, Lcom/xiaomi/asr/engine/record/VoiceRecord;

    new-instance v2, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$VoiceRecordListener;

    invoke-direct {v2, p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$VoiceRecordListener;-><init>(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;-><init>(Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;)V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/4 v2, 0x2

    const/16 v3, 0x280

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wakeup-engine-impl-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;

    invoke-direct {v2, p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;-><init>(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    const v1, 0xfa00

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    const/16 v1, 0x4b00

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    new-instance v0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    const-string p0, "/sdcard/miasr/asr/record"

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->setSaveDir(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isPrintLog:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->ModelPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isWakeup:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isWakeup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mCacheData:[B

    return-object p0
.end method

.method static synthetic access$1102(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mCacheData:[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isWriteBackward:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isWriteBackward:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->pause:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->init:Z

    return p0
.end method

.method static synthetic access$302(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->init:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->running:Z

    return p0
.end method

.method static synthetic access$502(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->running:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->saveRecord:Z

    return p0
.end method

.method static synthetic access$900(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;
    .locals 2

    sget-object v0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-direct {v1}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;-><init>()V

    sput-object v1, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

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
    sget-object v0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->ModelPath:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadLibraryWrapper(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public openLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isPrintLog:Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isPrintLog:Z

    if-eqz v0, :cond_0

    const-string v0, "WakeupEngineImpl"

    const-string v1, "call release, releaseRecordMs:0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public restart()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->stop(J)V

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->start(I)V

    return-void
.end method

.method public saveRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->saveRecord:Z

    return-void
.end method

.method public setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-void
.end method

.method public start(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isPrintLog:Z

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

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->pause:Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stop(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->isPrintLog:Z

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

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->pause:Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public wakeupVersion()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->init:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeup_sdk_202006011636 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
