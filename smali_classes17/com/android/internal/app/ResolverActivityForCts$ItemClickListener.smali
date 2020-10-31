.class public Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivityForCts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityForCts;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivityForCts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in onItemClick:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResolverActivityForCts"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in onItemClick1:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p3, :cond_3d

    return-void

    :cond_3d
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_4d

    return-void

    :cond_4d
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_61

    move v5, v3

    goto :goto_62

    :cond_61
    move v5, v6

    :goto_62
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v7

    if-nez v7, :cond_a3

    if-eqz v5, :cond_74

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    # getter for: Lcom/android/internal/app/ResolverActivityForCts;->mLastSelected:I
    invoke-static {v7}, Lcom/android/internal/app/ResolverActivityForCts;->access$100(Lcom/android/internal/app/ResolverActivityForCts;)I

    move-result v7

    if-eq v7, v4, :cond_a3

    :cond_74
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    # getter for: Lcom/android/internal/app/ResolverActivityForCts;->mAlwaysButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/internal/app/ResolverActivityForCts;->access$200(Lcom/android/internal/app/ResolverActivityForCts;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_a3

    const-string v6, "in if:   "

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    # invokes: Lcom/android/internal/app/ResolverActivityForCts;->setAlwaysButtonEnabled(ZIZ)V
    invoke-static {v1, v5, v4, v3}, Lcom/android/internal/app/ResolverActivityForCts;->access$300(Lcom/android/internal/app/ResolverActivityForCts;ZIZ)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    # getter for: Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityForCts;->access$400(Lcom/android/internal/app/ResolverActivityForCts;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v5, :cond_9d

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    # getter for: Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityForCts;->access$400(Lcom/android/internal/app/ResolverActivityForCts;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_9d
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    # setter for: Lcom/android/internal/app/ResolverActivityForCts;->mLastSelected:I
    invoke-static {v1, v4}, Lcom/android/internal/app/ResolverActivityForCts;->access$102(Lcom/android/internal/app/ResolverActivityForCts;I)I

    goto :goto_ad

    :cond_a3
    const-string v7, "in else:   "

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v1, p3, v6, v3}, Lcom/android/internal/app/ResolverActivityForCts;->startSelected(IZZ)V

    :goto_ad
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const-string v0, "ResolverActivityForCts"

    const-string v1, "in onItemLongClick:   "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    :cond_17
    if-gez p3, :cond_1b

    const/4 v1, 0x0

    return v1

    :cond_1b
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivityForCts;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return v2
.end method
