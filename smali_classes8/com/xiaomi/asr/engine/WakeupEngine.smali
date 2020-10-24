.class public Lcom/xiaomi/asr/engine/WakeupEngine;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibraryWrapper(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->loadLibraryWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public static openLog(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->openLog(Z)V

    return-void
.end method

.method public static release()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->release()V

    return-void
.end method

.method public static restart()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->restart()V

    return-void
.end method

.method public static saveRecord(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->saveRecord(Z)V

    return-void
.end method

.method public static setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    return-void
.end method

.method public static start()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->start(I)V

    return-void
.end method

.method public static stop()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->stop(J)V

    return-void
.end method

.method public static stop(I)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->stop(J)V

    return-void
.end method

.method public static wakeupVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->wakeupVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
