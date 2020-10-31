.class Lmiui/maml/elements/video/BaseVideoView$1;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I
    invoke-static {v0}, Lmiui/maml/elements/video/BaseVideoView;->access$000(Lmiui/maml/elements/video/BaseVideoView;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iget-object v3, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    iget v3, v3, Lmiui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    if-ne v3, p3, :cond_1b

    iget-object v3, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    iget v3, v3, Lmiui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    if-ne v3, p4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lmiui/maml/elements/video/BaseVideoView;->access$100(Lmiui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lmiui/maml/elements/video/BaseVideoView;->access$200(Lmiui/maml/elements/video/BaseVideoView;)I

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lmiui/maml/elements/video/BaseVideoView;->access$200(Lmiui/maml/elements/video/BaseVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/video/BaseVideoView;->seekTo(I)V

    :cond_39
    iget-object v2, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v2}, Lmiui/maml/elements/video/BaseVideoView;->start()V

    :cond_3e
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/video/BaseVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # invokes: Lmiui/maml/elements/video/BaseVideoView;->openVideo()V
    invoke-static {v0}, Lmiui/maml/elements/video/BaseVideoView;->access$300(Lmiui/maml/elements/video/BaseVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$1;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->onSurfaceDestroyed()V

    return-void
.end method
