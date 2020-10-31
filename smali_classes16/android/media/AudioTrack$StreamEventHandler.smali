.class Landroid/media/AudioTrack$StreamEventHandler;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget-object v0, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # getter for: Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioTrack;->access$300(Landroid/media/AudioTrack;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_55

    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # getter for: Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioTrack;->access$400(Landroid/media/AudioTrack;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_bb

    :try_start_13
    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # getter for: Landroid/media/AudioTrack;->mPlayState:I
    invoke-static {v3}, Landroid/media/AudioTrack;->access$500(Landroid/media/AudioTrack;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_50

    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # getter for: Landroid/media/AudioTrack;->mOffloadEosPending:Z
    invoke-static {v3}, Landroid/media/AudioTrack;->access$600(Landroid/media/AudioTrack;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # invokes: Landroid/media/AudioTrack;->native_start()V
    invoke-static {v3}, Landroid/media/AudioTrack;->access$700(Landroid/media/AudioTrack;)V

    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    const/4 v5, 0x3

    # setter for: Landroid/media/AudioTrack;->mPlayState:I
    invoke-static {v3, v5}, Landroid/media/AudioTrack;->access$502(Landroid/media/AudioTrack;I)I

    goto :goto_42

    :cond_31
    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;
    invoke-static {v3, v5}, Landroid/media/AudioTrack;->access$802(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # setter for: Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I
    invoke-static {v3, v4}, Landroid/media/AudioTrack;->access$902(Landroid/media/AudioTrack;I)I

    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    const/4 v5, 0x1

    # setter for: Landroid/media/AudioTrack;->mPlayState:I
    invoke-static {v3, v5}, Landroid/media/AudioTrack;->access$502(Landroid/media/AudioTrack;I)I

    :goto_42
    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # setter for: Landroid/media/AudioTrack;->mOffloadEosPending:Z
    invoke-static {v3, v4}, Landroid/media/AudioTrack;->access$602(Landroid/media/AudioTrack;Z)Z

    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # getter for: Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioTrack;->access$400(Landroid/media/AudioTrack;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    :cond_50
    monitor-exit v1

    goto :goto_55

    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_52

    :try_start_54
    throw v2

    :cond_55
    :goto_55
    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # getter for: Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/media/AudioTrack;->access$1000(Landroid/media/AudioTrack;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_63

    monitor-exit v0

    return-void

    :cond_63
    new-instance v1, Ljava/util/LinkedList;

    iget-object v3, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    # getter for: Landroid/media/AudioTrack;->mStreamEventCbInfoList:Ljava/util/LinkedList;
    invoke-static {v3}, Landroid/media/AudioTrack;->access$1000(Landroid/media/AudioTrack;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_bb

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_73
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioTrack$StreamEventCbInfo;

    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_a5

    if-eq v6, v2, :cond_9a

    const/16 v7, 0x9

    if-eq v6, v7, :cond_8f

    goto :goto_b0

    :cond_8f
    iget-object v6, v5, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventExec:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;

    invoke-direct {v7, p0, v5, p1}, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;-><init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b0

    :cond_9a
    iget-object v6, v5, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventExec:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$-3NLz6Sbq0z_YUytzGW6tVjPCao;

    invoke-direct {v7, p0, v5}, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$-3NLz6Sbq0z_YUytzGW6tVjPCao;-><init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b0

    :cond_a5
    iget-object v6, v5, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventExec:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$uWnWUbk1g3MhAY3NoSFc6o37wsk;

    invoke-direct {v7, p0, v5}, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$uWnWUbk1g3MhAY3NoSFc6o37wsk;-><init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_af
    .catchall {:try_start_73 .. :try_end_af} :catchall_b6

    nop

    :goto_b0
    goto :goto_77

    :cond_b1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_b6
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v1
.end method

.method public synthetic lambda$handleMessage$0$AudioTrack$StreamEventHandler(Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    iget v2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack$StreamEventCallback;->onDataRequest(Landroid/media/AudioTrack;I)V

    return-void
.end method

.method public synthetic lambda$handleMessage$1$AudioTrack$StreamEventHandler(Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 4

    iget-object v0, p1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventCallback;->onTearDown(Landroid/media/AudioTrack;)V

    return-void
.end method

.method public synthetic lambda$handleMessage$2$AudioTrack$StreamEventHandler(Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 4

    iget-object v0, p1, Landroid/media/AudioTrack$StreamEventCbInfo;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler;->this$0:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventCallback;->onPresentationEnded(Landroid/media/AudioTrack;)V

    return-void
.end method
