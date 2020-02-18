.class Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;
.super Ljava/lang/Object;
.source "FragmentLiveSticker.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker$7;->onFinish(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$7;

.field final synthetic val$item:I

.field final synthetic val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$7;ILcom/android/camera/sticker/LiveStickerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$7;

    iput p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->val$item:I

    iput-object p3, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$7;

    iget-object v0, v0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-static {v0}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->access$000(Lcom/android/camera/fragment/live/FragmentLiveSticker;)Lcom/android/camera/fragment/live/FragmentLiveSticker$StickerItemAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->val$item:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$7;

    iget-object v0, v0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    iget v1, v0, Lcom/android/camera/fragment/live/FragmentLiveSticker;->mFutureSelectIndex:I

    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->val$item:I

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->onItemSelected(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unzip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    iget-object v1, v1, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentLiveSticker"

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    const/4 v0, 0x4

    iput v0, p1, Lcom/android/camera/sticker/LiveStickerInfo;->downloadState:I

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$7;

    iget-object p1, p1, Lcom/android/camera/fragment/live/FragmentLiveSticker$7;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-static {p1}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->access$000(Lcom/android/camera/fragment/live/FragmentLiveSticker;)Lcom/android/camera/fragment/live/FragmentLiveSticker$StickerItemAdapter;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$1;->val$item:I

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
