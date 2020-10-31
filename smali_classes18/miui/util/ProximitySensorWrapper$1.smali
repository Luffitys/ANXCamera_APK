.class Lmiui/util/ProximitySensorWrapper$1;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ProximitySensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ProximitySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/ProximitySensorWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

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

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    const/4 v3, 0x1

    if-ltz v2, :cond_23

    const/high16 v2, 0x40800000    # 4.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_23

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->access$000(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_23

    move v2, v3

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proximity distance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProximitySensorWrapper"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x12c

    if-eqz v2, :cond_5e

    iget-object v6, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v6}, Lmiui/util/ProximitySensorWrapper;->access$100(Lmiui/util/ProximitySensorWrapper;)I

    move-result v6

    if-eq v6, v3, :cond_7d

    iget-object v6, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # setter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v6, v3}, Lmiui/util/ProximitySensorWrapper;->access$102(Lmiui/util/ProximitySensorWrapper;I)I

    iget-object v6, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7d

    :cond_5e
    iget-object v6, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v6}, Lmiui/util/ProximitySensorWrapper;->access$100(Lmiui/util/ProximitySensorWrapper;)I

    move-result v6

    if-eqz v6, :cond_7d

    iget-object v6, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # setter for: Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I
    invoke-static {v6, v1}, Lmiui/util/ProximitySensorWrapper;->access$102(Lmiui/util/ProximitySensorWrapper;I)I

    iget-object v6, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    # getter for: Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/util/ProximitySensorWrapper;->access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7d
    :goto_7d
    return-void
.end method
