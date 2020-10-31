.class public Lmiui/maml/data/MamlSensorManager;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/MamlSensorManager$MamlSensor;,
        Lmiui/maml/data/MamlSensorManager$MamlSensorManagerHolder;
    }
.end annotation


# static fields
.field private static final INVALID_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MAML_SensorManager"

.field private static final sLock:Ljava/lang/Object;

.field private static sSensors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lmiui/maml/data/MamlSensorManager$MamlSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/MamlSensorManager$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/data/MamlSensorManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/maml/data/MamlSensorManager;
    .registers 1

    sget-object v0, Lmiui/maml/data/MamlSensorManager$MamlSensorManagerHolder;->INSTANCE:Lmiui/maml/data/MamlSensorManager;

    return-object v0
.end method

.method private getType(Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_72

    :cond_d
    goto :goto_5e

    :sswitch_e
    const-string v0, "accelerometer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_5f

    :sswitch_18
    const-string v0, "linear_acceleration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v5

    goto :goto_5f

    :sswitch_22
    const-string v0, "gyroscope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x7

    goto :goto_5f

    :sswitch_2c
    const-string v0, "gravity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v4

    goto :goto_5f

    :sswitch_36
    const-string v0, "light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_5f

    :sswitch_40
    const-string v0, "proximity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_5f

    :sswitch_4a
    const-string v0, "pressure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_5f

    :sswitch_54
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_5f

    :goto_5e
    move v0, v6

    :goto_5f
    packed-switch v0, :pswitch_data_94

    return v6

    :pswitch_63
    return v1

    :pswitch_64
    return v2

    :pswitch_65
    const/16 v0, 0x8

    return v0

    :pswitch_68
    return v3

    :pswitch_69
    const/16 v0, 0xa

    return v0

    :pswitch_6c
    return v4

    :pswitch_6d
    const/16 v0, 0x9

    return v0

    :pswitch_70
    return v5

    nop

    :sswitch_data_72
    .sparse-switch
        -0x55cd0a30 -> :sswitch_54
        -0x4c11e9bb -> :sswitch_4a
        -0x1d356f81 -> :sswitch_40
        0x6233516 -> :sswitch_36
        0x10b8724e -> :sswitch_2c
        0x136a6d05 -> :sswitch_22
        0x1ed8b35a -> :sswitch_18
        0x2998b04f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6d
        :pswitch_6c
        :pswitch_69
        :pswitch_68
        :pswitch_65
        :pswitch_64
        :pswitch_63
    .end packed-switch
.end method

.method private getValidRate(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    return v0

    :cond_a
    return v0

    :cond_b
    return v0
.end method


# virtual methods
.method public registerListener(Landroid/content/Context;Ljava/lang/String;ILandroid/hardware/SensorEventListener;)V
    .registers 10

    invoke-direct {p0, p3}, Lmiui/maml/data/MamlSensorManager;->getValidRate(I)I

    move-result v0

    sget-object v1, Lmiui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lmiui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/MamlSensorManager$MamlSensor;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0, p4}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->addCallback(ILandroid/hardware/SensorEventListener;)V

    goto :goto_2d

    :cond_15
    new-instance v3, Lmiui/maml/data/MamlSensorManager$MamlSensor;

    invoke-direct {p0, p2}, Lmiui/maml/data/MamlSensorManager;->getType(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, p1, v4, v0}, Lmiui/maml/data/MamlSensorManager$MamlSensor;-><init>(Landroid/content/Context;II)V

    move-object v2, v3

    # getter for: Lmiui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->access$100(Lmiui/maml/data/MamlSensorManager$MamlSensor;)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2, v0, p4}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->addCallback(ILandroid/hardware/SensorEventListener;)V

    sget-object v3, Lmiui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public unregisterListener(Ljava/lang/String;Landroid/hardware/SensorEventListener;)V
    .registers 6

    sget-object v0, Lmiui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/MamlSensorManager$MamlSensor;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p2}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->removeCallback(Landroid/hardware/SensorEventListener;)V

    # getter for: Lmiui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;
    invoke-static {v1}, Lmiui/maml/data/MamlSensorManager$MamlSensor;->access$200(Lmiui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lmiui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
