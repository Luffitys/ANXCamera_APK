.class public Lmiui/util/VibrateUtils;
.super Ljava/lang/Object;
.source "VibrateUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCanSetInfiniteStrength:Z

.field private static mHapticAttributes:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "VibrateUtils"

    sput-object v0, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    const-class v0, Landroid/os/VibrationEffect$Prebaked;

    :try_start_1c
    const-string v1, "setInfiniteStrength"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v2, Lmiui/util/VibrateUtils;->mCanSetInfiniteStrength:Z
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_2b} :catch_2c

    goto :goto_36

    :catch_2c
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    goto :goto_11

    :catch_7
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-object v0
.end method

.method private static invokeSetInfiniteStrength(Landroid/os/VibrationEffect;D)V
    .registers 9

    const-class v0, Landroid/os/VibrationEffect$Prebaked;

    :try_start_2
    const-string v1, "setInfiniteStrength"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1e} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1e} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1e} :catch_20

    nop

    goto :goto_41

    :catch_20
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :catch_2b
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :catch_36
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    nop

    :goto_41
    return-void
.end method

.method public static vibrate(Landroid/os/Vibrator;Z[JII)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_43

    aget-wide v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v3

    if-eqz v3, :cond_43

    instance-of v0, v3, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_3d

    if-eq p3, p4, :cond_3d

    if-eq p3, v1, :cond_1e

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1b

    const-wide/high16 v0, 0x3fd8000000000000L    # 0.375

    goto :goto_21

    :cond_1b
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_21

    :cond_1e
    const-wide/high16 v0, 0x3fe4000000000000L    # 0.625

    nop

    :goto_21
    invoke-static {v3, v0, v1}, Lmiui/util/VibrateUtils;->invokeSetInfiniteStrength(Landroid/os/VibrationEffect;D)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HapticFeedbackUtil"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    sget-object v0, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v3, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void

    :cond_43
    array-length v2, p2

    if-ne v2, v1, :cond_4c

    aget-wide v0, p2, v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_50

    :cond_4c
    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_50
    return-void
.end method

.method static vibrate(Landroid/os/SystemVibrator;IDLjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    invoke-static {p1}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v6

    instance-of v0, v6, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_1e

    sget-boolean v0, Lmiui/util/VibrateUtils;->mCanSetInfiniteStrength:Z

    if-eqz v0, :cond_1e

    invoke-static {v6, p2, p3}, Lmiui/util/VibrateUtils;->invokeSetInfiniteStrength(Landroid/os/VibrationEffect;D)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    sget-object v5, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    move-object v0, p0

    move-object v2, p4

    move-object v3, v6

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static vibrateExt(Landroid/os/Vibrator;I)Z
    .registers 4

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sget-object v1, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    return v1
.end method

.method public static vibrateExt(Landroid/os/Vibrator;Landroid/net/Uri;Landroid/content/Context;)Z
    .registers 5

    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    return v1

    :cond_d
    const/4 v1, 0x0

    return v1
.end method
