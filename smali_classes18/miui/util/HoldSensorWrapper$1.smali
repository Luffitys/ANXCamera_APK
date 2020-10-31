.class Lmiui/util/HoldSensorWrapper$1;
.super Ljava/lang/Object;
.source "HoldSensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HoldSensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/HoldSensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/HoldSensorWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/HoldSensorWrapper$1;->this$0:Lmiui/util/HoldSensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-eqz v1, :cond_35

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x3

    goto :goto_30

    :cond_15
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x1

    goto :goto_30

    :cond_23
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_30

    const/4 v0, 0x2

    :cond_30
    :goto_30
    iget-object v1, p0, Lmiui/util/HoldSensorWrapper$1;->this$0:Lmiui/util/HoldSensorWrapper;

    # invokes: Lmiui/util/HoldSensorWrapper;->notifyListeners(I)V
    invoke-static {v1, v0}, Lmiui/util/HoldSensorWrapper;->access$000(Lmiui/util/HoldSensorWrapper;I)V

    :cond_35
    return-void
.end method
