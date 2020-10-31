.class Landroid/media/AudioRecordingMonitorImpl$1;
.super Landroid/media/IRecordingConfigDispatcher$Stub;
.source "AudioRecordingMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecordingMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioRecordingMonitorImpl;


# direct methods
.method constructor <init>(Landroid/media/AudioRecordingMonitorImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {p0}, Landroid/media/IRecordingConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchRecordingConfigChange(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingMonitorImpl;->getMyConfig(Ljava/util/List;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    # getter for: Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioRecordingMonitorImpl;->access$000(Landroid/media/AudioRecordingMonitorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v2, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    # getter for: Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/media/AudioRecordingMonitorImpl;->access$100(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    # getter for: Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/media/AudioRecordingMonitorImpl;->access$100(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    # getter for: Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/media/AudioRecordingMonitorImpl;->access$100(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    monitor-exit v1

    goto :goto_30

    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_2d

    throw v2

    :cond_30
    :goto_30
    return-void
.end method
