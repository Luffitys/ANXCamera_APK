.class public Landroid/location/FusedBatchOptions;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/FusedBatchOptions$BatchFlags;,
        Landroid/location/FusedBatchOptions$SourceTechnologies;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/FusedBatchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mFlags:I

.field private volatile mMaxPowerAllocationInMW:D

.field private volatile mPeriodInNS:J

.field private volatile mSmallestDisplacementMeters:F

.field private volatile mSourcesToUse:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/FusedBatchOptions$1;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions$1;-><init>()V

    sput-object v0, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .registers 3

    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-wide v0
.end method

.method public getPeriodInNS()J
    .registers 3

    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-wide v0
.end method

.method public getSmallestDisplacementMeters()F
    .registers 2

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return v0
.end method

.method public getSourcesToUse()I
    .registers 2

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return v0
.end method

.method public isFlagSet(I)Z
    .registers 3

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isSourceToUseSet(I)Z
    .registers 3

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public resetFlag(I)V
    .registers 4

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return-void
.end method

.method public resetSourceToUse(I)V
    .registers 4

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return-void
.end method

.method public setFlag(I)V
    .registers 3

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-void
.end method

.method public setPeriodInNS(J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-void
.end method

.method public setSmallestDisplacementMeters(F)V
    .registers 2

    iput p1, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return-void
.end method

.method public setSourceToUse(I)V
    .registers 3

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
