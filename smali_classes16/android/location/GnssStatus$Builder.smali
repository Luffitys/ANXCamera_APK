.class public final Landroid/location/GnssStatus$Builder;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mSatellites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/GnssStatus$GnssSvInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSatellite(IIFFFZZZZFZF)Landroid/location/GnssStatus$Builder;
    .registers 30

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    new-instance v15, Landroid/location/GnssStatus$GnssSvInfo;

    const/16 v16, 0x0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZFLandroid/location/GnssStatus$1;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/location/GnssStatus;
    .registers 15

    iget-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [I

    new-array v9, v0, [F

    new-array v10, v0, [F

    new-array v11, v0, [F

    new-array v12, v0, [F

    new-array v13, v0, [F

    const/4 v1, 0x0

    :goto_13
    array-length v2, v8

    if-ge v1, v2, :cond_27

    iget-object v2, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus$GnssSvInfo;

    # getter for: Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I
    invoke-static {v2}, Landroid/location/GnssStatus$GnssSvInfo;->access$100(Landroid/location/GnssStatus$GnssSvInfo;)I

    move-result v2

    aput v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_27
    const/4 v1, 0x0

    :goto_28
    array-length v2, v9

    if-ge v1, v2, :cond_3c

    iget-object v2, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus$GnssSvInfo;

    # getter for: Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F
    invoke-static {v2}, Landroid/location/GnssStatus$GnssSvInfo;->access$200(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v2

    aput v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    array-length v2, v10

    if-ge v1, v2, :cond_51

    iget-object v2, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus$GnssSvInfo;

    # getter for: Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F
    invoke-static {v2}, Landroid/location/GnssStatus$GnssSvInfo;->access$300(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v2

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_51
    const/4 v1, 0x0

    :goto_52
    array-length v2, v11

    if-ge v1, v2, :cond_66

    iget-object v2, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus$GnssSvInfo;

    # getter for: Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F
    invoke-static {v2}, Landroid/location/GnssStatus$GnssSvInfo;->access$400(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v2

    aput v2, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_66
    const/4 v1, 0x0

    :goto_67
    array-length v2, v12

    if-ge v1, v2, :cond_7b

    iget-object v2, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus$GnssSvInfo;

    # getter for: Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F
    invoke-static {v2}, Landroid/location/GnssStatus$GnssSvInfo;->access$500(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v2

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    array-length v2, v13

    if-ge v1, v2, :cond_90

    iget-object v2, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus$GnssSvInfo;

    # getter for: Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F
    invoke-static {v2}, Landroid/location/GnssStatus$GnssSvInfo;->access$600(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v2

    aput v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_90
    move v1, v0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object v1

    return-object v1
.end method

.method public clearSatellites()Landroid/location/GnssStatus$Builder;
    .registers 2

    iget-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method
