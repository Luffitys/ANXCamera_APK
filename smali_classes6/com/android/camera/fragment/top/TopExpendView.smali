.class public Lcom/android/camera/fragment/top/TopExpendView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

.field private mAnimEnable:Z

.field private mDegree:I

.field private mEndViewRight:I

.field private mIsAnimRuning:Z

.field private mStartViewLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAnimEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/top/TopExpendView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->updateUI()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mIsAnimRuning:Z

    return p1
.end method

.method private addItemInAnimator(Landroid/view/View;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    sget v0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:I

    mul-int/lit16 v0, v0, 0x12c

    int-to-long v0, v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_0
    iget-object v5, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v5}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getAnchorViewX()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v4, 0x0

    const/4 v7, 0x1

    aput v4, v5, v7

    const-string v4, "translationX"

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v5}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getDefaultSelectPosition()I

    move-result v5

    if-ne p2, v5, :cond_1

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v3, v6

    goto :goto_1

    :cond_1
    new-array v5, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v6

    aput-object v4, v5, v7

    move-object v3, v5

    :goto_1
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/camera/fragment/top/TopExpendView$2;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/fragment/top/TopExpendView$2;-><init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getDefaultSelectPosition()I

    move-result v4

    if-ne p2, v4, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->isSelectOnColorItem()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f06017e

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    new-array v2, v2, [I

    aput p2, v2, v6

    aput v4, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/fragment/top/TopExpendView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/top/TopExpendView$3;-><init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    check-cast p1, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addItemOutAnimator(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    sget v0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:I

    mul-int/lit16 v0, v0, 0x12c

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getAnchorViewX()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v2, v4, v5

    const-string v2, "translationX"

    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/fragment/top/TopExpendView$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/camera/fragment/top/TopExpendView$4;-><init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget p3, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:I

    mul-int/lit8 p3, p3, 0x64

    int-to-long v0, p3

    const/4 p3, 0x0

    iget-object v4, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v4

    if-eq p2, v4, :cond_1

    move-object p3, p1

    goto :goto_1

    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/LabelItemView;->getLabelView()Lcom/android/camera/ui/ColorImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    move-object p3, v4

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v7, "alpha"

    invoke-static {p3, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    sget p3, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:I

    mul-int/lit16 p3, p3, 0x12c

    int-to-long v0, p3

    iget-object p3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {p3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result p3

    if-ne p2, p3, :cond_4

    iget-object p3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {p3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getDefaultSelectPosition()I

    move-result p3

    iget-object v4, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v4

    if-ne p3, v4, :cond_4

    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->isSelectOnColorItem()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v4, 0x7f06017e

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    new-array v3, v3, [I

    aput p2, v3, v6

    aput p3, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/android/camera/fragment/top/TopExpendView$5;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/fragment/top/TopExpendView$5;-><init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {p3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result p3

    if-ne p2, p3, :cond_5

    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->isSelectOnColorItem()Z

    move-result p0

    if-eqz p0, :cond_5

    check-cast p1, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initView()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3, p0, v1}, Lcom/android/camera/fragment/top/TopExpandAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object v3

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v5, v3, v2}, Lcom/android/camera/fragment/top/TopExpandAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/top/TopExpendView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/TopExpendView$1;-><init>(Lcom/android/camera/fragment/top/TopExpendView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private isSelectOnColorItem()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getComponentData()Lcom/android/camera/data/data/ComponentData;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectComponentDataItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    instance-of v1, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;

    const-string v2, "normal"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "on"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    instance-of v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "101"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v3

    :cond_3
    instance-of v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "off"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    instance-of v0, v0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return v3

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private updateUI()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/top/TopExpendView;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    iget-boolean v2, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAnimEnable:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->addItemInAnimator(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mEndViewRight:I

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mStartViewLeft:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getEndViewRight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mEndViewRight:I

    return p0
.end method

.method public getStartViewLeft()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mStartViewLeft:I

    return p0
.end method

.method public isAnimRuning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mIsAnimRuning:Z

    return p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/camera/fragment/top/TopExpendView;->mDegree:I

    return-void
.end method

.method public revertExpendView(ZLjava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/camera/fragment/top/TopExpendView;->addItemOutAnimator(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, v1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->addItemOutAnimator(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setAdapter(Lcom/android/camera/fragment/top/TopExpandAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->initView()V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAnimEnable:Z

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mDegree:I

    return-void
.end method
