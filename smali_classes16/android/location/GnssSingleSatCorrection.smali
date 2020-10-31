.class public final Landroid/location/GnssSingleSatCorrection;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssSingleSatCorrection$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAS_EXCESS_PATH_LENGTH_MASK:I = 0x2

.field public static final HAS_EXCESS_PATH_LENGTH_UNC_MASK:I = 0x4

.field public static final HAS_PROB_SAT_IS_LOS_MASK:I = 0x1

.field public static final HAS_REFLECTING_PLANE_MASK:I = 0x8


# instance fields
.field private final mCarrierFrequencyHz:F

.field private final mConstellationType:I

.field private final mExcessPathLengthMeters:F

.field private final mExcessPathLengthUncertaintyMeters:F

.field private final mProbSatIsLos:F

.field private final mReflectingPlane:Landroid/location/GnssReflectingPlane;

.field private final mSatId:I

.field private final mSingleSatCorrectionFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssSingleSatCorrection$1;

    invoke-direct {v0}, Landroid/location/GnssSingleSatCorrection$1;-><init>()V

    sput-object v0, Landroid/location/GnssSingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/location/GnssSingleSatCorrection$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$000(Landroid/location/GnssSingleSatCorrection$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mSatId:I
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$100(Landroid/location/GnssSingleSatCorrection$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mConstellationType:I
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$200(Landroid/location/GnssSingleSatCorrection$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mCarrierFrequencyHz:F
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$300(Landroid/location/GnssSingleSatCorrection$Builder;)F

    move-result v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$400(Landroid/location/GnssSingleSatCorrection$Builder;)F

    move-result v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mExcessPathLengthMeters:F
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$500(Landroid/location/GnssSingleSatCorrection$Builder;)F

    move-result v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthMeters:F

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mExcessPathLengthUncertaintyMeters:F
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$600(Landroid/location/GnssSingleSatCorrection$Builder;)F

    move-result v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthUncertaintyMeters:F

    # getter for: Landroid/location/GnssSingleSatCorrection$Builder;->mReflectingPlane:Landroid/location/GnssReflectingPlane;
    invoke-static {p1}, Landroid/location/GnssSingleSatCorrection$Builder;->access$700(Landroid/location/GnssSingleSatCorrection$Builder;)Landroid/location/GnssReflectingPlane;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssSingleSatCorrection;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GnssSingleSatCorrection$Builder;Landroid/location/GnssSingleSatCorrection$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssSingleSatCorrection;-><init>(Landroid/location/GnssSingleSatCorrection$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierFrequencyHz()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    return v0
.end method

.method public getConstellationType()I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    return v0
.end method

.method public getExcessPathLengthMeters()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthMeters:F

    return v0
.end method

.method public getExcessPathLengthUncertaintyMeters()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthUncertaintyMeters:F

    return v0
.end method

.method public getProbabilityLineOfSight()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    return v0
.end method

.method public getReflectingPlane()Landroid/location/GnssReflectingPlane;
    .registers 2

    iget-object v0, p0, Landroid/location/GnssSingleSatCorrection;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    return-object v0
.end method

.method public getSatelliteId()I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    return v0
.end method

.method public getSingleSatelliteCorrectionFlags()I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    return v0
.end method

.method public hasExcessPathLength()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasExcessPathLengthUncertainty()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasReflectingPlane()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasValidSatelliteLineOfSight()Z
    .registers 3

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-string v0, "   %-29s = %s\n"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssSingleSatCorrection:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SingleSatCorrectionFlags = "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "   %-29s = %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "ConstellationType = "

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "SatId = "

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "CarrierFrequencyHz = "

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "ProbSatIsLos = "

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "ExcessPathLengthMeters = "

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthMeters:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "ExcessPathLengthUncertaintyMeters = "

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthUncertaintyMeters:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasReflectingPlane()Z

    move-result v3

    if-eqz v3, :cond_b8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ReflectingPlane = "

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/location/GnssSingleSatCorrection;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    aput-object v3, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mExcessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasReflectingPlane()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/location/GnssSingleSatCorrection;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssReflectingPlane;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2e
    return-void
.end method
