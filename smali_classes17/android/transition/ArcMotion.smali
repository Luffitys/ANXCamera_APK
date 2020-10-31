.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    nop

    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v2, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    sget-object v2, Lcom/android/internal/R$styleable;->ArcMotion:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static toTangent(F)F
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1a

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_1a

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arc must be between 0 and 90 degrees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMaximumAngle()F
    .registers 2

    iget v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .registers 2

    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return v0
.end method

.method public getMinimumVerticalAngle()F
    .registers 2

    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v10, v3

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v11, p3, v1

    sub-float v12, p4, v2

    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float v13, v3, v4

    add-float v3, v1, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    add-float v3, v2, p4

    div-float v15, v3, v4

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v16, v13, v3

    const/4 v3, 0x0

    cmpl-float v5, v2, p4

    if-lez v5, :cond_2e

    const/4 v5, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    :goto_2f
    move/from16 v17, v5

    const/4 v5, 0x0

    cmpl-float v6, v12, v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v6, :cond_45

    move v6, v14

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v7

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v8, v7

    add-float/2addr v8, v15

    move/from16 v18, v3

    goto :goto_98

    :cond_45
    cmpl-float v6, v11, v5

    if-nez v6, :cond_56

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v7

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v14

    move v8, v15

    move/from16 v18, v3

    goto :goto_98

    :cond_56
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_80

    mul-float v6, v12, v4

    div-float v6, v13, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-eqz v17, :cond_71

    add-float v7, p4, v6

    move/from16 v8, p3

    goto :goto_75

    :cond_71
    add-float v7, v2, v6

    move/from16 v8, p1

    :goto_75
    iget v9, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v18, v16, v9

    mul-float v3, v18, v9

    move/from16 v18, v3

    move v6, v8

    move v8, v7

    goto :goto_98

    :cond_80
    mul-float v6, v11, v4

    div-float v6, v13, v6

    if-eqz v17, :cond_8b

    add-float v7, v1, v6

    move/from16 v8, p2

    goto :goto_8f

    :cond_8b
    sub-float v7, p3, v6

    move/from16 v8, p4

    :goto_8f
    iget v9, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v18, v16, v9

    mul-float v3, v18, v9

    move/from16 v18, v3

    move v6, v7

    :goto_98
    sub-float v19, v14, v6

    sub-float v20, v15, v8

    mul-float v3, v19, v19

    mul-float v7, v20, v20

    add-float v21, v3, v7

    iget v3, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float v7, v16, v3

    mul-float v22, v7, v3

    const/4 v3, 0x0

    cmpl-float v7, v21, v5

    if-eqz v7, :cond_b6

    cmpg-float v7, v21, v18

    if-gez v7, :cond_b6

    move/from16 v3, v18

    move/from16 v23, v3

    goto :goto_c1

    :cond_b6
    cmpl-float v7, v21, v22

    if-lez v7, :cond_bf

    move/from16 v3, v22

    move/from16 v23, v3

    goto :goto_c1

    :cond_bf
    move/from16 v23, v3

    :goto_c1
    cmpl-float v3, v23, v5

    if-eqz v3, :cond_dc

    div-float v3, v23, v21

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v5, v6, v14

    mul-float/2addr v5, v4

    add-float v6, v14, v5

    sub-float v5, v8, v15

    mul-float/2addr v5, v4

    add-float v8, v15, v5

    move/from16 v24, v6

    move/from16 v25, v8

    goto :goto_e0

    :cond_dc
    move/from16 v24, v6

    move/from16 v25, v8

    :goto_e0
    add-float v3, v1, v24

    const/high16 v4, 0x40000000    # 2.0f

    div-float v26, v3, v4

    add-float v3, v2, v25

    div-float v27, v3, v4

    add-float v3, v24, p3

    div-float v28, v3, v4

    add-float v3, v25, p4

    div-float v29, v3, v4

    move-object v3, v10

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v6, v28

    move/from16 v7, v29

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v10
.end method

.method public setMaximumAngle(F)V
    .registers 3

    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .registers 3

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .registers 3

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    return-void
.end method
