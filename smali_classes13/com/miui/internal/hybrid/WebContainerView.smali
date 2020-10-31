.class public Lcom/miui/internal/hybrid/WebContainerView;
.super Landroid/widget/FrameLayout;
.source "WebContainerView.java"


# instance fields
.field private mIsPulling:Z

.field private mLastX:F

.field private mLastY:F

.field private mPullable:Z

.field private mTouchSlop:I

.field private mWebView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mIsPulling:Z

    sget-object v1, Lmiui/R$styleable;->HybridViewStyle:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->HybridViewStyle_hybridPullable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->mPullable:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->mTouchSlop:I

    return-void
.end method

.method private springBack()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mPullable:Z

    if-nez v0, :cond_a

    goto :goto_5e

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5b

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1d

    goto :goto_5b

    :cond_1d
    if-eqz v0, :cond_55

    const/4 v5, 0x2

    if-eq v0, v5, :cond_23

    goto :goto_5a

    :cond_23
    iget-boolean v5, p0, Lcom/miui/internal/hybrid/WebContainerView;->mIsPulling:Z

    if-eqz v5, :cond_28

    return v4

    :cond_28
    iget v5, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastX:F

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastY:F

    sub-float/2addr v6, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iput v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastX:F

    iput v3, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastY:F

    iget-object v9, p0, Lcom/miui/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v9

    if-nez v9, :cond_5a

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_5a

    cmpl-float v9, v8, v7

    if-lez v9, :cond_5a

    iget v9, p0, Lcom/miui/internal/hybrid/WebContainerView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5a

    iput-boolean v4, p0, Lcom/miui/internal/hybrid/WebContainerView;->mIsPulling:Z

    return v4

    :cond_55
    iput v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastX:F

    iput v3, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastY:F

    nop

    :cond_5a
    :goto_5a
    return v1

    :cond_5b
    :goto_5b
    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->mIsPulling:Z

    return v1

    :cond_5e
    :goto_5e
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mPullable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mIsPulling:Z

    if-nez v0, :cond_a

    goto :goto_3a

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_36

    const/4 v3, 0x1

    if-eq v2, v3, :cond_30

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    goto :goto_39

    :cond_1e
    iget v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastY:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getTranslationY()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/miui/internal/hybrid/WebContainerView;->setTranslationY(F)V

    iput v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastY:F

    goto :goto_39

    :cond_30
    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->mIsPulling:Z

    invoke-direct {p0}, Lcom/miui/internal/hybrid/WebContainerView;->springBack()V

    goto :goto_39

    :cond_36
    iput v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mLastY:F

    nop

    :goto_39
    return v1

    :cond_3a
    :goto_3a
    return v1
.end method

.method public setWebView(Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    if-ne v0, p1, :cond_7

    goto :goto_19

    :cond_7
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/miui/internal/hybrid/WebContainerView;->removeView(Landroid/view/View;)V

    :cond_c
    iput-object p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    const/4 v0, 0x0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_19
    :goto_19
    return-void
.end method
