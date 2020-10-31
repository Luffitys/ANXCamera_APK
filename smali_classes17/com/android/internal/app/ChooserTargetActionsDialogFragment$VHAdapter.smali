.class Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserTargetActionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VHAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;",
        ">;"
    }
.end annotation


# instance fields
.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->bind(Landroid/util/Pair;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->onBindViewHolder(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;
    .registers 8

    new-instance v0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090057

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;

    move-result-object p1

    return-object p1
.end method
