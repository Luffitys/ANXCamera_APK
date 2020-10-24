.class public Lcom/android/camera/module/loader/FunctionParseHistogramStats;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private mModule:Ljava/lang/ref/WeakReference;

.field private mStats:[I

.field private mTopAlertProtocolWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/BaseModule;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mModule:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mTopAlertProtocolWeakReference:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->apply(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method public apply(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mTopAlertProtocolWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/VideoModule;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/VideoModule;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/Camera2Module;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    :goto_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera2/CaptureResultParser;->isHistogramStatsEnabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-object p0

    :cond_4
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHistogramStats(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    const/16 p1, 0x100

    new-array v1, p1, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_6

    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    mul-int/lit8 v4, v2, 0x3

    :goto_2
    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateHistogramStatsData([I)V

    :cond_7
    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-object p0
.end method
