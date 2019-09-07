.class public Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;
.super Ljava/lang/Object;
.source "ViberatorContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViberatorContext"

.field private static volatile mInstance:Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;


# instance fields
.field mViberator:Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "ViberatorContext"

    const-string p1, "ViberatorContext: init legacy class"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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


# virtual methods
.method public performBokehAdjust()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performBokehAdjust: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performBurstCapture()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performBurstCapture: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performEVChange()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performEVChange: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performFocusValueLargeChangedInManual()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performFocusValueLargeChangedInManual: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performFocusValueLightChangedInManual()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performFocusValueLightChangedInManual: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performModeSwitch()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performModeSwitch: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performSelectZoomLight()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performSelectZoomLight: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performSelectZoomNormal()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performSelectZoomNormal: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performSlideScaleNormal()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performSlideScaleNormal: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performSnapClick()V
    .locals 1

    const-string p0, "ViberatorContext"

    const-string v0, "performSnapClick:  ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
