.class public Lmiui/util/HoldSensorWrapper;
.super Ljava/lang/Object;
.source "HoldSensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HoldSensorWrapper$HoldSensorChangeListener;
    }
.end annotation


# static fields
.field private static final CMI_SENSOR_ID:I = 0x1fa2679

.field public static final EVENT_BOTTOM_HOLD:I = 0x2

.field public static final EVENT_FULL_HOLD:I = 0x3

.field public static final EVENT_NO_HOLD:I = 0x0

.field public static final EVENT_TOP_HOLD:I = 0x1

.field public static final NO_HOLD_SENSOR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HoldSensorWrapper"

.field private static final VENUS_SENSOR_ID:I = 0x1fa267a


# instance fields
.field private final mHoldSensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/util/HoldSensorWrapper$HoldSensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    new-instance v0, Lmiui/util/HoldSensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/HoldSensorWrapper$1;-><init>(Lmiui/util/HoldSensorWrapper;)V

    iput-object v0, p0, Lmiui/util/HoldSensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/HoldSensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2679

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HoldSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_31

    iget-object v0, p0, Lmiui/util/HoldSensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa267a

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HoldSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    :cond_31
    return-void
.end method

.method static synthetic access$000(Lmiui/util/HoldSensorWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/HoldSensorWrapper;->notifyListeners(I)V

    return-void
.end method

.method private notifyListeners(I)V
    .registers 5

    iget-object v0, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HoldSensorWrapper$HoldSensorChangeListener;

    invoke-interface {v2, p1}, Lmiui/util/HoldSensorWrapper$HoldSensorChangeListener;->onSensorChanged(I)V

    goto :goto_9

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private unregisterSensorEventListenerLocked()V
    .registers 4

    iget-object v0, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiui/util/HoldSensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/HoldSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public registerListener(Lmiui/util/HoldSensorWrapper$HoldSensorChangeListener;)V
    .registers 7

    iget-object v0, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "HoldSensorWrapper"

    const-string v2, "register HoldSensor at framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/util/HoldSensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lmiui/util/HoldSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_24
    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public unregisterAllListener()V
    .registers 4

    iget-object v0, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    const-string v1, "HoldSensorWrapper"

    const-string v2, "unregister HoldSensor at framework!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lmiui/util/HoldSensorWrapper;->unregisterSensorEventListenerLocked()V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public unregisterListener(Lmiui/util/HoldSensorWrapper$HoldSensorChangeListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/HoldSensorWrapper;->mHoldSensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/util/HoldSensorWrapper;->unregisterSensorEventListenerLocked()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
