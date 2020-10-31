.class Lmiui/slide/SlideCoverListener$1;
.super Ljava/lang/Object;
.source "SlideCoverListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverListener;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCoverListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    iget-object v0, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    # invokes: Lmiui/slide/SlideCoverListener;->getFrameworkSlideEvent(I)I
    invoke-static {v0, v1}, Lmiui/slide/SlideCoverListener;->access$000(Lmiui/slide/SlideCoverListener;I)I

    move-result v0

    iget-object v1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mLastEvent:I
    invoke-static {v1}, Lmiui/slide/SlideCoverListener;->access$100(Lmiui/slide/SlideCoverListener;)I

    move-result v1

    if-ne v1, v0, :cond_15

    return-void

    :cond_15
    iget-object v1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lmiui/slide/SlideCoverListener;->access$200(Lmiui/slide/SlideCoverListener;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lmiui/slide/SlideCoverListener;->access$200(Lmiui/slide/SlideCoverListener;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2a
    iget-object v1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # setter for: Lmiui/slide/SlideCoverListener;->mLastEvent:I
    invoke-static {v1, v0}, Lmiui/slide/SlideCoverListener;->access$102(Lmiui/slide/SlideCoverListener;I)I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b3

    iget-object v1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # operator++ for: Lmiui/slide/SlideCoverListener;->mSlideEventCount:I
    invoke-static {v1}, Lmiui/slide/SlideCoverListener;->access$308(Lmiui/slide/SlideCoverListener;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event values = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SlideCoverListener"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/slide/SlideCoverListener;->access$400(Lmiui/slide/SlideCoverListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x66

    invoke-static {v1, v3, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mLastEventTime:J
    invoke-static {v3}, Lmiui/slide/SlideCoverListener;->access$500(Lmiui/slide/SlideCoverListener;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_ae

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # operator++ for: Lmiui/slide/SlideCoverListener;->mQuickSlideEventCount:I
    invoke-static {v3}, Lmiui/slide/SlideCoverListener;->access$608(Lmiui/slide/SlideCoverListener;)I

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # setter for: Lmiui/slide/SlideCoverListener;->mLastEventTime:J
    invoke-static {v3, v1, v2}, Lmiui/slide/SlideCoverListener;->access$502(Lmiui/slide/SlideCoverListener;J)J

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v3}, Lmiui/slide/SlideCoverListener;->access$700(Lmiui/slide/SlideCoverListener;)Landroid/os/Vibrator;

    move-result-object v3

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v3}, Lmiui/slide/SlideCoverListener;->access$700(Lmiui/slide/SlideCoverListener;)Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mLastVibrateTime:J
    invoke-static {v3}, Lmiui/slide/SlideCoverListener;->access$800(Lmiui/slide/SlideCoverListener;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f40

    cmp-long v3, v3, v5

    if-lez v3, :cond_ae

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v3}, Lmiui/slide/SlideCoverListener;->access$700(Lmiui/slide/SlideCoverListener;)Landroid/os/Vibrator;

    move-result-object v3

    iget-object v4, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mVibrationEffect:Landroid/os/VibrationEffect;
    invoke-static {v4}, Lmiui/slide/SlideCoverListener;->access$900(Lmiui/slide/SlideCoverListener;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # setter for: Lmiui/slide/SlideCoverListener;->mLastVibrateTime:J
    invoke-static {v3, v1, v2}, Lmiui/slide/SlideCoverListener;->access$802(Lmiui/slide/SlideCoverListener;J)J

    :cond_ae
    iget-object v3, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # setter for: Lmiui/slide/SlideCoverListener;->mLastEventTime:J
    invoke-static {v3, v1, v2}, Lmiui/slide/SlideCoverListener;->access$502(Lmiui/slide/SlideCoverListener;J)J

    :cond_b3
    iget-object v1, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/slide/SlideCoverListener;->access$400(Lmiui/slide/SlideCoverListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lmiui/slide/SlideCoverListener$1;->this$0:Lmiui/slide/SlideCoverListener;

    # getter for: Lmiui/slide/SlideCoverListener;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/slide/SlideCoverListener;->access$400(Lmiui/slide/SlideCoverListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
