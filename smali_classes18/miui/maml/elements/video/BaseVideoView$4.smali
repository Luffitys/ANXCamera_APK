.class Lmiui/maml/elements/video/BaseVideoView$4;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView$4;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$4;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    const/4 v1, -0x1

    # setter for: Lmiui/maml/elements/video/BaseVideoView;->mTargetState:I
    invoke-static {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->access$002(Lmiui/maml/elements/video/BaseVideoView;I)I

    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$4;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    # invokes: Lmiui/maml/elements/video/BaseVideoView;->updateStateVar(I)V
    invoke-static {v0, v1}, Lmiui/maml/elements/video/BaseVideoView;->access$400(Lmiui/maml/elements/video/BaseVideoView;I)V

    const/4 v0, 0x1

    return v0
.end method
