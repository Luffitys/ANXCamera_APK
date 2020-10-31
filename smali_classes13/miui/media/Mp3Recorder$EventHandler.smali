.class Lmiui/media/Mp3Recorder$EventHandler;
.super Landroid/os/Handler;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/Mp3Recorder;


# direct methods
.method public constructor <init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1b

    :cond_6
    iget-object v0, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$EventHandler;->this$0:Lmiui/media/Mp3Recorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lmiui/media/Mp3Recorder$RecordingErrorListener;->onError(Lmiui/media/Mp3Recorder;I)V

    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
