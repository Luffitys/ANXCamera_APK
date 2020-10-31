.class public Landroid/graphics/ColorSpace$Rgb$TransferParameters;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferParameters"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(DDDDD)V
    .registers 26

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .registers 31

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_f3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_f3

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_f3

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_ec

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_ec

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_ec

    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_e5

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-ltz v11, :cond_c8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Math;->ulp(F)F

    move-result v12

    add-float/2addr v12, v11

    float-to-double v11, v12

    cmpg-double v11, v5, v11

    if-gtz v11, :cond_c8

    cmpl-double v11, v5, v9

    if-nez v11, :cond_5e

    cmpl-double v11, v1, v9

    if-eqz v11, :cond_56

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_56

    goto :goto_5e

    :cond_56
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Parameter a or g is zero, the transfer function is constant"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5e
    :goto_5e
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v5, v11

    if-ltz v11, :cond_71

    cmpl-double v11, v3, v9

    if-eqz v11, :cond_69

    goto :goto_71

    :cond_69
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Parameter c is zero, the transfer function is constant"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_71
    :goto_71
    cmpl-double v11, v1, v9

    if-eqz v11, :cond_79

    cmpl-double v11, v7, v9

    if-nez v11, :cond_7d

    :cond_79
    cmpl-double v11, v3, v9

    if-eqz v11, :cond_ba

    :cond_7d
    cmpg-double v11, v3, v9

    if-ltz v11, :cond_ac

    cmpg-double v11, v1, v9

    if-ltz v11, :cond_9e

    cmpg-double v9, v7, v9

    if-ltz v9, :cond_9e

    iput-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    move-wide/from16 v9, p3

    iput-wide v9, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iput-wide v3, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iput-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    move-wide/from16 v11, p9

    iput-wide v11, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    move-wide/from16 v13, p11

    iput-wide v13, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iput-wide v7, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    return-void

    :cond_9e
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v0, "The transfer function must be positive or increasing"

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_ac
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v15, "The transfer function must be increasing"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v15, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c8
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter d must be in the range [0..1], was "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e5
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    goto :goto_f9

    :cond_ec
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    goto :goto_f9

    :cond_f3
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    :goto_f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_64

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_20

    return v1

    :cond_20
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2b

    return v1

    :cond_2b
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_36

    return v1

    :cond_36
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_41

    return v1

    :cond_41
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4c

    return v1

    :cond_4c
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_57

    return v1

    :cond_57
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    :goto_63
    return v0

    :cond_64
    :goto_64
    return v1
.end method

.method public hashCode()I
    .registers 8

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v3, v0

    long-to-int v3, v3

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v4, v5

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v3, v5

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v4, v5

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v3, v5

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v4, v5

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v2, v5

    add-int/2addr v3, v2

    return v3
.end method
