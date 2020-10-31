.class public Lmiui/imagefilters/ConvolutionFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ConvolutionFilter.java"


# instance fields
.field private mBias:I

.field private mDivisor:I

.field private mIsFilterA:Z

.field private mIsFilterB:Z

.field private mIsFilterG:Z

.field private mIsFilterR:Z

.field private mIsParamsFormated:Z

.field private mMatrix:[I

.field private mMatrixSideLength:I

.field private mRepeatCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    return-void
.end method

.method private declared-synchronized formatParams()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_69

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    if-eqz v1, :cond_67

    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v1, v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_19

    const/4 v1, 0x3

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    goto :goto_3a

    :cond_19
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v1, v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_24

    const/4 v1, 0x5

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    goto :goto_3a

    :cond_24
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v1, v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    mul-int v2, v1, v1

    iget-object v3, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v3, v3

    if-ne v2, v3, :cond_5f

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_57

    :goto_3a
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    if-nez v1, :cond_67

    const/4 v1, 0x0

    :goto_3f
    iget-object v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v2, v2

    if-ge v1, v2, :cond_50

    iget v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    iget-object v3, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_50
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    if-nez v1, :cond_67

    iput v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    goto :goto_67

    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "matrixX and matrixY must be odd."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "matrix must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_67
    .catchall {:try_start_8 .. :try_end_67} :catchall_69

    :cond_67
    :goto_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final getColor([IIIII)I
    .registers 7

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p1

    add-int/lit8 v0, p4, -0x1

    invoke-static {v1, p2, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p2

    mul-int v0, p2, p3

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method

.method private processOnce(Lmiui/imagefilters/ImageData;)V
    .registers 15

    iget v6, p1, Lmiui/imagefilters/ImageData;->width:I

    iget v7, p1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v8, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->getBackPixels()[I

    move-result-object v9

    const/4 v0, 0x0

    move v10, v0

    :goto_c
    add-int/lit8 v0, v7, -0x1

    if-gt v10, v0, :cond_2c

    const/4 v0, 0x0

    move v11, v0

    :goto_12
    add-int/lit8 v0, v6, -0x1

    if-gt v11, v0, :cond_29

    mul-int v0, v10, v6

    add-int v12, v0, v11

    move-object v0, p0

    move-object v1, v8

    move v2, v11

    move v3, v10

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/ConvolutionFilter;->processPerPixel([IIIII)I

    move-result v0

    aput v0, v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_2c
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->swapPixels()V

    return-void
.end method

.method private processPerPixel([IIIII)I
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    neg-int v7, v5

    :goto_e
    const/16 v8, 0xff

    if-gt v7, v5, :cond_59

    neg-int v9, v5

    :goto_13
    if-gt v9, v5, :cond_50

    iget-object v10, v0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    aget v10, v10, v6

    add-int v11, p2, v9

    add-int v12, p3, v7

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-static {v13, v11, v12, v14, v15}, Lmiui/imagefilters/ConvolutionFilter;->getColor([IIIII)I

    move-result v11

    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    if-eqz v12, :cond_30

    ushr-int/lit8 v12, v11, 0x10

    and-int/2addr v12, v8

    mul-int/2addr v12, v10

    add-int/2addr v1, v12

    :cond_30
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    if-eqz v12, :cond_39

    ushr-int/lit8 v12, v11, 0x8

    and-int/2addr v12, v8

    mul-int/2addr v12, v10

    add-int/2addr v2, v12

    :cond_39
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    if-eqz v12, :cond_41

    and-int/lit16 v12, v11, 0xff

    mul-int/2addr v12, v10

    add-int/2addr v3, v12

    :cond_41
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    if-eqz v12, :cond_4a

    ushr-int/lit8 v12, v11, 0x18

    and-int/2addr v12, v8

    mul-int/2addr v12, v10

    add-int/2addr v4, v12

    :cond_4a
    nop

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_50
    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_59
    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-static/range {p1 .. p5}, Lmiui/imagefilters/ConvolutionFilter;->getColor([IIIII)I

    move-result v7

    iget-boolean v9, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_74

    iget v9, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v9, v1, v9

    iget v11, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v9, v11

    invoke-static {v10, v9, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v9

    goto :goto_77

    :cond_74
    ushr-int/lit8 v9, v7, 0x10

    and-int/2addr v9, v8

    :goto_77
    iget-boolean v11, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    if-eqz v11, :cond_87

    iget v11, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v11, v2, v11

    iget v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v11, v12

    invoke-static {v10, v11, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v11

    goto :goto_8a

    :cond_87
    ushr-int/lit8 v11, v7, 0x8

    and-int/2addr v11, v8

    :goto_8a
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    if-eqz v12, :cond_9c

    iget v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v12, v3, v12

    move/from16 v16, v1

    iget v1, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v12, v1

    invoke-static {v10, v12, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v1

    goto :goto_a0

    :cond_9c
    move/from16 v16, v1

    and-int/lit16 v1, v7, 0xff

    :goto_a0
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    if-eqz v12, :cond_b2

    iget v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v12, v4, v12

    move/from16 v17, v2

    iget v2, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v12, v2

    invoke-static {v10, v12, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v2

    goto :goto_b7

    :cond_b2
    move/from16 v17, v2

    ushr-int/lit8 v2, v7, 0x18

    and-int/2addr v2, v8

    :goto_b7
    shl-int/lit8 v8, v2, 0x18

    shl-int/lit8 v10, v9, 0x10

    or-int/2addr v8, v10

    shl-int/lit8 v10, v11, 0x8

    or-int/2addr v8, v10

    or-int/2addr v8, v1

    return v8
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lmiui/imagefilters/ConvolutionFilter;->formatParams()V

    :cond_7
    iget-object v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mRepeatCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_12

    move v0, v1

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_1b

    invoke-direct {p0, p1}, Lmiui/imagefilters/ConvolutionFilter;->processOnce(Lmiui/imagefilters/ImageData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1b
    return-void
.end method

.method public setBias(I)V
    .registers 2

    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Z

    invoke-static {p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->checkChannelParam(Ljava/lang/String;[Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    return-void
.end method

.method public setDivisor(I)V
    .registers 3

    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    return-void
.end method

.method public setMatrix([I)V
    .registers 3

    iput-object p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2

    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mRepeatCount:I

    return-void
.end method
