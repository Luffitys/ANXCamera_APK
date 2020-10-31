.class public Lmiui/util/LaySensorWrapper;
.super Ljava/lang/Object;
.source "LaySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LaySensorWrapper$LaySensorChangeListener;
    }
.end annotation


# static fields
.field private static final ATTITUDE_DEFAULT:I = 0x0

.field private static final ATTITUDE_HORIZONTAL:I = 0x3

.field private static final ATTITUDE_LAYFLAT:I = 0x1

.field private static final ATTITUDE_UPRIGHT_DOWN:I = 0x4

.field private static final ATTITUDE_UPRIGHT_UP:I = 0x2

.field public static final DELAY_TIME:I = 0x3e8

.field public static final EVENT_CLOSE:I = 0x2

.field public static final EVENT_DEFAULT:I = 0x0

.field public static final EVENT_INCREASE:I = 0x1

.field private static final LAY_SENSOR_ID:I = 0x1fa2674

.field public static final NO_LAY_SENSOR:I = -0x1

.field private static final PERSPECTIVE_DOWN:I = 0x1

.field private static final PERSPECTIVE_NONE:I = 0x0

.field private static final PERSPECTIVE_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LaySensorWrapper"


# instance fields
.field private mAttitude:I

.field private mContext:Landroid/content/Context;

.field private mCurttenState:I

.field private mHandler:Landroid/os/Handler;

.field private final mLaySensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/util/LaySensorWrapper$LaySensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPerspective:I

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/LaySensorWrapper;->mCurttenState:I

    new-instance v0, Lmiui/util/LaySensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/LaySensorWrapper$1;-><init>(Lmiui/util/LaySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lmiui/util/LaySensorWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/util/LaySensorWrapper$2;

    invoke-direct {v0, p0}, Lmiui/util/LaySensorWrapper$2;-><init>(Lmiui/util/LaySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2674

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lmiui/util/LaySensorWrapper;)I
    .registers 2

    iget v0, p0, Lmiui/util/LaySensorWrapper;->mAttitude:I

    return v0
.end method

.method static synthetic access$002(Lmiui/util/LaySensorWrapper;I)I
    .registers 2

    iput p1, p0, Lmiui/util/LaySensorWrapper;->mAttitude:I

    return p1
.end method

.method static synthetic access$100(Lmiui/util/LaySensorWrapper;)I
    .registers 2

    iget v0, p0, Lmiui/util/LaySensorWrapper;->mPerspective:I

    return v0
.end method

.method static synthetic access$102(Lmiui/util/LaySensorWrapper;I)I
    .registers 2

    iput p1, p0, Lmiui/util/LaySensorWrapper;->mPerspective:I

    return p1
.end method

.method static synthetic access$200(Lmiui/util/LaySensorWrapper;)I
    .registers 2

    iget v0, p0, Lmiui/util/LaySensorWrapper;->mCurttenState:I

    return v0
.end method

.method static synthetic access$202(Lmiui/util/LaySensorWrapper;I)I
    .registers 2

    iput p1, p0, Lmiui/util/LaySensorWrapper;->mCurttenState:I

    return p1
.end method

.method static synthetic access$300(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/util/LaySensorWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/LaySensorWrapper;->notifyListeners(I)V

    return-void
.end method

.method private notifyListeners(I)V
    .registers 5

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/LaySensorWrapper$LaySensorChangeListener;

    invoke-interface {v2, p1}, Lmiui/util/LaySensorWrapper$LaySensorChangeListener;->onSensorChanged(I)V

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


# virtual methods
.method public registerListener(Lmiui/util/LaySensorWrapper$LaySensorChangeListener;)V
    .registers 7

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "LaySensorWrapper"

    const-string v2, "register LaySensor at framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/util/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lmiui/util/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_24
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .registers 3

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lmiui/util/LaySensorWrapper;->unregisterSensorEventListenerLocked()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public unregisterListener(Lmiui/util/LaySensorWrapper$LaySensorChangeListener;)V
    .registers 5

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    const-string v1, "LaySensorWrapper"

    const-string v2, "unRegister LaySensor at framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmiui/util/LaySensorWrapper;->unregisterSensorEventListenerLocked()V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public unregisterSensorEventListenerLocked()V
    .registers 4

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiui/util/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_11
    return-void
.end method
