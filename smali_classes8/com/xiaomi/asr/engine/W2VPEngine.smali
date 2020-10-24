.class public Lcom/xiaomi/asr/engine/W2VPEngine;
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

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->abortEnrollment()V

    return-void
.end method

.method public static cancelEnrollment()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->cancelEnrollment()V

    return-void
.end method

.method public static commitEnrollment()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->commitEnrollment()V

    return-void
.end method

.method public static generateModel()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->generateModel()V

    return-void
.end method

.method public static getAllEnrollRegister()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getAllRegister()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openLog(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->openLog(Z)V

    return-void
.end method

.method public static openVoicePrint(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->openVoicePrint(Z)V

    return-void
.end method

.method public static release()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->release()V

    return-void
.end method

.method public static removeAllEnrollRegister()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->removeAllRegister()V

    return-void
.end method

.method public static saveRecord(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->saveRecord(Z)V

    return-void
.end method

.method public static setDebugPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->setDebugPath(Ljava/lang/String;)V

    return-void
.end method

.method public static setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    return-void
.end method

.method public static start(I)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->start(I)V

    return-void
.end method

.method public static startEnrollment(I)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->startEnrollment(I)V

    return-void
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
