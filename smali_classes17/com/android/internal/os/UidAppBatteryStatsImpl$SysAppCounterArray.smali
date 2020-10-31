.class public Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "UidAppBatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppBatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysAppCounterArray"
.end annotation


# instance fields
.field public mCounts:[J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-direct {v0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return-void
.end method

.method public static writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return-void
.end method


# virtual methods
.method public addCountLocked([J)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->addCountLocked([JZ)V

    return-void
.end method

.method public addCountLocked([JZ)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_1e

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    if-nez v0, :cond_e

    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    :cond_e
    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    return-void
.end method

.method public detach()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountsLocked(I)[J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 7

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7

    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    return-void
.end method

.method public reset(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    if-eqz v0, :cond_9

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    :cond_9
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->detach()V

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public writeSummaryToParcelLocked(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
