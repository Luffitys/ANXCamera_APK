.class public Landroid/graphics/fonts/FontFileUtil;
.super Ljava/lang/Object;
.source "FontFileUtil.java"


# static fields
.field private static final ANALYZE_ERROR:I = -0x1

.field private static final OS2_TABLE_TAG:I = 0x4f532f32

.field private static final SFNT_VERSION_1:I = 0x10000

.field private static final SFNT_VERSION_OTTO:I = 0x4f54544f

.field private static final TTC_TAG:I = 0x74746366


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_45

    array-length v7, v3

    move v8, v5

    :goto_e
    if-ge v8, v7, :cond_42

    aget-object v9, v3, v8

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "wght"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v10

    float-to-int v0, v10

    goto :goto_3f

    :cond_25
    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ital"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3d

    move v10, v6

    goto :goto_3e

    :cond_3d
    move v10, v5

    :goto_3e
    move v4, v10

    :cond_3f
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_42
    move v7, v4

    move v4, v0

    goto :goto_47

    :cond_45
    move v7, v4

    move v4, v0

    :goto_47
    const/4 v0, -0x1

    if-eq v4, v0, :cond_54

    if-eq v7, v0, :cond_54

    if-ne v7, v6, :cond_4f

    move v5, v6

    :cond_4f
    invoke-static {v4, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0

    return v0

    :cond_54
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    :try_start_5e
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const v11, 0x74746366

    if-ne v10, v11, :cond_7d

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_ec

    if-lt v2, v11, :cond_74

    nop

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return v0

    :cond_74
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0xc

    :try_start_78
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    move v9, v11

    :cond_7d
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_ec

    const/high16 v12, 0x10000

    if-eq v11, v12, :cond_8f

    const v12, 0x4f54544f    # 3.56229504E9f

    if-eq v11, v12, :cond_8f

    nop

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return v0

    :cond_8f
    add-int/lit8 v12, v9, 0x4

    :try_start_91
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    :goto_97
    if-ge v14, v12, :cond_b5

    add-int/lit8 v15, v9, 0xc

    mul-int/lit8 v16, v14, 0x10

    add-int v15, v15, v16

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v5, 0x4f532f32

    if-ne v6, v5, :cond_b0

    add-int/lit8 v5, v15, 0x8

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    move v13, v5

    goto :goto_b5

    :cond_b0
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_97

    :cond_b5
    :goto_b5
    if-ne v13, v0, :cond_c2

    const/16 v0, 0x190

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0
    :try_end_be
    .catchall {:try_start_91 .. :try_end_be} :catchall_ec

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return v0

    :cond_c2
    const/4 v5, 0x0

    add-int/lit8 v6, v13, 0x4

    :try_start_c5
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    add-int/lit8 v14, v13, 0x3e

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    const/4 v15, 0x1

    and-int/2addr v14, v15

    if-eqz v14, :cond_d5

    const/4 v15, 0x1

    goto :goto_d6

    :cond_d5
    move v15, v5

    :goto_d6
    move v14, v15

    if-ne v4, v0, :cond_db

    move v15, v6

    goto :goto_dc

    :cond_db
    move v15, v4

    :goto_dc
    if-ne v7, v0, :cond_e0

    move v5, v14

    goto :goto_e4

    :cond_e0
    const/4 v0, 0x1

    if-ne v7, v0, :cond_e4

    move v5, v0

    :cond_e4
    :goto_e4
    invoke-static {v15, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0
    :try_end_e8
    .catchall {:try_start_c5 .. :try_end_e8} :catchall_ec

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return v0

    :catchall_ec
    move-exception v0

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v0
.end method

.method public static isSuccess(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private static pack(IZ)I
    .registers 3

    if-eqz p1, :cond_5

    const/high16 v0, 0x10000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    or-int/2addr v0, p0

    return v0
.end method

.method public static unpackItalic(I)Z
    .registers 2

    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static unpackWeight(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
