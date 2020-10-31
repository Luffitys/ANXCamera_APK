.class public Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;
.super Ljava/lang/Object;
.source "UidAppBatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wakelock"
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field protected mUp:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mUp:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    return-void
.end method

.method private readDualTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;"
        }
    .end annotation

    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public detachFromTimeBase()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getWakeTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mUp:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iget-object v0, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->readDualTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-void
.end method

.method reset()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    :cond_d
    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_19
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    return-void
.end method
