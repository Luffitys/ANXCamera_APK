.class public Landroid/os/NullVibrator;
.super Landroid/os/Vibrator;
.source "NullVibrator.java"


# static fields
.field private static final sInstance:Landroid/os/NullVibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/NullVibrator;

    invoke-direct {v0}, Landroid/os/NullVibrator;-><init>()V

    sput-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/os/NullVibrator;
    .registers 1

    sget-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public hasAmplitudeControl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasVibrator()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVibrating()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V
    .registers 6

    return-void
.end method
