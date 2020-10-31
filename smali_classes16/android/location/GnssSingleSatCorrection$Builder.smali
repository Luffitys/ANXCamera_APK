.class public final Landroid/location/GnssSingleSatCorrection$Builder;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssSingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCarrierFrequencyHz:F

.field private mConstellationType:I

.field private mExcessPathLengthMeters:F

.field private mExcessPathLengthUncertaintyMeters:F

.field private mProbSatIsLos:F

.field private mReflectingPlane:Landroid/location/GnssReflectingPlane;

.field private mSatId:I

.field private mSingleSatCorrectionFlags:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/location/GnssSingleSatCorrection$Builder;)I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return v0
.end method

.method static synthetic access$100(Landroid/location/GnssSingleSatCorrection$Builder;)I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSatId:I

    return v0
.end method

.method static synthetic access$200(Landroid/location/GnssSingleSatCorrection$Builder;)I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mConstellationType:I

    return v0
.end method

.method static synthetic access$300(Landroid/location/GnssSingleSatCorrection$Builder;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCarrierFrequencyHz:F

    return v0
.end method

.method static synthetic access$400(Landroid/location/GnssSingleSatCorrection$Builder;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    return v0
.end method

.method static synthetic access$500(Landroid/location/GnssSingleSatCorrection$Builder;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mExcessPathLengthMeters:F

    return v0
.end method

.method static synthetic access$600(Landroid/location/GnssSingleSatCorrection$Builder;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mExcessPathLengthUncertaintyMeters:F

    return v0
.end method

.method static synthetic access$700(Landroid/location/GnssSingleSatCorrection$Builder;)Landroid/location/GnssReflectingPlane;
    .registers 2

    iget-object v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/location/GnssSingleSatCorrection;
    .registers 3

    new-instance v0, Landroid/location/GnssSingleSatCorrection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssSingleSatCorrection;-><init>(Landroid/location/GnssSingleSatCorrection$Builder;Landroid/location/GnssSingleSatCorrection$1;)V

    return-object v0
.end method

.method public setCarrierFrequencyHz(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCarrierFrequencyHz:F

    return-object p0
.end method

.method public setConstellationType(I)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mConstellationType:I

    return-object p0
.end method

.method public setExcessPathLengthMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 3

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mExcessPathLengthMeters:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setExcessPathLengthUncertaintyMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 3

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mExcessPathLengthUncertaintyMeters:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setProbabilityLineOfSight(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "probSatIsLos should be between 0 and 1."

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setReflectingPlane(Landroid/location/GnssReflectingPlane;)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 3

    iput-object p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    if-eqz p1, :cond_c

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    goto :goto_13

    :cond_c
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    :goto_13
    return-object p0
.end method

.method public setSatelliteId(I)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSatId:I

    return-object p0
.end method
