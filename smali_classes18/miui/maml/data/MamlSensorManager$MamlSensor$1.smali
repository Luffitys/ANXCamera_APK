.class Lmiui/maml/data/MamlSensorManager$MamlSensor$1;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/MamlSensorManager$MamlSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/MamlSensorManager$MamlSensor;


# direct methods
.method constructor <init>(Lmiui/maml/data/MamlSensorManager$MamlSensor;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lmiui/maml/data/MamlSensorManager$MamlSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lmiui/maml/data/MamlSensorManager$MamlSensor;

    # getter for: Lmiui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->access$300(Lmiui/maml/data/MamlSensorManager$MamlSensor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor$1;->this$0:Lmiui/maml/data/MamlSensorManager$MamlSensor;

    # getter for: Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;
    invoke-static {v1}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->access$200(Lmiui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEventListener;

    invoke-interface {v2, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_15

    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1
.end method
