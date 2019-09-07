.class Lcom/android/camera/SensorStateManager$3;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final CLEAR_FILTER_THRESHOLD:F = 3.0f

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2

.field private static final finalAlpha:F = 0.7f

.field private static final firstAlpha:F = 0.8f


# instance fields
.field private finalFilter:[F

.field private firstFilter:[F

.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    return-void
.end method

.method private clearFilter()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onAccuracyChanged accuracy="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SensorStateManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->access$000(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v5, v2

    const v7, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    aput v3, v1, v2

    const/4 v3, 0x1

    aget v6, v1, v3

    mul-float/2addr v6, v4

    aget v8, v5, v3

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    aput v6, v1, v3

    const/4 v6, 0x2

    aget v8, v1, v6

    mul-float/2addr v8, v4

    aget v4, v5, v6

    mul-float/2addr v4, v7

    add-float/2addr v8, v4

    aput v8, v1, v6

    iget-object v4, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v5, v4, v2

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v5, v7

    aget v8, v1, v2

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    aput v5, v4, v2

    aget v5, v4, v3

    mul-float/2addr v5, v7

    aget v8, v1, v3

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    aput v5, v4, v3

    aget v5, v4, v6

    mul-float/2addr v5, v7

    aget v1, v1, v6

    mul-float/2addr v1, v9

    add-float/2addr v5, v1

    aput v5, v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalFilter="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " event.values="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SensorStateManager"

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x40800000    # -1.0f

    iget-object v5, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v2, v5, v2

    neg-float v2, v2

    aget v3, v5, v3

    neg-float v3, v3

    aget v5, v5, v6

    neg-float v5, v5

    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    mul-float/2addr v5, v5

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_1

    const v1, 0x42652ee1

    neg-float v3, v3

    float-to-double v5, v3

    float-to-double v2, v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v2, v1}, Lcom/android/camera/SensorStateManager;->access$1600(Lcom/android/camera/SensorStateManager;F)F

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v2}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v2}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v2

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$3;->clearFilter()V

    :cond_2
    iget-object v2, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v2, v1}, Lcom/android/camera/SensorStateManager;->access$1302(Lcom/android/camera/SensorStateManager;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorEventListenerImpl TYPE_ACCELEROMETER mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v2}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mIsLyingForGradienter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v2}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v1}, Lcom/android/camera/SensorStateManager;->access$1300(Lcom/android/camera/SensorStateManager;)F

    move-result v1

    iget-object p0, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p0}, Lcom/android/camera/SensorStateManager;->access$1200(Lcom/android/camera/SensorStateManager;)Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    :cond_3
    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->isWorking()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v0, p1}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_4
    return-void
.end method
