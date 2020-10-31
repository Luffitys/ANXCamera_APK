.class Lmiui/maml/elements/video/BaseVideoView$6;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lmiui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lmiui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lmiui/maml/elements/video/BaseVideoView;->access$200(Lmiui/maml/elements/video/BaseVideoView;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/video/BaseVideoView;->seekTo(I)V

    :cond_1d
    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mLooping:Z
    invoke-static {v1}, Lmiui/maml/elements/video/BaseVideoView;->access$800(Lmiui/maml/elements/video/BaseVideoView;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mVolume:F
    invoke-static {v1}, Lmiui/maml/elements/video/BaseVideoView;->access$900(Lmiui/maml/elements/video/BaseVideoView;)F

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mVolume:F
    invoke-static {v2}, Lmiui/maml/elements/video/BaseVideoView;->access$900(Lmiui/maml/elements/video/BaseVideoView;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    const/4 v2, 0x2

    # invokes: Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V
    invoke-static {v1, v2}, Lmiui/maml/elements/video/BaseVideoView;->access$400(Lmiui/maml/elements/video/BaseVideoView;I)V

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v1}, Lmiui/maml/elements/video/BaseVideoView;->getDuration()I

    move-result v2

    # invokes: Lmiui/maml/elements/video/BaseVideoView;->updateDurationVar(I)V
    invoke-static {v1, v2}, Lmiui/maml/elements/video/BaseVideoView;->access$1000(Lmiui/maml/elements/video/BaseVideoView;I)V

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I
    invoke-static {v1}, Lmiui/maml/elements/video/BaseVideoView;->access$000(Lmiui/maml/elements/video/BaseVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_52

    iget-object v1, p0, Lmiui/maml/elements/video/BaseVideoView$6;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v1}, Lmiui/maml/elements/video/BaseVideoView;->start()V

    :cond_52
    return-void
.end method
