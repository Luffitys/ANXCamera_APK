.class public Lcom/xiaomi/asr/engine/WVPEngine;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortEnrollment()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->abortEnrollment()V

    return-void
.end method

.method public static cancelEnrollment()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->cancelEnrollment()V

    return-void
.end method

.method public static commitEnrollment()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->commitEnrollment()V

    return-void
.end method

.method public static generateModel()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->generateModel()V

    return-void
.end method

.method public static getAllEnrollRegister()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getAllRegister()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openLog(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->openLog(Z)V

    return-void
.end method

.method public static openVoicePrint(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->openVoicePrint(Z)V

    return-void
.end method

.method public static release()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->release()V

    return-void
.end method

.method public static removeAllEnrollRegister()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->removeAllRegister()V

    return-void
.end method

.method public static restart()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->restart()V

    return-void
.end method

.method public static saveRecord(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->saveRecord(Z)V

    return-void
.end method

.method public static setDebugPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->setDebugPath(Ljava/lang/String;)V

    return-void
.end method

.method public static setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    return-void
.end method

.method public static start()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->start(I)V

    return-void
.end method

.method public static startEnrollment(I)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->startEnrollment(I)V

    return-void
.end method

.method public static stop()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->stop(J)V

    return-void
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
