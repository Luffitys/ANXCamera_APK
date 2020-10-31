.class public Landroid/transition/PatternPathMotion;
.super Landroid/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    sget-object v0, Lcom/android/internal/R$styleable;->PatternPathMotion:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_18
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_33

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :cond_2a
    :try_start_2a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "pathData must be supplied for patternPathMotion"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 3

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 15

    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p4, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    iget-object v7, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v7, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v7, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iget-object v9, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-object v7
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .registers 2

    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v7, v5, v3

    const/4 v8, 0x1

    aget v9, v5, v8

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v3, v5, v3

    aget v6, v5, v8

    cmpl-float v8, v3, v7

    if-nez v8, :cond_34

    cmpl-float v8, v6, v9

    if-eqz v8, :cond_2b

    goto :goto_34

    :cond_2b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "pattern must not end at the starting point"

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_34
    :goto_34
    iget-object v8, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    neg-float v10, v3

    neg-float v11, v6

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sub-float v8, v7, v3

    sub-float v10, v9, v6

    float-to-double v11, v8

    float-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v11

    iget-object v13, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    float-to-double v13, v10

    move-object v15, v2

    move/from16 v16, v3

    float-to-double v2, v8

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iget-object v13, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move v14, v4

    move-object/from16 v17, v5

    neg-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v13, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-void
.end method
