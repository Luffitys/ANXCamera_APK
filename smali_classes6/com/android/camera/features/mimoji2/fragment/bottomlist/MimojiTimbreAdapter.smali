.class public Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;
.super Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;
.source ""


# instance fields
.field private mLastSelectedPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setSelected(Z)V

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setIsCompsing(Z)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hideProgress()V
    .locals 2

    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->isCompsing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setIsCompsing(Z)V

    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method protected onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0089

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter$TimbreViewViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter$TimbreViewViewHolder;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setSelectState(IZ)Z
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return v2

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    invoke-virtual {v3}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setSelected(Z)V

    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setIsCompsing(Z)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    invoke-virtual {v1, p2}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->setIsCompsing(Z)V

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    iput p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiTimbreAdapter;->mLastSelectedPosition:I

    :cond_3
    return v2
.end method
