.class public Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackGroundColor:I

.field private mChildSize:I

.field private mDegree:I

.field private mIsRLT:Z

.field private mOnItemClickListener:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;

.field private mPadding:F

.field private mSelectIndex:I

.field private mZoomIndexes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsRLT:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070329

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070326

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    return-void
.end method

.method private toScaleAnimator(Lcom/android/camera/ui/zoom/ZoomTextImageView;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f020004

    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->TAG:Ljava/lang/String;

    const-string p1, "ignore click due to doing action"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mOnItemClickListener:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;

    invoke-interface {p0, p1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;->onIndexButtonClick(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    if-gt p1, p3, :cond_0

    const p3, 0x7f0705ce

    goto :goto_0

    :cond_0
    const p3, 0x7f0705cd

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mPadding:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mPadding:F

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    div-float/2addr p2, p3

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    div-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mPadding:F

    int-to-float v1, p2

    sub-float/2addr v0, v1

    int-to-float p5, p5

    mul-float/2addr p4, p3

    add-float/2addr p5, p4

    const/4 p4, 0x0

    move v1, p4

    :goto_1
    if-ge v1, p1, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsRLT:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int v4, p3

    invoke-virtual {v2, p2, v4, p2, v4}, Landroid/view/View;->setPadding(IIII)V

    float-to-int v4, v0

    add-float/2addr v0, v3

    float-to-int v3, v0

    float-to-int v5, p5

    invoke-virtual {v2, v4, p4, v3, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mDegree:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mBackGroundColor:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setNormalBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDegree(I)V
    .locals 3

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mDegree:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelect(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1, v0, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->toScaleAnimator(Lcom/android/camera/ui/zoom/ZoomTextImageView;Z)V

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    :cond_3
    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    :goto_0
    return-void
.end method

.method public setZoomIndexButtons(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;)V
    .locals 6

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mOnItemClickListener:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v4, v2, v3

    rem-float/2addr v4, v3

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    float-to-int v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(ILjava/lang/String;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setRotation(F)V

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mBackGroundColor:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setNormalBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10006a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
