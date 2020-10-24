.class Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;

.field final synthetic val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->this$0:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
