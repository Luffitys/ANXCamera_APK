.class final Landroid/hardware/LegacySensorManager;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LegacySensorManager$LmsFilter;,
        Landroid/hardware/LegacySensorManager$LegacyListener;
    }
.end annotation


# static fields
.field private static sInitialized:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/LegacySensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    :try_start_f
    sget-boolean v1, Landroid/hardware/LegacySensorManager;->sInitialized:Z

    if-nez v1, :cond_30

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_32

    if-eqz v1, :cond_30

    :try_start_22
    new-instance v2, Landroid/hardware/LegacySensorManager$1;

    invoke-direct {v2, p0}, Landroid/hardware/LegacySensorManager$1;-><init>(Landroid/hardware/LegacySensorManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v1

    sput v1, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2e} :catch_2f
    .catchall {:try_start_22 .. :try_end_2e} :catchall_32

    goto :goto_30

    :catch_2f
    move-exception v1

    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v1
.end method

.method static getRotation()I
    .registers 2

    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/hardware/LegacySensorManager;->sRotation:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static onRotationChanged(I)V
    .registers 3

    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    :try_start_3
    sput p0, Landroid/hardware/LegacySensorManager;->sRotation:I

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .registers 11

    const/4 v0, 0x0

    and-int v1, p4, p1

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_10
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/LegacySensorManager$LegacyListener;

    if-nez v3, :cond_25

    new-instance v4, Landroid/hardware/LegacySensorManager$LegacyListener;

    invoke-direct {v4, p3}, Landroid/hardware/LegacySensorManager$LegacyListener;-><init>(Landroid/hardware/SensorListener;)V

    move-object v3, v4

    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    invoke-virtual {v3, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->registerSensor(I)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3, v1, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    move v0, v4

    goto :goto_34

    :cond_33
    const/4 v0, 0x1

    :goto_34
    monitor-exit v2

    goto :goto_39

    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v3

    :cond_39
    :goto_39
    return v0
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .registers 9

    and-int v0, p4, p1

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_f
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/LegacySensorManager$LegacyListener;

    if-eqz v2, :cond_2f

    invoke-virtual {v2, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    invoke-virtual {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v2

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public getSensors()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_28

    const/4 v5, 0x3

    if-eq v4, v5, :cond_25

    goto :goto_2e

    :cond_25
    or-int/lit16 v0, v0, 0x81

    goto :goto_2e

    :cond_28
    or-int/lit8 v0, v0, 0x8

    goto :goto_2e

    :cond_2b
    or-int/lit8 v0, v0, 0x2

    nop

    :goto_2e
    goto :goto_b

    :cond_2f
    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_17

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move v2, v0

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v3

    :goto_18
    move v1, v2

    const/16 v5, 0x8

    const/4 v6, 0x2

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_2b

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    move v2, v0

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v2, v3

    :goto_2c
    move v1, v2

    const/16 v5, 0x80

    const/4 v6, 0x3

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_3f

    if-eqz v1, :cond_3d

    goto :goto_3f

    :cond_3d
    move v2, v0

    goto :goto_40

    :cond_3f
    :goto_3f
    move v2, v3

    :goto_40
    move v1, v2

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_52

    if-eqz v1, :cond_50

    goto :goto_52

    :cond_50
    move v2, v0

    goto :goto_53

    :cond_52
    :goto_52
    move v2, v3

    :goto_53
    move v1, v2

    const/4 v5, 0x4

    const/4 v6, 0x7

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_62

    if-eqz v1, :cond_63

    :cond_62
    move v0, v3

    :cond_63
    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    const/16 v0, 0x80

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    return-void
.end method
