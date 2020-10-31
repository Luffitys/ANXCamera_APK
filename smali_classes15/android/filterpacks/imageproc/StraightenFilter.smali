.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "StraightenFilter.java"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    return-void
.end method

.method private updateParameters()V
    .registers 14

    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_fd

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_23

    move v2, v3

    :cond_23
    iput v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    new-instance v2, Landroid/filterfw/geometry/Point;

    neg-float v3, v0

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v5, v4

    mul-float/2addr v3, v5

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v6, v5

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    neg-float v6, v1

    int-to-float v4, v4

    mul-float/2addr v6, v4

    int-to-float v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v6, v4

    invoke-direct {v2, v3, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v5, v4

    mul-float/2addr v5, v0

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v6

    mul-float/2addr v7, v1

    add-float/2addr v5, v7

    int-to-float v4, v4

    mul-float/2addr v4, v1

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v4, v6

    invoke-direct {v3, v5, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v4, Landroid/filterfw/geometry/Point;

    neg-float v5, v0

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v6

    mul-float/2addr v5, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v7

    mul-float/2addr v8, v1

    sub-float/2addr v5, v8

    neg-float v8, v1

    int-to-float v6, v6

    mul-float/2addr v8, v6

    int-to-float v6, v7

    mul-float/2addr v6, v0

    add-float/2addr v8, v6

    invoke-direct {v4, v5, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v5, Landroid/filterfw/geometry/Point;

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v6

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v9, v8

    mul-float/2addr v9, v1

    sub-float/2addr v7, v9

    int-to-float v6, v6

    mul-float/2addr v6, v1

    int-to-float v8, v8

    mul-float/2addr v8, v0

    add-float/2addr v6, v8

    invoke-direct {v5, v7, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    iget v6, v2, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, v2, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget v9, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    iget v10, v2, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v2, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v2, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v3, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v3, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    iget v10, v4, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v4, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    iget v10, v5, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v5, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v5, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v2, v3, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iget-object v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v10, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    return-void

    :cond_fd
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Max angle is out of range (0-180)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4

    iget-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    :cond_7
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_12

    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iget v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    nop

    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    return-void

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 7

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/StraightenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    if-eq v3, v4, :cond_1d

    :cond_16
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    :cond_1d
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    if-ne v3, v4, :cond_2d

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    if-eq v3, v4, :cond_3c

    :cond_2d
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    :cond_3c
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    iget-object v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/StraightenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
