.class public Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;
.super Ljava/lang/Object;
.source "UidAppBatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sensor"
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field final mHandle:I

.field protected mSyspkg:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

.field mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mSyspkg:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iput p3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mHandle:I

    return-void
.end method

.method private readTimersFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .registers 15

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mSyspkg:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iget-object v0, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSensorTimersSys:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_29

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mSyspkg:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iget-object v1, v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSensorTimersSys:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mHandle:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_29
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v7, v0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v1
.end method


# virtual methods
.method public detachFromTimeBase()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getHandle()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mHandle:I

    return v0
.end method

.method public getSensorBackgroundTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public getSensorTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->readTimersFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-void
.end method

.method reset()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return v1

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    return-void
.end method
