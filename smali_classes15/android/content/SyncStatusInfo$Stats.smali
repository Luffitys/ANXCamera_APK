.class public Landroid/content/SyncStatusInfo$Stats;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public numCancels:I

.field public numFailures:I

.field public numSourceFeed:I

.field public numSourceLocal:I

.field public numSourceOther:I

.field public numSourcePeriodic:I

.field public numSourcePoll:I

.field public numSourceUser:I

.field public numSyncs:I

.field public totalElapsedTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    return-void
.end method

.method public copyTo(Landroid/content/SyncStatusInfo$Stats;)V
    .registers 4

    iget-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iput-wide v0, p1, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4

    iget-wide v0, p0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
