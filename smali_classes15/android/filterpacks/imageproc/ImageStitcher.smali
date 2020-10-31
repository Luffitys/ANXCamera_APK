.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mOutputFrame:Landroid/filterfw/core/Frame;

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 7

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v3

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    iget v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-direct {v0, v3}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    iput-object v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    goto :goto_2f

    :cond_1f
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v4, v5, :cond_ae

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-ne v4, v5, :cond_ae

    :goto_2f
    iget-object v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v4, :cond_39

    invoke-static/range {p1 .. p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v4

    iput-object v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    :cond_39
    iget v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v5, v4

    iget v6, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v4, v4

    iget v6, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    iget v6, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v7, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int v8, v6, v7

    iget v9, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/2addr v8, v9

    div-int/2addr v6, v7

    iget v7, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int/2addr v6, v7

    iget v7, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget v9, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    iget v11, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v11, v11

    div-float v11, v7, v11

    iget v12, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v12, v12

    div-float v12, v9, v12

    invoke-virtual {v10, v5, v4, v11, v12}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    int-to-float v11, v8

    iget v12, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v13, v12

    div-float/2addr v11, v13

    int-to-float v13, v6

    iget v14, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v15, v14

    div-float/2addr v13, v15

    int-to-float v12, v12

    div-float v12, v7, v12

    int-to-float v14, v14

    div-float v14, v9, v14

    invoke-virtual {v10, v11, v13, v12, v14}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v11, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v10, v2, v11}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    iget v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v11, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v12, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_ad

    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0, v1, v10}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    iget-object v1, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 v1, 0x0

    iput v1, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    :cond_ad
    return-void

    :cond_ae
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Image size should not change."

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setupPorts()V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
