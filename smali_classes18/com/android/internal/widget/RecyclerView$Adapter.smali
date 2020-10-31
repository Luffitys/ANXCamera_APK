.class public abstract Lcom/android/internal/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    :cond_e
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearPayload()V

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_32

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iput-boolean v1, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iput p2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    return-void
.end method

.method public abstract onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    return-void
.end method

.method public onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
