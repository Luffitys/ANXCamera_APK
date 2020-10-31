.class public final Landroid/location/GnssAntennaInfo$SphericalCorrections;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SphericalCorrections"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAntennaInfo$SphericalCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCorrectionUncertainties:[[D

.field private final mCorrections:[[D

.field private final mDeltaPhi:D

.field private final mDeltaTheta:D

.field private final mNumColumns:I

.field private final mNumRows:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssAntennaInfo$SphericalCorrections$1;

    invoke-direct {v0}, Landroid/location/GnssAntennaInfo$SphericalCorrections$1;-><init>()V

    sput-object v0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    const-class v0, D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v6, 0x0

    aput v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-array v3, v3, [I

    aput v2, v3, v5

    aput v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v1, :cond_33

    aget-object v5, v4, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readDoubleArray([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_33
    const/4 v3, 0x0

    :goto_34
    if-ge v3, v1, :cond_3e

    aget-object v5, v0, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readDoubleArray([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_3e
    iput v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    iput v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    iput-object v4, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    const-wide v5, 0x4076800000000000L    # 360.0

    int-to-double v7, v1

    div-double/2addr v5, v7

    iput-wide v5, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaTheta:D

    const-wide v5, 0x4066800000000000L    # 180.0

    add-int/lit8 v3, v2, -0x1

    int-to-double v7, v3

    div-double/2addr v5, v7

    iput-wide v5, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaPhi:D

    return-void
.end method

.method public constructor <init>([[D[[D)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_46

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    aget-object v2, p2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_46

    array-length v1, p1

    iput v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3e

    aget-object v0, p1, v0

    array-length v0, v0

    iput v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_36

    iput-object p1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    iput-object p2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    const-wide v3, 0x4076800000000000L    # 360.0

    int-to-double v5, v1

    div-double/2addr v3, v5

    iput-wide v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaTheta:D

    const-wide v3, 0x4066800000000000L    # 180.0

    sub-int/2addr v0, v2

    int-to-double v0, v0

    div-double/2addr v3, v0

    iput-wide v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaPhi:D

    return-void

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arrays must have at least two columns."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arrays must have at least one row."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Correction and correction uncertainty arrays must have the same dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCorrectionUncertaintiesArray()[[D
    .registers 2

    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    return-object v0
.end method

.method public getCorrectionsArray()[[D
    .registers 2

    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    return-object v0
.end method

.method public getDeltaPhi()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaPhi:D

    return-wide v0
.end method

.method public getDeltaTheta()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaTheta:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SphericalCorrections{Corrections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CorrectionUncertainties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DeltaTheta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaTheta:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", DeltaPhi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mDeltaPhi:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeDoubleArray([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    array-length v1, v0

    :goto_1c
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeDoubleArray([D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_26
    return-void
.end method
