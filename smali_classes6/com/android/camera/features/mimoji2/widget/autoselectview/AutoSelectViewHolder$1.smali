.class Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder$1;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder;

    iput p2, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder$1;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->moveToPosition(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-class p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectViewHolder$1;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "recyclerview \u7c7b\u578b\u4e0d\u6b63\u786e"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
