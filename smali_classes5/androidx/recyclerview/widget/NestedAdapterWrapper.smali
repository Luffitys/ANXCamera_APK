.class Landroidx/recyclerview/widget/NestedAdapterWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCachedItemCount:I

.field final mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

.field private final mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;Landroidx/recyclerview/widget/ViewTypeStorage;Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;-><init>(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iput-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    invoke-interface {p3, p0}, Landroidx/recyclerview/widget/ViewTypeStorage;->createViewTypeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    iput-object p4, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    iget-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {p0}, Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->dispose()V

    return-void
.end method

.method getCachedItemCount()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    return p0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    invoke-interface {p0, v0, v1}, Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;->localToGlobal(J)J

    move-result-wide p0

    return-wide p0
.end method

.method getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->localToGlobal(I)I

    move-result p0

    return p0
.end method

.method onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0, p2}, Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->globalToLocal(I)I

    move-result p2

    iget-object p0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
