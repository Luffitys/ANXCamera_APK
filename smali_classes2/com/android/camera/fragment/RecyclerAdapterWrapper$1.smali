.class Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/RecyclerAdapterWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object p0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    iget-object p0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->getHeaderCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    iget-object p0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->getHeaderCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    iget-object p0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->getHeaderCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
