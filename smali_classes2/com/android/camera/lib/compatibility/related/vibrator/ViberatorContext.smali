.class public Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;
.super Ljava/lang/Object;
.source "ViberatorContext.java"

# interfaces
.implements Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViberatorContext"

.field private static volatile mInstance:Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;


# instance fields
.field private mIsSnapClickViberatorEnable:Z

.field mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mIsSnapClickViberatorEnable:Z

    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isSupportLinearMotorVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    const-string p0, "ViberatorContext"

    const-string p1, "ViberatorContext: init LinearMotorStrategy"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;
    .locals 2

    sget-object v0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mInstance:Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mInstance:Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    invoke-direct {v1, p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mInstance:Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mInstance:Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    return-object p0
.end method

.method private isViberatorReady()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public performBokehAdjust()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performBokehAdjust()V

    :cond_0
    return-void
.end method

.method public performBurstCapture()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performBurstCapture()V

    :cond_0
    return-void
.end method

.method public performEVChange()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performEVChange()V

    :cond_0
    return-void
.end method

.method public performFocusValueLargeChangedInManual()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performFocusValueLargeChangedInManual()V

    :cond_0
    return-void
.end method

.method public performFocusValueLightChangedInManual()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performFocusValueLightChangedInManual()V

    :cond_0
    return-void
.end method

.method public performModeSwitch()V
    .locals 2

    const-string v0, "ViberatorContext"

    const-string v1, "performModeSwitch: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performModeSwitch()V

    :cond_0
    return-void
.end method

.method public performSelectZoomLight()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performSelectZoomLight()V

    :cond_0
    return-void
.end method

.method public performSelectZoomNormal()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performSelectZoomNormal()V

    :cond_0
    return-void
.end method

.method public performSlideScaleNormal()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performSlideScaleNormal()V

    :cond_0
    return-void
.end method

.method public performSnapClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mIsSnapClickViberatorEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->isViberatorReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;

    invoke-interface {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;->performSnapClick()V

    :cond_1
    return-void
.end method

.method public setSnapClickVibratorEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->mIsSnapClickViberatorEnable:Z

    return-void
.end method
