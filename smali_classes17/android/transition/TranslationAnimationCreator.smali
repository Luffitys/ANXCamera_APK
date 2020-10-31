.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .registers 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v13

    iget-object v0, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v1, 0x1020512

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    if-eqz v14, :cond_2f

    const/4 v0, 0x0

    aget v0, v14, v0

    sub-int v0, v0, p2

    int-to-float v0, v0

    add-float/2addr v0, v12

    const/4 v1, 0x1

    aget v1, v14, v1

    sub-int v1, v1, p3

    int-to-float v1, v1

    add-float/2addr v1, v13

    move v15, v0

    move v7, v1

    goto :goto_33

    :cond_2f
    move/from16 v15, p4

    move/from16 v7, p5

    :goto_33
    sub-float v0, v15, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v16, p2, v0

    sub-float v0, v7, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v17, p3, v0

    invoke-virtual {v8, v15}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v0, v15, v10

    if-nez v0, :cond_53

    cmpl-float v0, v7, v11

    if-nez v0, :cond_53

    const/4 v0, 0x0

    return-object v0

    :cond_53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v6, v0

    invoke-virtual {v6, v15, v7}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v8, v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v18, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v20, v5

    move v5, v12

    move-object/from16 v21, v6

    move v6, v13

    move/from16 v22, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$1;)V

    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-object/from16 v2, v20

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v3, p8

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v2
.end method
