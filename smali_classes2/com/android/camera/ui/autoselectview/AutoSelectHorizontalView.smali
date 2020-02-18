.class public Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;
.super Landroid/support/v7/widget/RecyclerView;
.source "AutoSelectHorizontalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;
    }
.end annotation


# instance fields
.field private isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isFling:Z

.field private isInit:Z

.field private isMoveFinished:Z

.field private itemFirstLengthInvalid:I

.field private itemWidthMargin:I

.field private mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

.field private mDeltaX:I

.field private mLastMoveX:I

.field private mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectPosition:I

.field private mTempSelectPosition:I

.field private mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isInit:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isFling:Z

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iget p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iput p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isInit:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isFling:Z

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iget p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iput p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isInit:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isFling:Z

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isInit:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isInit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->onDataChanged()V

    return-void
.end method

.method private calculateSelectedPos()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->getRealPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->getRealPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    iget v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurLength()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v3

    iget v5, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurLength()F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    cmpl-float v1, v2, v3

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    :goto_0
    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iget-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    :cond_2
    return-void
.end method

.method private getRealPosition()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    if-gez v0, :cond_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;-><init>(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private onDataChanged()V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->selectedPositionChanged(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    sub-int/2addr v0, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isFling:Z

    iget-boolean v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->selectedPositionChanged(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fling(II)Z
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isFling:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->smoothMoveToPosition(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public getItemWidthMargin()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    return p0
.end method

.method public moveMiddlePositionChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->onMoveMiddlePoisionChanged(IZ)V

    :cond_0
    return-void
.end method

.method public moveToPosition(I)V
    .locals 6

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-gez v1, :cond_1

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    iput-boolean v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    iget-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr p1, v3

    int-to-float p1, p1

    add-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result p1

    iget v3, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iget v4, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr p1, v3

    sub-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    invoke-virtual {v1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    neg-int p1, p1

    :cond_3
    move v3, p1

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0xfa

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->access$602(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;Landroid/content/Context;)Landroid/content/Context;

    iput-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 7

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    invoke-virtual {p1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    iget v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->selectedPositionChanged(I)V

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isFling:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    iget-object v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    iget p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iput p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    iget p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    iget p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->moveMiddlePositionChanged(IZ)V

    :cond_0
    return-void
.end method

.method public selectedPositionChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->onSelectedPositionChanged(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4

    instance-of v0, p1, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    if-nez v0, :cond_0

    const-class p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mAutoSelectAdapter must extends AutoSelectAdapter<T extends SelectItemBean> "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    iput-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    new-instance v0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;-><init>(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$2;-><init>(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurLength()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07013f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "autoselect"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-boolean v1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isInit:Z

    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    instance-of v0, p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    if-nez v0, :cond_0

    const-string p0, "View"

    const-string p1, "The LayoutManager here must be LinearLayoutManager!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iput-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    return-void
.end method

.method public smoothMoveToPosition(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    invoke-direct {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    div-int/lit16 p1, p1, 0x3e8

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    mul-int/2addr p1, v5

    add-int/2addr p1, v2

    if-gez p1, :cond_2

    move p1, v0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v2

    iget v5, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v5, p1

    int-to-float p1, v5

    add-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    int-to-float p1, v3

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    float-to-int v6, v2

    iget-object v3, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_5
    :goto_2
    return-void
.end method
