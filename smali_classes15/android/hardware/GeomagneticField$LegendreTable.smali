.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/hardware/GeomagneticField;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [[F

    iput-object v3, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v2, v7

    new-array v2, v4, [F

    const/4 v5, 0x0

    aput v5, v2, v7

    aput-object v2, v3, v7

    const/4 v2, 0x1

    :goto_2d
    if-gt v2, p1, :cond_e7

    iget-object v3, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [F

    aput-object v5, v3, v2

    iget-object v3, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [F

    aput-object v5, v3, v2

    const/4 v3, 0x0

    :goto_40
    if-gt v3, v2, :cond_e3

    if-ne v2, v3, :cond_6d

    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v5, v2

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v5, v7

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    mul-float/2addr v7, v1

    aput v7, v6, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v7, v6, v2

    add-int/lit8 v8, v2, -0x1

    aget-object v5, v5, v8

    add-int/lit8 v8, v3, -0x1

    aget v5, v5, v8

    mul-float/2addr v5, v0

    add-int/lit8 v8, v2, -0x1

    aget-object v6, v6, v8

    add-int/lit8 v8, v3, -0x1

    aget v6, v6, v8

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    aput v5, v7, v3

    goto :goto_df

    :cond_6d
    if-eq v2, v4, :cond_bc

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_74

    goto :goto_bc

    :cond_74
    nop

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v2, -0x1

    mul-int/2addr v5, v6

    mul-int v6, v3, v3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v4

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, -0x3

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v7, v6, v2

    add-int/lit8 v8, v2, -0x1

    aget-object v8, v6, v8

    aget v8, v8, v3

    mul-float/2addr v8, v0

    add-int/lit8 v9, v2, -0x2

    aget-object v9, v6, v9

    aget v9, v9, v3

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v7, v3

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v8, v7, v2

    neg-float v9, v1

    add-int/lit8 v10, v2, -0x1

    aget-object v6, v6, v10

    aget v6, v6, v3

    mul-float/2addr v9, v6

    add-int/lit8 v6, v2, -0x1

    aget-object v6, v7, v6

    aget v6, v6, v3

    mul-float/2addr v6, v0

    add-float/2addr v9, v6

    add-int/lit8 v6, v2, -0x2

    aget-object v6, v7, v6

    aget v6, v6, v3

    mul-float/2addr v6, v5

    sub-float/2addr v9, v6

    aput v9, v8, v3

    goto :goto_df

    :cond_bc
    :goto_bc
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v5, v2

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v5, v7

    aget v7, v7, v3

    mul-float/2addr v7, v0

    aput v7, v6, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v7, v6, v2

    neg-float v8, v1

    add-int/lit8 v9, v2, -0x1

    aget-object v5, v5, v9

    aget v5, v5, v3

    mul-float/2addr v8, v5

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v6, v5

    aget v5, v5, v3

    mul-float/2addr v5, v0

    add-float/2addr v8, v5

    aput v8, v7, v3

    :goto_df
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_40

    :cond_e3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d

    :cond_e7
    return-void
.end method
