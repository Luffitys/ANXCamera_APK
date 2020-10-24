.class public interface abstract Lcom/xiaomi/protocol/ICameraBackStageService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addCapturePath(Ljava/lang/String;)V
.end method

.method public abstract configCaptureOutputBuffer(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V
.end method

.method public abstract needWaitProcess()Z
.end method

.method public abstract onCaptureCompleted(Ljava/util/List;Ljava/lang/String;)V
.end method

.method public abstract onCaptureFailed(Ljava/lang/String;I)V
.end method
