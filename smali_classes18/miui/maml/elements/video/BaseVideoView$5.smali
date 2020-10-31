.class Lmiui/maml/elements/video/BaseVideoView$5;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/video/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/video/BaseVideoView;


# direct methods
.method constructor <init>(Lmiui/maml/elements/video/BaseVideoView;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView$5;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$5;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lmiui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$5;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lmiui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$5;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    iget v0, v0, Lmiui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    if-eqz v0, :cond_21

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$5;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    iget v0, v0, Lmiui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    if-eqz v0, :cond_21

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$5;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->updateVideoSize()V

    :cond_21
    return-void
.end method
