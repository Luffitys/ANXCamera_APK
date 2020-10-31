.class Lcom/android/internal/app/ChooserActivityForCts$4;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivityForCts;->setupScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;

.field final synthetic val$chooserHeaderScrollElevation:F

.field final synthetic val$defaultElevation:F

.field final synthetic val$elevatedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;FF)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->val$elevatedView:Landroid/view/View;

    iput p3, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->val$chooserHeaderScrollElevation:F

    iput p4, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->val$defaultElevation:F

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_17

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivityForCts;->access$1700(Lcom/android/internal/app/ChooserActivityForCts;)I

    move-result v2

    if-ne v2, v1, :cond_2b

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # setter for: Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I
    invoke-static {v2, v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$1702(Lcom/android/internal/app/ChooserActivityForCts;I)I

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts;->setHorizontalScrollingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$1800(Lcom/android/internal/app/ChooserActivityForCts;Z)V

    goto :goto_2b

    :cond_17
    if-ne p2, v1, :cond_2b

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivityForCts;->access$1700(Lcom/android/internal/app/ChooserActivityForCts;)I

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # setter for: Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I
    invoke-static {v2, v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$1702(Lcom/android/internal/app/ChooserActivityForCts;I)I

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts;->setHorizontalScrollingEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$1800(Lcom/android/internal/app/ChooserActivityForCts;Z)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onScrolled(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_1f

    :cond_17
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->val$elevatedView:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->val$chooserHeaderScrollElevation:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->val$elevatedView:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts$4;->val$defaultElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method
