.class public abstract Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AutoSelectAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/autoselectview/OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/ui/autoselectview/SelectItemBean;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;",
        ">;",
        "Lcom/android/camera/ui/autoselectview/OnPositionChangedListener;"
    }
.end annotation


# instance fields
.field private mDdataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLastMiddlePosition:I

.field private mLastSelectPosition:I

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    iput-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addData(Lcom/android/camera/ui/autoselectview/SelectItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getLastSelectPosition()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    return p0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->onBindViewHolder(Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;I)V
    .locals 0
    .param p1    # Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;->setData(Lcom/android/camera/ui/autoselectview/SelectItemBean;I)V

    return-void
.end method

.method public onMoveMiddlePoisionChanged(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    const/4 v1, 0x1

    if-eq p2, p1, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    :cond_0
    iget p2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    if-eq p2, p1, :cond_2

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSelectedPositionChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->updateDataAlpha(II)V

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    invoke-interface {p0, p1}, Lcom/android/camera/ui/autoselectview/OnPositionChangedListener;->onSelectedPositionFinish(I)V

    :cond_1
    return-void
.end method

.method public declared-synchronized removeData(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastSelectPosition:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mLastMiddlePosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateData(ILcom/android/camera/ui/autoselectview/SelectItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateDataAlpha(II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->mDdataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/autoselectview/SelectItemBean;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/autoselectview/SelectItemBean;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;

    invoke-virtual {p1}, Lcom/android/camera/fragment/mimoji/MimojiTypeAdapter$TypeViewHolder;->getTypeView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectViewHolder;->setSelectState(Landroid/widget/TextView;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
