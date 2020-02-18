.class Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$MimojiItemHolder;
.super Lcom/android/camera/fragment/CommonRecyclerViewHolder;
.source "MimojiCreateItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimojiItemHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$MimojiItemHolder;->this$0:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$MimojiItemHolder;->this$0:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->access$000(Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$MimojiItemHolder;->this$0:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->access$100(Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;)Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$MimojiItemHolder;->this$0:Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;->access$100(Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter;)Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, v1, v0, p1}, Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$OnItemClickListener;->onItemClick(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
