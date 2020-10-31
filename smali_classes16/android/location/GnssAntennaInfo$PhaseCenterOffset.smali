.class public final Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
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
    name = "PhaseCenterOffset"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAntennaInfo$PhaseCenterOffset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOffsetXMm:D

.field private final mOffsetXUncertaintyMm:D

.field private final mOffsetYMm:D

.field private final mOffsetYUncertaintyMm:D

.field private final mOffsetZMm:D

.field private final mOffsetZUncertaintyMm:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;

    invoke-direct {v0}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;-><init>()V

    sput-object v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    iput-wide p5, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    iput-wide p9, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    iput-wide p3, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    iput-wide p7, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    iput-wide p11, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getXOffsetMm()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    return-wide v0
.end method

.method public getXOffsetUncertaintyMm()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    return-wide v0
.end method

.method public getYOffsetMm()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    return-wide v0
.end method

.method public getYOffsetUncertaintyMm()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    return-wide v0
.end method

.method public getZOffsetMm()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    return-wide v0
.end method

.method public getZOffsetUncertaintyMm()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhaseCenterOffset{OffsetXMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " +/-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", OffsetYMm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", OffsetZMm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetXUncertaintyMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetYUncertaintyMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->mOffsetZUncertaintyMm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
