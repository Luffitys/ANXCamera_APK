.class Landroid/media/AudioStatusHandler$1;
.super Landroid/os/Handler;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    # getter for: Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioStatusHandler;->access$000(Landroid/media/AudioStatusHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    # getter for: Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;
    invoke-static {v1}, Landroid/media/AudioStatusHandler;->access$100(Landroid/media/AudioStatusHandler;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioStatusHandler$AudioState;

    invoke-virtual {v2}, Landroid/media/AudioStatusHandler$AudioState;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v2, p1}, Landroid/media/AudioStatusHandler$AudioState;->onMessageReceived(Landroid/os/Message;)Z

    :cond_2a
    goto :goto_15

    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1
.end method
