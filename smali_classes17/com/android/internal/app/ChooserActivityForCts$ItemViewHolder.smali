.class final Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;
.super Lcom/android/internal/app/ChooserActivityForCts$ViewHolderBase;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mListPosition:I

.field mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;ZI)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/app/ChooserActivityForCts$ViewHolderBase;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->mListPosition:I

    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    if-eqz p3, :cond_21

    new-instance v0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ItemViewHolder$6ZA91jT-ODw3TANNFwMGruMGBew;

    invoke-direct {v0, p0}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ItemViewHolder$6ZA91jT-ODw3TANNFwMGruMGBew;-><init>(Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ItemViewHolder$SNewxoEdIFiDIFOnElxpMtDVKcg;

    invoke-direct {v0, p0}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ItemViewHolder$SNewxoEdIFiDIFOnElxpMtDVKcg;-><init>(Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ChooserActivityForCts$ItemViewHolder(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->mListPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->startSelected(IZZ)V

    return-void
.end method

.method public synthetic lambda$new$1$ChooserActivityForCts$ItemViewHolder(Landroid/view/View;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->mListPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts;->showTargetDetails(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    invoke-static {v1, v3}, Lcom/android/internal/app/ChooserActivityForCts;->access$1900(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    :cond_1b
    return v2
.end method
