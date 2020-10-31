.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .registers 16

    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const v5, 0x800003

    if-ne v0, v5, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_12

    move v1, v4

    :cond_12
    move v0, v1

    if-eqz v0, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    move v0, v1

    goto :goto_30

    :cond_1a
    const v5, 0x800005

    if-ne v0, v5, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_26

    move v1, v4

    :cond_26
    move v0, v1

    if-eqz v0, :cond_2b

    move v1, v3

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    move v0, v1

    goto :goto_30

    :cond_2e
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    :goto_30
    const/4 v1, 0x0

    if-eq v0, v3, :cond_5f

    if-eq v0, v2, :cond_54

    const/16 v2, 0x30

    if-eq v0, v2, :cond_49

    const/16 v2, 0x50

    if-eq v0, v2, :cond_3e

    goto :goto_6a

    :cond_3e
    sub-int v2, p3, p7

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_6a

    :cond_49
    sub-int v2, p9, p3

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_6a

    :cond_54
    sub-int v2, p2, p6

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_6a

    :cond_5f
    sub-int v2, p8, p2

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    nop

    :goto_6a
    return v1
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .registers 4

    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17

    const v1, 0x800003

    if-eq v0, v1, :cond_17

    const v1, 0x800005

    if-eq v0, v1, :cond_17

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .registers 31

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    const-wide/16 v12, 0x0

    if-nez v11, :cond_b

    if-nez p4, :cond_b

    return-wide v12

    :cond_b
    const/4 v0, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v14

    if-eqz p4, :cond_1e

    invoke-virtual {v10, v11}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1e

    :cond_19
    move-object/from16 v1, p4

    move v15, v0

    move-object v9, v1

    goto :goto_23

    :cond_1e
    :goto_1e
    move-object/from16 v1, p3

    const/4 v0, -0x1

    move v15, v0

    move-object v9, v1

    :goto_23
    invoke-virtual {v10, v9}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v16

    invoke-virtual {v10, v9}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v17

    const/4 v0, 0x2

    new-array v8, v0, [I

    move-object/from16 v7, p1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v18, v1, v2

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v19, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int v20, v18, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v21, v19, v1

    if-eqz v14, :cond_68

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move/from16 v22, v0

    move/from16 v23, v1

    goto :goto_73

    :cond_68
    add-int v1, v18, v20

    div-int/2addr v1, v0

    add-int v2, v19, v21

    div-int/lit8 v0, v2, 0x2

    move/from16 v23, v0

    move/from16 v22, v1

    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v24, v8

    move/from16 v8, v20

    move-object/from16 v25, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-gez v5, :cond_a1

    const-wide/16 v3, 0x12c

    :cond_a1
    int-to-long v5, v15

    mul-long/2addr v5, v3

    long-to-float v5, v5

    iget v6, v10, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    return-wide v5
.end method

.method public setPropagationSpeed(F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSide(I)V
    .registers 2

    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method
