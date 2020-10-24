.class Lcom/android/camera/fragment/clone/BaseVideoItem$1;
.super Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/clone/BaseVideoItem;

.field final synthetic val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/clone/BaseVideoItem;Lcom/android/camera/fragment/clone/VideoViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->this$0:Lcom/android/camera/fragment/clone/BaseVideoItem;

    iput-object p2, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;

    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoPreparedMainThread()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;

    iget-object p0, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onVideoSizeChangedMainThread(II)V
    .locals 0

    return-void
.end method

.method public onVideoStoppedMainThread()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$1;->val$videoViewHolder:Lcom/android/camera/fragment/clone/VideoViewHolder;

    iget-object p0, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
