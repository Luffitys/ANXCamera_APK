.class public Lmiuix/nestedheader/widget/NestedHeaderLayout;
.super Lmiuix/nestedheader/widget/NestedScrollingLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NestedHeaderLayout"


# instance fields
.field private isAniming:Z

.field private isTouch:Z

.field private mAutoAnim:Z

.field private mHeaderBottomMargin:I

.field private mHeaderContentId:I

.field private mHeaderContentMinHeight:F

.field private mHeaderContentView:Landroid/view/View;

.field private mHeaderInitTop:I

.field private mHeaderMeasuredHeight:I

.field private mHeaderTopmMargin:I

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewId:I

.field private mLastScrollingProgress:I

.field private mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

.field private mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

.field private mRangeOffset:F

.field private mScrollingFrom:I

.field private mScrollingTo:I

.field private mTriggerBottomMargin:I

.field private mTriggerContentId:I

.field private mTriggerContentMinHeight:F

.field private mTriggerContentView:Landroid/view/View;

.field private mTriggerMeasuredHeight:I

.field private mTriggerTopmMargin:I

.field private mTriggerView:Landroid/view/View;

.field private mTriggerViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopmMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopmMargin:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderInitTop:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isAniming:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isTouch:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    new-instance p3, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;

    invoke-direct {p3, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    iput-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    sget-object p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerView:I

    sget v0, Lmiuix/nestedheader/R$id;->header_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerView:I

    sget v0, Lmiuix/nestedheader/R$id;->trigger_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentId:I

    sget v0, Lmiuix/nestedheader/R$id;->header_content_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentId:I

    sget v0, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_headerContentMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/nestedheader/R$dimen;->miuix_nested_header_layout_content_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    sget p3, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_triggerContentMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/nestedheader/R$dimen;->miuix_nested_header_layout_content_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    sget p1, Lmiuix/nestedheader/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mOnNestedChangedListener:Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isTouch:Z

    return p0
.end method

.method static synthetic access$002(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isTouch:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isAniming:Z

    return p0
.end method

.method static synthetic access$202(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isAniming:Z

    return p1
.end method

.method static synthetic access$300(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I
    .locals 0

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/nestedheader/widget/NestedHeaderLayout;)I
    .locals 0

    iget p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    return-void
.end method

.method private applyContentAlpha(Ljava/util/List;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private autoAdsorption(I)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "targe"

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v4, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;

    invoke-direct {v5, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    aput-object v5, v4, v0

    invoke-virtual {p1, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private checkSendHeaderChangeListener(IIZ)V
    .locals 1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerOpened(Landroid/view/View;)V

    :cond_2
    :goto_0
    if-gez p1, :cond_8

    if-lez p2, :cond_8

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderOpened(Landroid/view/View;)V

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_1
    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    if-ne p2, p3, :cond_5

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {p3, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onHeaderClosed(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    if-ne p2, p3, :cond_6

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x0

    goto :goto_3

    :cond_7
    iget p3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    :goto_3
    if-le p1, p3, :cond_8

    if-ge p2, p3, :cond_8

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-interface {p1, p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onTriggerClosed(Landroid/view/View;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private makeContentViewList(Landroid/view/View;Z)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0

    :cond_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;
    .locals 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->header_content_view:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;
    .locals 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    sget v1, Lmiuix/nestedheader/R$id;->trigger_content_view:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeContentViewList(Landroid/view/View;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private relayoutContent(Landroid/view/View;Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p3

    add-int/2addr p0, p4

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1, v0, p3, v1, p0}, Landroid/view/View;->layout(IIII)V

    if-eq p1, p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p4

    invoke-virtual {p2, p1, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method private syncScrollingProgress(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateScrollingProgress(I)V

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private updateScrollingRange(ZZZ)V
    .locals 12

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopmMargin:I

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mRangeOffset:F

    add-float/2addr v0, v4

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopmMargin:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v3

    move v7, v1

    goto :goto_0

    :cond_0
    move v0, v3

    move v7, v0

    :goto_0
    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_2

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopmMargin:I

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopmMargin:I

    add-int/2addr v2, v4

    iget v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    if-nez v7, :cond_1

    neg-int v0, v2

    move v5, v0

    move v8, v1

    move v6, v3

    goto :goto_1

    :cond_1
    move v5, v0

    move v8, v1

    move v6, v2

    goto :goto_1

    :cond_2
    move v5, v0

    move v6, v3

    move v8, v6

    :goto_1
    iput v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    iput v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    move-object v4, p0

    move v9, p1

    move v10, p2

    move v11, p3

    invoke-virtual/range {v4 .. v11}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setScrollingRange(IIZZZZZ)V

    return-void
.end method


# virtual methods
.method public getHeaderViewVisible()Z
    .locals 1

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getTriggerViewVisible()Z
    .locals 1

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAutoAnim()Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    return p0
.end method

.method public isHeaderOpen()Z
    .locals 1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTriggerOpen()Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p0

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-super {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onFinishInflate()V

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The headerView or triggerView attribute is required and must refer to a valid child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    const v1, 0x102001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onLayout(ZIIII)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZ)V

    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .locals 12

    invoke-super {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v0, p1, v0

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopmMargin:I

    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v2, :cond_0

    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopmMargin:I

    iget v7, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopmMargin:I

    add-int/2addr v6, v7

    move v7, v3

    goto :goto_0

    :cond_0
    iget v7, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopmMargin:I

    iget v8, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    add-int/2addr v7, v8

    iget v8, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    :goto_0
    iget-object v8, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentView:Landroid/view/View;

    if-nez v8, :cond_1

    iget-object v8, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    :cond_1
    iget-object v9, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    iget v10, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    sub-int v10, v5, v10

    iget v11, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerTopmMargin:I

    sub-int/2addr v10, v11

    iget v11, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerMeasuredHeight:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v9, v8, v6, v10}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;II)V

    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerBottomMargin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerContentMinHeight:F

    div-float/2addr v5, v6

    iget-object v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v8}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeTriggerContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v6

    sub-float/2addr v5, v4

    invoke-direct {p0, v6, v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    goto :goto_1

    :cond_2
    move v0, p1

    move v7, v3

    :goto_1
    iget-object v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_4

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderInitTop:I

    iget v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopmMargin:I

    add-int/2addr v2, v5

    iget-object v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentView:Landroid/view/View;

    if-nez v5, :cond_3

    iget-object v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    :cond_3
    iget-object v6, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v6, v5, v2, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->relayoutContent(Landroid/view/View;Landroid/view/View;II)V

    int-to-float v0, v0

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderContentMinHeight:F

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    add-float v6, v0, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v5}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->makeHeaderContentViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->applyContentAlpha(Ljava/util/List;F)V

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderMeasuredHeight:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderTopmMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderBottomMargin:I

    add-int v7, v0, v1

    :cond_4
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    add-int/2addr v7, p1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v7, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    sub-int v1, p1, v0

    if-lez v1, :cond_5

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    goto :goto_2

    :cond_5
    sub-int v1, p1, v0

    if-gez v1, :cond_6

    invoke-direct {p0, v0, p1, v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->checkSendHeaderChangeListener(IIZ)V

    :cond_6
    :goto_2
    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mLastScrollingProgress:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->updateHeaderOpen(Z)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderInitTop:I

    :cond_0
    return-void
.end method

.method public removeNestedHeaderChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    return-void
.end method

.method public setAutoAllClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    if-le p1, v0, :cond_0

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :goto_0
    return-void
.end method

.method public setAutoAllOpen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result p1

    iget v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :goto_0
    return-void
.end method

.method public setAutoAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mAutoAnim:Z

    return-void
.end method

.method public setAutoHeaderClose(Z)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    if-le v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoHeaderOpen(Z)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoTriggerClose(Z)V
    .locals 3

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    iget v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingFrom:I

    if-le v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_1

    :cond_2
    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAutoTriggerOpen(Z)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getTriggerViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mScrollingTo:I

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->syncScrollingProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHeaderViewVisible(Z)V
    .locals 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, v1, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZ)V

    :cond_1
    return-void
.end method

.method public setNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mNestedHeaderChangedListener:Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    return-void
.end method

.method public setTriggerViewVisible(Z)V
    .locals 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, p1, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->updateScrollingRange(ZZZ)V

    :cond_1
    return-void
.end method
