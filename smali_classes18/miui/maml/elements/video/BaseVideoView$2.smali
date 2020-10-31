.class Lmiui/maml/elements/video/BaseVideoView$2;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView$2;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$2;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    const/4 v1, 0x5

    # setter for: Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I
    invoke-static {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->access$002(Lmiui/maml/elements/video/BaseVideoView;I)I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$2;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # invokes: Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V
    invoke-static {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->access$400(Lmiui/maml/elements/video/BaseVideoView;I)V

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$2;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->getDuration()I

    move-result v1

    # invokes: Lmiui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V
    invoke-static {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->access$500(Lmiui/maml/elements/video/BaseVideoView;I)V

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$2;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mAudioFocusType:I
    invoke-static {v0}, Lmiui/maml/elements/video/BaseVideoView;->access$600(Lmiui/maml/elements/video/BaseVideoView;)I

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$2;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # getter for: Lmiui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lmiui/maml/elements/video/BaseVideoView;->access$700(Lmiui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_26
    return-void
.end method
