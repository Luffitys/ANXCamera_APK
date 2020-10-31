.class public abstract Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mTranslation:F

.field private mY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/widget/Editor$1;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontalOffset()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setPivotX(F)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/widget/Editor$SelectionHandleView;)I
    .registers 2

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    return v0
.end method

.method static synthetic access$8202(Landroid/widget/Editor$SelectionHandleView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    return p1
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .registers 10

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    move v2, p2

    goto :goto_f

    :cond_9
    add-int/lit8 v2, p2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_f
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-ne v3, v1, :cond_22

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_26

    :cond_22
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    :goto_26
    return v4
.end method

.method private isStartHandle()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public cancelAnimations()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setScaleX(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setTranslationX(F)V

    return-void
.end method

.method public fadeIn(II)V
    .registers 12

    int-to-float v0, p1

    iget v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    iget v2, p0, Landroid/widget/Editor$SelectionHandleView;->mHorizontalScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    move v1, p2

    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_68

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_59

    new-array v4, v3, [F

    aput v0, v4, v6

    int-to-float v8, p1

    aput v8, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v8, Landroid/widget/Editor$SelectionHandleView$1;

    invoke-direct {v8, p0, v1}, Landroid/widget/Editor$SelectionHandleView$1;-><init>(Landroid/widget/Editor$SelectionHandleView;I)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    aput-object v4, v3, v7

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput v5, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    goto :goto_62

    :cond_59
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_62
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_68
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fadeOut()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss()V

    return-void
.end method

.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_d

    new-instance v0, Landroid/widget/Editor$SelectionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {v0, v1, p0}, Landroid/widget/Editor$SelectionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    :cond_d
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .registers 4

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getMagnifierHandleTrigger()I
    .registers 2

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    :goto_9
    return v0
.end method

.method public onAttached()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->showActionPopupWindow(I)V

    return-void
.end method

.method public onDetached()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$8100(Landroid/widget/Editor$SelectionModifierCursorController;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->hideActionPopupWindow()V

    :cond_17
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideEmailPopupWindow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    goto :goto_11

    :cond_c
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Landroid/widget/Editor$SelectionHandleView;->showActionPopupWindow(I)V

    :goto_11
    return v0
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-void
.end method

.method public setTranslation(F)V
    .registers 2

    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    return-void
.end method

.method public setY(I)V
    .registers 2

    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    return-void
.end method
