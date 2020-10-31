.class Landroid/hardware/miuiface/BiometricClient$ConnectHandler;
.super Landroid/os/Handler;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/BiometricClient;


# direct methods
.method public constructor <init>(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {p1}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":ConnectHandler"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    const-string v1, ", arg1:"

    const-string v2, ":"

    const-string v3, "BiometricClient"

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v4}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handleMessage cb - what:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x270f

    if-ne v0, v4, :cond_51

    const-string v0, "MSG_CONNECT_TEST ok"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$900(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$900(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_50
    return-void

    :cond_51
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$1100(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    move-result-object v0

    if-nez v0, :cond_96

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":handleMessage cb ignore- what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_96
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v4, Landroid/miui/BiometricConnect;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "result"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1d8

    const/16 v6, 0x3e9

    if-eq v5, v6, :cond_17b

    const/16 v6, 0x3ec

    const-string v7, "module_id"

    if-eq v5, v6, :cond_11c

    const/16 v6, 0x3ed

    if-eq v5, v6, :cond_c9

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_24f

    :cond_c9
    if-eqz v4, :cond_e7

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;
    invoke-static {v5}, Landroid/hardware/miuiface/BiometricClient;->access$1100(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    move-result-object v5

    if-eqz v5, :cond_e7

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$1100(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/hardware/miuiface/BiometricClient$ServiceCallback;->onBiometricBundleCallback(IILandroid/os/Bundle;)V

    goto :goto_111

    :cond_e7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":handleMessage cb MSG_CALLBACK_BUNDLE ignore- what:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_111
    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_24f

    :cond_11c
    if-eqz v4, :cond_146

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;
    invoke-static {v5}, Landroid/hardware/miuiface/BiometricClient;->access$1100(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    move-result-object v5

    if-eqz v5, :cond_146

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$1100(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "event"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "arg1"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "arg2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v2, v3, v5, v6}, Landroid/hardware/miuiface/BiometricClient$ServiceCallback;->onBiometricEventCallback(IIII)V

    goto :goto_170

    :cond_146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":handleMessage cb MSG_CALLBACK_EVENT ignore- what:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_170
    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_24f

    :cond_17b
    const/4 v1, 0x2

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_1a8

    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_1a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":handleMessage cb - MSG_COMMAND_DEINIT_CALLBACK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a1
    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    const/4 v2, 0x0

    # invokes: Landroid/hardware/miuiface/BiometricClient;->onServiceUnbind(Z)V
    invoke-static {v1, v2}, Landroid/hardware/miuiface/BiometricClient;->access$300(Landroid/hardware/miuiface/BiometricClient;Z)V

    goto :goto_1ce

    :cond_1a8
    const/4 v1, 0x1

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_1ce

    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_1ce

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":handleMessage cb - MSG_COMMAND_INIT_CALLBACK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ce
    :goto_1ce
    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_24f

    :cond_1d8
    const-string/jumbo v1, "svc_ver_maj"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "svc_ver_min"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "module_ver_maj"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "module_ver_min"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":handleMessage cb - MSG_SEVICE_VERSION:SVC: v"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", Module: v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mClientLister:Landroid/hardware/miuiface/BiometricClient$ClientLister;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$1200(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ClientLister;

    move-result-object v2

    if-eqz v2, :cond_245

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mClientLister:Landroid/hardware/miuiface/BiometricClient$ClientLister;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$1200(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ClientLister;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x64

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v3, v8

    mul-int/lit8 v9, v6, 0x64

    add-int/2addr v9, v7

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-interface {v2, v3, v9}, Landroid/hardware/miuiface/BiometricClient$ClientLister;->onVersion(FF)V

    :cond_245
    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    :goto_24f
    const-string v1, "auto_reply"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_260

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Landroid/hardware/miuiface/BiometricClient;->access$900(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_260
    return-void
.end method
