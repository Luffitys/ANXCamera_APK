.class Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$6;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

    iget-object v0, v0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;->val$list:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->access$100(Lcom/android/camera/fragment/live/FragmentLiveSticker;Ljava/util/List;)V

    return-void
.end method
