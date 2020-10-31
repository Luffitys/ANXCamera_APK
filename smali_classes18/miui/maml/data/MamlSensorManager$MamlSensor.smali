.class Lmiui/maml/data/MamlSensorManager$MamlSensor;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/MamlSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MamlSensor"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/data/MamlSensorManager$MamlSensor$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/MamlSensorManager$MamlSensor$1;-><init>(Lmiui/maml/data/MamlSensorManager$MamlSensor;)V

    iput-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    const-string v0, "MAML_SensorManager"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wront sensor type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    iput p2, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    iput p3, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get sensor! TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5f
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/MamlSensorManager$MamlSensor;)Landroid/hardware/Sensor;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/data/MamlSensorManager$MamlSensor;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private registerListener()Z
    .registers 5

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_31

    iget-boolean v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    if-nez v1, :cond_31

    :try_start_8
    iget-object v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    const-string v0, "MAML_SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    :goto_31
    iget-boolean v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    return v0
.end method

.method private unRegisterListener()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2f

    iget-boolean v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    if-eqz v1, :cond_2f

    :try_start_8
    iget-object v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    const-string v0, "MAML_SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/hardware/SensorEventListener;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    const/4 v0, 0x0

    iget v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    if-ge v1, p1, :cond_15

    iput p1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    const/4 v0, 0x1

    :cond_15
    if-eqz v0, :cond_1e

    iget-boolean v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    if-eqz v1, :cond_1e

    invoke-direct {p0}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    :cond_1e
    invoke-direct {p0}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    return-void

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public removeCallback(Landroid/hardware/SensorEventListener;)V
    .registers 9

    iget-object v0, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    iget-object v2, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4e

    const/4 v3, 0x3

    iput v3, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    iget-object v3, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget v5, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_44

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    :cond_44
    goto :goto_2a

    :cond_45
    iget v3, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    iget-object v3, p0, Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-nez v3, :cond_5a

    invoke-direct {p0}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    goto :goto_62

    :cond_5a
    if-eqz v2, :cond_62

    invoke-direct {p0}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    invoke-direct {p0}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    :cond_62
    :goto_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v1
.end method
