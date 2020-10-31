.class public Landroid/telephony/CbGeoUtils$Circle;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"

# interfaces
.implements Landroid/telephony/CbGeoUtils$Geometry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field private final mCenter:Landroid/telephony/CbGeoUtils$LatLng;

.field private final mRadiusMeter:D


# direct methods
.method public constructor <init>(Landroid/telephony/CbGeoUtils$LatLng;D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    iput-wide p2, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    return-void
.end method


# virtual methods
.method public contains(Landroid/telephony/CbGeoUtils$LatLng;)Z
    .registers 6

    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v0, p1}, Landroid/telephony/CbGeoUtils$LatLng;->distance(Landroid/telephony/CbGeoUtils$LatLng;)D

    move-result-wide v0

    iget-wide v2, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/CbGeoUtils$Circle;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CbGeoUtils$Circle;

    iget-object v3, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    iget-object v4, v1, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v3, v4}, Landroid/telephony/CbGeoUtils$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-wide v3, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    iget-wide v5, v1, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public getCenter()Landroid/telephony/CbGeoUtils$LatLng;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    return-object v0
.end method

.method public getRadius()D
    .registers 3

    iget-wide v0, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Circle: "

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_21
    return-object v0
.end method
