.class public Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;
.super Ljava/lang/Object;
.source "LinearMotorStrategy.java"

# interfaces
.implements Lcom/android/camera/lib/compatibility/related/vibrator/IViberatorStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearMotorStrategy"


# instance fields
.field private final mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method


# virtual methods
.method public performBokehAdjust()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performBokehAdjust: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    const-string v1, "mesh_light"

    invoke-virtual {p0, v1, v0, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performBurstCapture()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performBurstCapture: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    const-string v1, "flick_light"

    invoke-virtual {p0, v1, v0, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performEVChange()V
    .locals 1

    const-string p0, "LinearMotorStrategy"

    const-string v0, "performEVChange: ignore..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performFocusValueLargeChangedInManual()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performFocusValueLargeChangedInManual: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    const-string v1, "mesh_normal"

    invoke-virtual {p0, v1, v0, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performFocusValueLightChangedInManual()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performFocusValueLightChangedInManual: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    const-string v1, "mesh_light"

    invoke-virtual {p0, v1, v0, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performModeSwitch()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performModeSwitch: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v0, "mesh_normal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    return-void
.end method

.method public performSelectZoomLight()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSelectZoomLight: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    const-string v1, "mesh_light"

    invoke-virtual {p0, v1, v0, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performSelectZoomNormal()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSelectZoomNormal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    const-string v1, "mesh_normal"

    invoke-virtual {p0, v1, v0, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performSlideScaleNormal()V
    .locals 2

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSlideScaleNormal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    const-string v1, "mesh_normal"

    invoke-virtual {p0, v1, v0, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public performSnapClick()V
    .locals 3

    const-string v0, "LinearMotorStrategy"

    const-string v1, "performSnapClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/vibrator/LinearMotorStrategy;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v0, "flick_light"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;ZI)Z

    return-void
.end method
