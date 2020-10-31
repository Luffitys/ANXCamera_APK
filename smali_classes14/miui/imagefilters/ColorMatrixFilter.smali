.class public Lmiui/imagefilters/ColorMatrixFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ColorMatrixFilter.java"


# instance fields
.field private mColorMatrix:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    if-eqz v2, :cond_12d

    array-length v2, v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_f

    goto/16 :goto_12d

    :cond_f
    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    iget-object v5, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x2

    aget v9, v5, v9

    const/4 v10, 0x3

    aget v10, v5, v10

    const/4 v11, 0x4

    aget v11, v5, v11

    const/4 v12, 0x5

    aget v12, v5, v12

    const/4 v13, 0x6

    aget v13, v5, v13

    const/4 v14, 0x7

    aget v14, v5, v14

    const/16 v15, 0x8

    aget v15, v5, v15

    const/16 v16, 0x9

    aget v16, v5, v16

    const/16 v17, 0xa

    aget v17, v5, v17

    const/16 v18, 0xb

    aget v18, v5, v18

    const/16 v19, 0xc

    aget v19, v5, v19

    const/16 v20, 0xd

    aget v20, v5, v20

    const/16 v21, 0xe

    aget v21, v5, v21

    const/16 v22, 0xf

    aget v22, v5, v22

    const/16 v23, 0x10

    aget v23, v5, v23

    const/16 v24, 0x11

    aget v24, v5, v24

    const/16 v25, 0x12

    aget v25, v5, v25

    const/16 v26, 0x13

    aget v5, v5, v26

    const/16 v26, 0x0

    move/from16 v6, v26

    :goto_63
    add-int/lit8 v0, v3, -0x1

    if-gt v6, v0, :cond_12c

    const/4 v0, 0x0

    :goto_68
    add-int/lit8 v1, v2, -0x1

    if-gt v0, v1, :cond_111

    mul-int v1, v6, v2

    add-int/2addr v1, v0

    move/from16 v26, v2

    aget v2, v4, v1

    move/from16 v28, v3

    ushr-int/lit8 v3, v2, 0x10

    move/from16 v29, v6

    const/16 v6, 0xff

    and-int/2addr v3, v6

    move/from16 v30, v0

    ushr-int/lit8 v0, v2, 0x8

    and-int/2addr v0, v6

    and-int/lit16 v6, v2, 0xff

    move/from16 v32, v1

    ushr-int/lit8 v1, v2, 0x18

    move/from16 v33, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v2, v7

    move/from16 v34, v7

    int-to-float v7, v0

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    int-to-float v7, v6

    mul-float/2addr v7, v9

    add-float/2addr v2, v7

    int-to-float v7, v1

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    add-float/2addr v2, v11

    float-to-int v2, v2

    move/from16 v35, v8

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static {v7, v2, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v2

    int-to-float v7, v3

    mul-float/2addr v7, v12

    int-to-float v8, v0

    mul-float/2addr v8, v13

    add-float/2addr v7, v8

    int-to-float v8, v6

    mul-float/2addr v8, v14

    add-float/2addr v7, v8

    int-to-float v8, v1

    mul-float/2addr v8, v15

    add-float/2addr v7, v8

    add-float v7, v7, v16

    float-to-int v7, v7

    move/from16 v36, v9

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v8, v7, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v7

    int-to-float v8, v3

    mul-float v8, v8, v17

    int-to-float v9, v0

    mul-float v9, v9, v18

    add-float/2addr v8, v9

    int-to-float v9, v6

    mul-float v9, v9, v19

    add-float/2addr v8, v9

    int-to-float v9, v1

    mul-float v9, v9, v20

    add-float/2addr v8, v9

    add-float v8, v8, v21

    float-to-int v8, v8

    move/from16 v37, v10

    const/4 v9, 0x0

    const/16 v10, 0xff

    invoke-static {v9, v8, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v8

    int-to-float v9, v3

    mul-float v9, v9, v22

    int-to-float v10, v0

    mul-float v10, v10, v23

    add-float/2addr v9, v10

    int-to-float v10, v6

    mul-float v10, v10, v24

    add-float/2addr v9, v10

    int-to-float v10, v1

    mul-float v10, v10, v25

    add-float/2addr v9, v10

    add-float/2addr v9, v5

    float-to-int v9, v9

    move/from16 v27, v0

    const/16 v0, 0xff

    const/4 v10, 0x0

    invoke-static {v10, v9, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    shl-int/lit8 v9, v0, 0x18

    shl-int/lit8 v31, v2, 0x10

    or-int v9, v9, v31

    shl-int/lit8 v31, v7, 0x8

    or-int v9, v9, v31

    or-int/2addr v9, v8

    aput v9, v4, v32

    add-int/lit8 v0, v30, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v28

    move/from16 v6, v29

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v9, v36

    move/from16 v10, v37

    goto/16 :goto_68

    :cond_111
    move/from16 v30, v0

    move/from16 v26, v2

    move/from16 v28, v3

    move/from16 v29, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v10

    const/4 v10, 0x0

    add-int/lit8 v6, v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, v37

    goto/16 :goto_63

    :cond_12c
    return-void

    :cond_12d
    :goto_12d
    return-void
.end method

.method public setColorMatrix([F)V
    .registers 2

    iput-object p1, p0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    return-void
.end method
