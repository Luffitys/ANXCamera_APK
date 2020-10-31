.class Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;
.super Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectShareViewHolder"
.end annotation


# instance fields
.field private mCellCountPerRow:I

.field private final mCellVisibility:[Z

.field private mDirectShareCurrHeight:I

.field private mDirectShareMaxHeight:I

.field private mDirectShareMinHeight:I

.field private mHideDirectShareExpansion:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/ViewGroup;Ljava/util/List;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p4

    invoke-direct {p0, p1, v0, p2, p5}, Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;-><init>(Lcom/android/internal/app/ChooserActivityForCts;ILandroid/view/View;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMinHeight:I

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMaxHeight:I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mRows:Ljava/util/List;

    iput p4, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mCellCountPerRow:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mCellVisibility:[Z

    return-void
.end method

.method private updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 14

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_b

    goto :goto_67

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1d

    invoke-virtual {v2, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_5f

    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;

    if-eqz v3, :cond_5f

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_62
    if-eqz v0, :cond_66

    iput p3, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    :cond_66
    return-void

    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method public addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v1, p1

    return-object v0
.end method

.method collapse(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMinHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

.method expand(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMaxHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

.method public getMeasuredRowHeight()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    return v0
.end method

.method public getMinRowHeight()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMinHeight:I

    return v0
.end method

.method public getRow(I)Landroid/view/ViewGroup;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mRows:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mCellCountPerRow:I

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public handleScroll(Lcom/android/internal/widget/RecyclerView;III)V
    .registers 10

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMinHeight:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_30

    iget-boolean v1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    if-eqz v1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mAppendDirectShareEnabled:Z
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivityForCts;->access$500(Lcom/android/internal/app/ChooserActivityForCts;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getNumServiceTargetsForExpand()I

    move-result v3

    goto :goto_2a

    :cond_26
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v3

    :goto_2a
    nop

    if-gt v3, p4, :cond_30

    iput-boolean v2, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    return-void

    :cond_30
    sub-int v1, p3, p2

    int-to-float v1, v1

    const v2, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    add-int v3, v2, v1

    iget v4, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMaxHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v1, v3, v2

    invoke-direct {p0, p1, v1, v3}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

.method public measure()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMinHeight:I

    iget v2, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    if-lez v2, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    nop

    :goto_25
    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMinHeight:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mDirectShareMaxHeight:I

    return-void
.end method

.method public setViewVisibility(II)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_14

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mCellVisibility:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_44

    :cond_14
    const/4 v2, 0x4

    if-ne p2, v2, :cond_44

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;->mCellVisibility:[Z

    aget-boolean v3, v2, p1

    if-eqz v3, :cond_44

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_46

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_44
    :goto_44
    return-void

    nop

    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
