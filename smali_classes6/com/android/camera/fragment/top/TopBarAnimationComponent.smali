.class public Lcom/android/camera/fragment/top/TopBarAnimationComponent;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG_ANIMATION_TIME_MULTIPLE:I


# instance fields
.field public mAnchorView:Landroid/view/View;

.field private mCubiEaseOut:Landroid/view/animation/Interpolator;

.field private mHidedViews:Ljava/util/List;

.field public mReverseLeft:I

.field public mShown:Z

.field public mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

.field public spacesItemWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "animation_time_multiple"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mCubiEaseOut:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mAnchorView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->hideExpendView()V

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    return-void
.end method

.method private addTopBarItemInAnimator(ILandroid/view/View;Lcom/android/camera/data/data/config/TopConfigItem;)Landroid/animation/ObjectAnimator;
    .locals 7

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    sget v0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:I

    mul-int/lit16 v0, v0, 0x12c

    int-to-long v0, v0

    iget-boolean p3, p3, Lcom/android/camera/data/data/config/TopConfigItem;->enable:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p3, 0x3ecccccd    # 0.4f

    :goto_0
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput p3, v3, v6

    const-string p3, "alpha"

    invoke-static {p3, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v3, v2, [F

    int-to-float p1, p1

    aput p1, v3, v4

    aput v5, v3, v6

    const-string p1, "translationX"

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, v2, v4

    aput-object p1, v2, v6

    invoke-static {p2, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mCubiEaseOut:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/camera/fragment/top/TopBarAnimationComponent$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent$1;-><init>(Lcom/android/camera/fragment/top/TopBarAnimationComponent;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private addTopBarItemOutAnimator(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->OooO00o()V

    return-void
.end method

.method public hideExpendView()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public hideOtherViews(ILjava/util/List;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mShown:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mShown:Z

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->addTopBarItemOutAnimator(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public reverse(Z)Z
    .locals 12

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpendView;->isAnimRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mShown:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mShown:Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/TopConfigItem;

    iget v3, v0, Lcom/android/camera/data/data/config/TopConfigItem;->index:I

    iget v4, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->spacesItemWidth:I

    if-lez v3, :cond_2

    iget-object v5, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {v6}, Lcom/android/camera/fragment/top/TopExpendView;->getStartViewLeft()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v6, v5

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    iget-object v5, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {v7}, Lcom/android/camera/fragment/top/TopExpendView;->getEndViewRight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    iget-object v4, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/data/data/config/TopConfigItem;

    iget v9, v8, Lcom/android/camera/data/data/config/TopConfigItem;->index:I

    iget v10, v0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    iget v11, v8, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v10, v11, :cond_5

    goto :goto_2

    :cond_5
    if-le v3, v9, :cond_6

    move v1, v6

    goto :goto_3

    :cond_6
    if-ge v3, v9, :cond_7

    move v1, v7

    :cond_7
    :goto_3
    invoke-direct {p0, v1, v5, v8}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->addTopBarItemInAnimator(ILandroid/view/View;Lcom/android/camera/data/data/config/TopConfigItem;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    :cond_8
    invoke-static {v5}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    new-instance v1, Lcom/android/camera/fragment/top/OooOo0O;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/OooOo0O;-><init>(Lcom/android/camera/fragment/top/TopBarAnimationComponent;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/top/TopExpendView;->revertExpendView(ZLjava/lang/Runnable;)V

    return v2
.end method

.method public showExpendView()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
