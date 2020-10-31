.class public Landroid/location/GnssAntennaInfo$Builder;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCarrierFrequencyMHz:D

.field private mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

.field private mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

.field private mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssAntennaInfo;
    .registers 9

    new-instance v7, Landroid/location/GnssAntennaInfo;

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    iget-object v3, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iget-object v4, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    iget-object v5, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAntennaInfo;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$1;)V

    return-object v7
.end method

.method public setCarrierFrequencyMHz(D)Landroid/location/GnssAntennaInfo$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    return-object p0
.end method

.method public setPhaseCenterOffset(Landroid/location/GnssAntennaInfo$PhaseCenterOffset;)Landroid/location/GnssAntennaInfo$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    return-object p0
.end method

.method public setPhaseCenterVariationCorrections(Landroid/location/GnssAntennaInfo$SphericalCorrections;)Landroid/location/GnssAntennaInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    return-object p0
.end method

.method public setSignalGainCorrections(Landroid/location/GnssAntennaInfo$SphericalCorrections;)Landroid/location/GnssAntennaInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    return-object p0
.end method
