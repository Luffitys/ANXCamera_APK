.class Landroid/net/NetworkAgent$NetworkAgentHandler;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkAgentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/NetworkAgent;


# direct methods
.method constructor <init>(Landroid/net/NetworkAgent;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_19e

    goto/16 :goto_19c

    :sswitch_a
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->onRemoveKeepalivePacketFilter(I)V

    goto/16 :goto_19c

    :sswitch_13
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/KeepalivePacketData;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkAgent;->onAddKeepalivePacketFilter(ILandroid/net/KeepalivePacketData;)V

    goto/16 :goto_19c

    :sswitch_20
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->onAutomaticReconnectDisabled()V

    goto/16 :goto_19c

    :sswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "thresholds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_38
    new-array v1, v3, [I

    const/4 v2, 0x0

    :goto_3b
    array-length v3, v1

    if-ge v2, v3, :cond_4d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->onSignalStrengthThresholdsUpdated([I)V

    goto/16 :goto_19c

    :sswitch_54
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->onStopSocketKeepalive(I)V

    goto/16 :goto_19c

    :sswitch_5d
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/KeepalivePacketData;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkAgent;->onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    goto/16 :goto_19c

    :sswitch_71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mLastBwRefreshTime:J
    invoke-static {v4}, Landroid/net/NetworkAgent;->access$200(Landroid/net/NetworkAgent;)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-ltz v4, :cond_9a

    iget-object v4, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # setter for: Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z
    invoke-static {v4, v3}, Landroid/net/NetworkAgent;->access$302(Landroid/net/NetworkAgent;Z)Z

    iget-object v3, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mBandwidthUpdatePending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Landroid/net/NetworkAgent;->access$400(Landroid/net/NetworkAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_19c

    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v2}, Landroid/net/NetworkAgent;->onBandwidthUpdateRequested()V

    goto/16 :goto_19c

    :cond_9a
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z
    invoke-static {v2}, Landroid/net/NetworkAgent;->access$300(Landroid/net/NetworkAgent;)Z

    move-result v2

    if-nez v2, :cond_19c

    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mLastBwRefreshTime:J
    invoke-static {v2}, Landroid/net/NetworkAgent;->access$200(Landroid/net/NetworkAgent;)J

    move-result-wide v2

    add-long/2addr v2, v6

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    const v5, 0x8100a

    invoke-virtual {p0, v5, v2, v3}, Landroid/net/NetworkAgent$NetworkAgentHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v5

    # setter for: Landroid/net/NetworkAgent;->mBandwidthUpdateScheduled:Z
    invoke-static {v4, v5}, Landroid/net/NetworkAgent;->access$302(Landroid/net/NetworkAgent;Z)Z

    goto/16 :goto_19c

    :sswitch_bb
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c2

    goto :goto_c3

    :cond_c2
    move v2, v3

    :goto_c3
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgent;->onSaveAcceptUnvalidated(Z)V

    goto/16 :goto_19c

    :sswitch_c8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f7

    :try_start_d5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d9} :catch_db

    move-object v1, v2

    goto :goto_f7

    :catch_db
    move-exception v2

    iget-object v3, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/NetworkAgent;->access$500(Landroid/net/NetworkAgent;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surprising URI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f8

    :cond_f7
    :goto_f7
    nop

    :goto_f8
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/net/NetworkAgent;->onValidationStatus(ILandroid/net/Uri;)V

    goto/16 :goto_19c

    :sswitch_101
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto/16 :goto_19c

    :sswitch_119
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    const-string v2, "NetworkAgent channel lost"

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->onNetworkUnwanted()V

    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/net/NetworkAgent;->access$100(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_12c
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # setter for: Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v1}, Landroid/net/NetworkAgent;->access$002(Landroid/net/NetworkAgent;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    monitor-exit v0

    goto :goto_19c

    :catchall_133
    move-exception v1

    monitor-exit v0
    :try_end_135
    .catchall {:try_start_12c .. :try_end_135} :catchall_133

    throw v1

    :sswitch_136
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/NetworkAgent;->access$000(Landroid/net/NetworkAgent;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_19c

    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/NetworkAgent;->access$000(Landroid/net/NetworkAgent;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_19c

    :sswitch_148
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/NetworkAgent;->access$000(Landroid/net/NetworkAgent;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_158

    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    const-string v1, "Received new connection while already connected!"

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_19c

    :cond_158
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const v1, 0x11002

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/net/NetworkAgent;->access$100(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_16f
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # setter for: Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v0}, Landroid/net/NetworkAgent;->access$002(Landroid/net/NetworkAgent;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/net/NetworkAgent;->access$100(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_17e

    :cond_18e
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    # getter for: Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/net/NetworkAgent;->access$100(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    goto :goto_19c

    :catchall_199
    move-exception v2

    monitor-exit v1
    :try_end_19b
    .catchall {:try_start_16f .. :try_end_19b} :catchall_199

    throw v2

    :cond_19c
    :goto_19c
    return-void

    nop

    :sswitch_data_19e
    .sparse-switch
        0x11001 -> :sswitch_148
        0x11003 -> :sswitch_136
        0x11004 -> :sswitch_119
        0x81000 -> :sswitch_101
        0x81007 -> :sswitch_c8
        0x81009 -> :sswitch_bb
        0x8100a -> :sswitch_71
        0x8100b -> :sswitch_5d
        0x8100c -> :sswitch_54
        0x8100e -> :sswitch_27
        0x8100f -> :sswitch_20
        0x81010 -> :sswitch_13
        0x81011 -> :sswitch_a
    .end sparse-switch
.end method
