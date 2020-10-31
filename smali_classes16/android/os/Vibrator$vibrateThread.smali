.class Landroid/os/Vibrator$vibrateThread;
.super Ljava/lang/Thread;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Vibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "vibrateThread"
.end annotation


# instance fields
.field private mForceStop:Ljava/lang/Boolean;

.field private mTimes:I

.field private mVibe:Landroid/os/VibrationEffect;

.field final synthetic this$0:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;Landroid/os/VibrationEffect;I)V
    .registers 4

    iput-object p1, p0, Landroid/os/Vibrator$vibrateThread;->this$0:Landroid/os/Vibrator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Vibrator$vibrateThread;->mForceStop:Ljava/lang/Boolean;

    iput-object p2, p0, Landroid/os/Vibrator$vibrateThread;->mVibe:Landroid/os/VibrationEffect;

    iput p3, p0, Landroid/os/Vibrator$vibrateThread;->mTimes:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    monitor-enter p0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/os/Vibrator$vibrateThread;->mForceStop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_53

    iget v0, p0, Landroid/os/Vibrator$vibrateThread;->mTimes:I

    if-gtz v0, :cond_12

    iget v0, p0, Landroid/os/Vibrator$vibrateThread;->mTimes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_53

    :cond_12
    iget-object v0, p0, Landroid/os/Vibrator$vibrateThread;->this$0:Landroid/os/Vibrator;

    iget-object v1, p0, Landroid/os/Vibrator$vibrateThread;->mVibe:Landroid/os/VibrationEffect;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_55

    const-wide/16 v0, -0x1

    :try_start_29
    iget-object v2, p0, Landroid/os/Vibrator$vibrateThread;->mVibe:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/os/Vibrator$vibrateThread;->mVibe:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Prebaked;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Prebaked;->getRtpDuration()J

    move-result-wide v2

    move-wide v0, v2

    :cond_38
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_3c
    .catchall {:try_start_29 .. :try_end_3b} :catchall_55

    goto :goto_40

    :catch_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_40
    iget-object v0, p0, Landroid/os/Vibrator$vibrateThread;->mForceStop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/os/Vibrator$vibrateThread;->mTimes:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/os/Vibrator$vibrateThread;->mTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/Vibrator$vibrateThread;->mTimes:I

    goto :goto_1

    :cond_53
    monitor-exit p0

    return-void

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_55

    throw v0
.end method

.method public stopVibrating()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator$vibrateThread;->mForceStop:Ljava/lang/Boolean;

    iget-object v0, p0, Landroid/os/Vibrator$vibrateThread;->this$0:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_12

    throw v0
.end method
