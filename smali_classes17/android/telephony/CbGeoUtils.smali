.class public Landroid/telephony/CbGeoUtils;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CbGeoUtils$Circle;,
        Landroid/telephony/CbGeoUtils$Polygon;,
        Landroid/telephony/CbGeoUtils$LatLng;,
        Landroid/telephony/CbGeoUtils$Geometry;
    }
.end annotation


# static fields
.field private static final CIRCLE_SYMBOL:Ljava/lang/String; = "circle"

.field public static final EARTH_RADIUS_METER:I = 0x6136b8

.field public static final EPS:D = 1.0E-7

.field public static final GEOMETRY_TYPE_CIRCLE:I = 0x3

.field public static final GEOMETRY_TYPE_POLYGON:I = 0x2

.field public static final GEO_FENCING_MAXIMUM_WAIT_TIME:I = 0x1

.field private static final POLYGON_SYMBOL:Ljava/lang/String; = "polygon"

.field private static final TAG:Ljava/lang/String; = "CbGeoUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_26

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/telephony/-$$Lambda$CbGeoUtils$v-2S4s6H4lfdnoWt9tuWcyrnKkw;->INSTANCE:Landroid/telephony/-$$Lambda$CbGeoUtils$v-2S4s6H4lfdnoWt9tuWcyrnKkw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;->INSTANCE:Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_26
    :goto_26
    const-string v0, ""

    return-object v0
.end method

.method private static encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Polygon;

    const-string v2, ","

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "polygon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Polygon;->getVertices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_3c
    goto :goto_6c

    :cond_3d
    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Circle;

    if-eqz v1, :cond_71

    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Landroid/telephony/CbGeoUtils$Circle;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v4

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v2

    iget-wide v4, v2, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Circle;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    nop

    :goto_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported geometry object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CbGeoUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$encodeGeometriesToString$0(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/telephony/CbGeoUtils;->encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$encodeGeometriesToString$1(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_94

    aget-object v5, v1, v4

    const-string v6, "\\s*\\|\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v3

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x51134330

    const/4 v11, 0x1

    if-eq v9, v10, :cond_36

    const v10, -0x17b1aac6

    if-eq v9, v10, :cond_2b

    :cond_2a
    goto :goto_3f

    :cond_2b
    const-string/jumbo v9, "polygon"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    move v8, v11

    goto :goto_3f

    :cond_36
    const-string v9, "circle"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    move v8, v3

    :goto_3f
    if-eqz v8, :cond_7a

    if-eq v8, v11, :cond_5a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid geometry format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CbGeoUtils"

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :cond_5a
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    sub-int/2addr v8, v11

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x1

    :goto_62
    array-length v9, v6

    if-ge v8, v9, :cond_71

    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    :cond_71
    new-instance v8, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-direct {v8, v7}, Landroid/telephony/CbGeoUtils$Polygon;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    :cond_7a
    new-instance v7, Landroid/telephony/CbGeoUtils$Circle;

    aget-object v8, v6, v11

    invoke-static {v8}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10}, Landroid/telephony/CbGeoUtils$Circle;-><init>(Landroid/telephony/CbGeoUtils$LatLng;D)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_90
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_94
    return-object v0
.end method

.method public static parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;
    .registers 7

    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/CbGeoUtils$LatLng;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/telephony/CbGeoUtils$LatLng;-><init>(DD)V

    return-object v1
.end method

.method public static sign(D)I
    .registers 4

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, p0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const-wide v0, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v0, p0, v0

    if-gez v0, :cond_16

    const/4 v0, -0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method
