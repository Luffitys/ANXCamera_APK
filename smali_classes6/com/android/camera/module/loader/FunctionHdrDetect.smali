.class public Lcom/android/camera/module/loader/FunctionHdrDetect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field private static final TAG:Ljava/lang/String; = "FunctionParseAsdHdr"


# instance fields
.field private mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

.field private mSupportHdrMotion:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mSupportHdrMotion:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->isHdrSceneDetectionStarted()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mSupportHdrMotion:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->isHdrMotionDetected(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrMotionDetectionResult(Z)V

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v2

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrMode(Landroid/hardware/camera2/CaptureResult;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply() called with: hdrMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",hdrStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isMotionDetected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FunctionParseAsdHdr"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v3}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->isMatchCurrentHdrMode(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-nez p0, :cond_3

    move v1, v3

    :cond_3
    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrSceneChanged(Z)V

    :cond_4
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionHdrDetect;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
