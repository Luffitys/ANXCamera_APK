.class Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

.field final synthetic val$argbEvaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic val$avatarConfigInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

.field final synthetic val$circleImageView:Lcom/android/camera/ui/CircleImageView;

.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;ILandroid/animation/ArgbEvaluator;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$ViewHolder;Lcom/android/camera/ui/CircleImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    iput p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$argbEvaluator:Landroid/animation/ArgbEvaluator;

    iput-object p4, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$avatarConfigInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iput-object p5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$viewHolder:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$ViewHolder;

    iput-object p6, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$circleImageView:Lcom/android/camera/ui/CircleImageView;

    iput-object p7, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$desc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic OooO0O0(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->checkClickable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    iget v1, v0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->mLastPosion:I

    iget v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    const-wide/16 v3, 0x64

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$argbEvaluator:Landroid/animation/ArgbEvaluator;

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$000(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$avatarConfigInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v0, v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$avatarConfigInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v2, v2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setInnerConfigSelectIndex(IF)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$avatarConfigInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v2, v2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setInnerConfigSelectIndex(IF)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$100(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v5}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$100(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v5}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$100(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v5

    if-ne v0, v5, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v5}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$100(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v5

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v5}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$100(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    if-ne v0, v5, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$000(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-virtual {v6}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$000(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    sub-int/2addr v5, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_6
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$avatarConfigInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v6, v5, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    iget v5, v5, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setInnerConfigSelectIndex(IF)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$000(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    iget v5, v5, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->mLastPosion:I

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$ViewHolder;

    if-eqz v0, :cond_7

    iget-object v5, v0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$ViewHolder;->ivColor:Lcom/android/camera/ui/CircleImageView;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/CircleImageView;->updateView(Z)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$viewHolder:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100042

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    iget v5, v5, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->mLastPosion:I

    add-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    iget v1, v0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->mLastPosion:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$circleImageView:Lcom/android/camera/ui/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CircleImageView;->updateView(Z)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    iput v1, v0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->mLastPosion:I

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;->access$200(Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2;)Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$avatarConfigInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$position:I

    invoke-interface {v0, v1, v2, v5}, Lcom/android/camera/features/mimoji2/fragment/edit/AvatarConfigItemClick2;->onConfigItemClick(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;ZI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$1;->val$viewHolder:Lcom/android/camera/features/mimoji2/fragment/edit/ColorListAdapter2$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1000a5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooO00o;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/OooO00o;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void

    :cond_9
    :goto_3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooO0O0;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/OooO0O0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method
