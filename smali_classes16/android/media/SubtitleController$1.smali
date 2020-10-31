.class Landroid/media/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleController;


# direct methods
.method constructor <init>(Landroid/media/SubtitleController;)V
    .registers 2

    iput-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x3

    if-eq v0, v2, :cond_16

    const/4 v2, 0x4

    if-eq v0, v2, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    # invokes: Landroid/media/SubtitleController;->doSelectDefaultTrack()V
    invoke-static {v0}, Landroid/media/SubtitleController;->access$300(Landroid/media/SubtitleController;)V

    return v1

    :cond_16
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/SubtitleTrack;

    # invokes: Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V
    invoke-static {v0, v2}, Landroid/media/SubtitleController;->access$200(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V

    return v1

    :cond_20
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    # invokes: Landroid/media/SubtitleController;->doHide()V
    invoke-static {v0}, Landroid/media/SubtitleController;->access$100(Landroid/media/SubtitleController;)V

    return v1

    :cond_26
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    # invokes: Landroid/media/SubtitleController;->doShow()V
    invoke-static {v0}, Landroid/media/SubtitleController;->access$000(Landroid/media/SubtitleController;)V

    return v1
.end method
