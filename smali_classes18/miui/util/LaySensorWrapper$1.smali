.class Lmiui/util/LaySensorWrapper$1;
.super Ljava/lang/Object;
.source "LaySensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LaySensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/LaySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/LaySensorWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-eqz v0, :cond_12f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->access$002(Lmiui/util/LaySensorWrapper;I)I

    :cond_16
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_28

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0, v4}, Lmiui/util/LaySensorWrapper;->access$002(Lmiui/util/LaySensorWrapper;I)I

    :cond_28
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v6, 0x2

    if-nez v0, :cond_3a

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0, v6}, Lmiui/util/LaySensorWrapper;->access$002(Lmiui/util/LaySensorWrapper;I)I

    :cond_3a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    const/4 v7, 0x3

    # setter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0, v7}, Lmiui/util/LaySensorWrapper;->access$002(Lmiui/util/LaySensorWrapper;I)I

    :cond_4c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v7, 0x4

    if-nez v0, :cond_5e

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0, v7}, Lmiui/util/LaySensorWrapper;->access$002(Lmiui/util/LaySensorWrapper;I)I

    :cond_5e
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mPerspective:I
    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->access$102(Lmiui/util/LaySensorWrapper;I)I

    :cond_6d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mPerspective:I
    invoke-static {v0, v4}, Lmiui/util/LaySensorWrapper;->access$102(Lmiui/util/LaySensorWrapper;I)I

    :cond_7c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mPerspective:I
    invoke-static {v0, v6}, Lmiui/util/LaySensorWrapper;->access$102(Lmiui/util/LaySensorWrapper;I)I

    :cond_8b
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$000(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mPerspective:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$100(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-ne v0, v4, :cond_c6

    :cond_9d
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mCurttenState:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$200(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mCurttenState:I
    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->access$202(Lmiui/util/LaySensorWrapper;I)I

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12f

    :cond_c6
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$000(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eq v0, v7, :cond_d6

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mPerspective:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$100(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-ne v0, v6, :cond_ff

    :cond_d6
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mCurttenState:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$200(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eq v0, v4, :cond_ff

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mCurttenState:I
    invoke-static {v0, v4}, Lmiui/util/LaySensorWrapper;->access$202(Lmiui/util/LaySensorWrapper;I)I

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12f

    :cond_ff
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mAttitude:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$000(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-ne v0, v4, :cond_12f

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mCurttenState:I
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$200(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eq v0, v6, :cond_12f

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # setter for: Lmiui/util/LaySensorWrapper;->mCurttenState:I
    invoke-static {v0, v6}, Lmiui/util/LaySensorWrapper;->access$202(Lmiui/util/LaySensorWrapper;I)I

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    # getter for: Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12f
    :goto_12f
    return-void
.end method
