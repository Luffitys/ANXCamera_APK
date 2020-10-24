.class public Lcom/android/camera/module/impl/component/SpeechShutterImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SpeechShutterImpl"


# instance fields
.field private mIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    :cond_0
    return-void
.end method

.method public processingSpeechShutter(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processingSpeechShutter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v0, "init start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;

    invoke-direct {p1}, Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->init()V

    sget-object p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v0, "init end "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->start()V

    sget-object p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string v0, "processingSpeechShutter start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->restart()V

    sget-object p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string p1, "processingSpeechShutter restart"

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->stop(I)V

    sget-object p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->TAG:Ljava/lang/String;

    const-string p1, "processingSpeechShutter stop"

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->onDestroy()V

    return-void
.end method
