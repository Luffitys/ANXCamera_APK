.class Lcom/android/camera/AudioMonitorPlayer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/AudioMonitorPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/AudioMonitorPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "MiuiAudioMonitor"

    :try_start_0
    const-string v1, "STAR PLAY AUDIO ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$000(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    new-instance v9, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    const v4, 0xbb80

    const/4 v5, 0x4

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v2}, Lcom/android/camera/AudioMonitorPlayer;->access$100(Lcom/android/camera/AudioMonitorPlayer;)I

    move-result v7

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-static {v1, v9}, Lcom/android/camera/AudioMonitorPlayer;->access$002(Lcom/android/camera/AudioMonitorPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$200(Lcom/android/camera/AudioMonitorPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$000(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$000(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v2}, Lcom/android/camera/AudioMonitorPlayer;->access$300(Lcom/android/camera/AudioMonitorPlayer;)[S

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v4}, Lcom/android/camera/AudioMonitorPlayer;->access$100(Lcom/android/camera/AudioMonitorPlayer;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioTrack;->write([SII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "exception when play audio :"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
