.class Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$MoveInfo;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    iget-object v3, v1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
