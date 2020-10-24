.class public Lcom/android/camera/effect/renders/VertexHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALL_POINT:I = 0x16e

.field private static final INTER:D = 0.017453292519943295

.field private static final NUM_FLOAT:I = 0x2dc

.field private static final NUM_ROUND_POINT:I = 0x168

.field private static final TAG:Ljava/lang/String; = "VertexHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genRoundRectVex(III)[F
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x2dc

    new-array v4, v3, [F

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v5, v6

    const/4 v8, 0x0

    aput v7, v4, v8

    int-to-float v7, v1

    div-float v6, v7, v6

    const/4 v9, 0x1

    aput v6, v4, v9

    sub-int/2addr v0, v2

    sub-int/2addr v1, v2

    move v9, v8

    const/4 v10, 0x2

    :goto_0
    const/16 v11, 0x5a

    const-wide v12, 0x3f91df46a2529d39L    # 0.017453292519943295

    if-gt v9, v11, :cond_0

    int-to-double v14, v9

    mul-double/2addr v14, v12

    add-int/lit8 v11, v10, 0x1

    int-to-double v12, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v12

    move/from16 v18, v7

    int-to-double v6, v0

    add-double v6, v16, v6

    double-to-float v6, v6

    aput v6, v4, v10

    add-int/lit8 v10, v11, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v12, v6

    int-to-double v6, v1

    add-double/2addr v12, v6

    double-to-float v6, v12

    aput v6, v4, v11

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v18

    goto :goto_0

    :cond_0
    move/from16 v18, v7

    :goto_1
    const/16 v6, 0xb4

    if-gt v11, v6, :cond_1

    int-to-double v6, v11

    mul-double/2addr v6, v12

    add-int/lit8 v9, v10, 0x1

    int-to-double v14, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    add-double v12, v16, v14

    double-to-float v12, v12

    aput v12, v4, v10

    add-int/lit8 v10, v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v14, v6

    int-to-double v6, v1

    add-double/2addr v14, v6

    double-to-float v6, v14

    aput v6, v4, v9

    add-int/lit8 v11, v11, 0x1

    const-wide v12, 0x3f91df46a2529d39L    # 0.017453292519943295

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v1, 0x10e

    if-gt v6, v1, :cond_2

    int-to-double v11, v6

    const-wide v13, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v11, v13

    add-int/lit8 v1, v10, 0x1

    int-to-double v13, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double v8, v15, v13

    double-to-float v8, v8

    aput v8, v4, v10

    add-int/lit8 v10, v1, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v13

    add-double/2addr v8, v13

    double-to-float v8, v8

    aput v8, v4, v1

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v6, 0x168

    if-gt v1, v6, :cond_3

    int-to-double v8, v1

    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v8, v11

    add-int/lit8 v13, v10, 0x1

    int-to-double v14, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    int-to-double v6, v0

    add-double v6, v16, v6

    double-to-float v6, v6

    aput v6, v4, v10

    add-int/lit8 v10, v13, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v14

    add-double/2addr v6, v14

    double-to-float v6, v6

    aput v6, v4, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/16 v0, 0x2da

    const/4 v1, 0x2

    aget v1, v4, v1

    aput v1, v4, v0

    const/16 v0, 0x2db

    const/4 v1, 0x3

    aget v1, v4, v1

    aput v1, v4, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v3, :cond_4

    aget v0, v4, v8

    div-float/2addr v0, v5

    aput v0, v4, v8

    add-int/lit8 v0, v8, 0x1

    aget v1, v4, v0

    div-float v1, v1, v18

    aput v1, v4, v0

    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    :cond_4
    return-object v4
.end method
