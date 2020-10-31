.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$OnVibratorStateChangedListener;,
        Landroid/os/Vibrator$vibrateThread;,
        Landroid/os/Vibrator$VibrationIntensity;,
        Landroid/os/Vibrator$VibrationEffectSupport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"

.field public static final VIBRATION_EFFECT_SUPPORT_NO:I = 0x2

.field public static final VIBRATION_EFFECT_SUPPORT_UNKNOWN:I = 0x0

.field public static final VIBRATION_EFFECT_SUPPORT_YES:I = 0x1

.field public static final VIBRATION_INTENSITY_HIGH:I = 0x3

.field public static final VIBRATION_INTENSITY_LOW:I = 0x1

.field public static final VIBRATION_INTENSITY_MEDIUM:I = 0x2

.field public static final VIBRATION_INTENSITY_OFF:I


# instance fields
.field private mDefaultHapticFeedbackIntensity:I

.field private mDefaultNotificationVibrationIntensity:I

.field private mDefaultRingVibrationIntensity:I

.field private final mPackageName:Ljava/lang/String;

.field private mVibrateThread:Landroid/os/Vibrator$vibrateThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Vibrator;->loadVibrationIntensities(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/os/Vibrator;->loadVibrationIntensities(Landroid/content/Context;)V

    return-void
.end method

.method private loadDefaultIntensity(Landroid/content/Context;I)I
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x2

    :goto_c
    return v0
.end method

.method private loadVibrationIntensities(Landroid/content/Context;)V
    .registers 3

    const v0, 0x10e0035

    invoke-direct {p0, p1, v0}, Landroid/os/Vibrator;->loadDefaultIntensity(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/os/Vibrator;->mDefaultHapticFeedbackIntensity:I

    const v0, 0x10e003c

    invoke-direct {p0, p1, v0}, Landroid/os/Vibrator;->loadDefaultIntensity(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/os/Vibrator;->mDefaultNotificationVibrationIntensity:I

    const v0, 0x10e0041

    invoke-direct {p0, p1, v0}, Landroid/os/Vibrator;->loadDefaultIntensity(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/os/Vibrator;->mDefaultRingVibrationIntensity:I

    return-void
.end method


# virtual methods
.method public addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public final varargs areAllEffectsSupported([I)I
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->areEffectsSupported([I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_15

    aget v4, v1, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    return v5

    :cond_f
    if-nez v4, :cond_12

    const/4 v0, 0x0

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    return v0
.end method

.method public final varargs areAllPrimitivesSupported([I)Z
    .registers 7

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->arePrimitivesSupported([I)[Z

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    aget-boolean v4, v0, v3

    if-nez v4, :cond_e

    return v2

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public varargs areEffectsSupported([I)[I
    .registers 4

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-object v0
.end method

.method public varargs arePrimitivesSupported([I)[Z
    .registers 3

    array-length v0, p1

    new-array v0, v0, [Z

    return-object v0
.end method

.method public abstract cancel()V
.end method

.method public getDefaultHapticFeedbackIntensity()I
    .registers 2

    iget v0, p0, Landroid/os/Vibrator;->mDefaultHapticFeedbackIntensity:I

    return v0
.end method

.method public getDefaultNotificationVibrationIntensity()I
    .registers 2

    iget v0, p0, Landroid/os/Vibrator;->mDefaultNotificationVibrationIntensity:I

    return v0
.end method

.method public getDefaultRingVibrationIntensity()I
    .registers 2

    iget v0, p0, Landroid/os/Vibrator;->mDefaultRingVibrationIntensity:I

    return v0
.end method

.method public abstract hasAmplitudeControl()Z
.end method

.method public abstract hasVibrator()Z
.end method

.method public isVibrating()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public setAlwaysOnEffect(ILandroid/os/VibrationEffect;Landroid/media/AudioAttributes;)Z
    .registers 10

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/media/AudioAttributes;)Z

    move-result v0

    return v0
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/media/AudioAttributes;)Z
    .registers 8

    const-string v0, "Vibrator"

    const-string v1, "Always-on effects aren\'t supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Landroid/os/Vibrator;->mVibrateThread:Landroid/os/Vibrator$vibrateThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Vibrator$vibrateThread;->stopVibrating()V

    :cond_7
    return-void
.end method

.method public abstract vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V
.end method

.method public vibrate(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    const-string v1, "Vibrator"

    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;I)V
    .registers 4

    new-instance v0, Landroid/os/Vibrator$vibrateThread;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Vibrator$vibrateThread;-><init>(Landroid/os/Vibrator;Landroid/os/VibrationEffect;I)V

    iput-object v0, p0, Landroid/os/Vibrator;->mVibrateThread:Landroid/os/Vibrator$vibrateThread;

    invoke-virtual {v0}, Landroid/os/Vibrator$vibrateThread;->start()V

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .registers 9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JI)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Vibrator"

    const/4 v1, -0x1

    if-lt p2, v1, :cond_17

    array-length v1, p1

    if-ge p2, v1, :cond_17

    :try_start_8
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v1

    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate called with repeat index out of bounds (pattern.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
