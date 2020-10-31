.class final Landroid/media/tv/TvInputManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :cond_15
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :cond_1d
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    # invokes: Landroid/media/tv/TvInputManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$Session;->access$1400(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method
