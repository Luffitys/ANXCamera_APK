.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method

.method static synthetic lambda$onUnsyncableAccount$0(Ljava/lang/Object;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/content/AbstractThreadedSyncAdapter;

    # invokes: Landroid/content/AbstractThreadedSyncAdapter;->handleOnUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    invoke-static {v0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->access$1200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_96
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_8} :catch_96
    .catchall {:try_start_1 .. :try_end_8} :catchall_94

    :try_start_8
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$800(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_32

    move-object v0, v3

    goto :goto_33

    :cond_32
    goto :goto_16

    :cond_33
    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_91

    if-eqz v0, :cond_76

    :try_start_36
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "SyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSync() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$900(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$1000(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$1100(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v1, v0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V

    goto :goto_83

    :cond_70
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    goto :goto_83

    :cond_76
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() unknown context"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_83} :catch_96
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_83} :catch_96
    .catchall {:try_start_36 .. :try_end_83} :catchall_94

    :cond_83
    :goto_83
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "SyncAdapter"

    const-string v1, "cancelSync() finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-void

    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    :try_start_93
    throw v2
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_94} :catch_96
    .catch Ljava/lang/Error; {:try_start_93 .. :try_end_94} :catch_96
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception v0

    goto :goto_a6

    :catch_96
    move-exception v0

    :try_start_97
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_a4

    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() caught exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a4
    nop

    throw v0
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_94

    :goto_a6
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_b3

    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    throw v0
.end method

.method public onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .registers 5

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/content/-$$Lambda$AbstractThreadedSyncAdapter$ISyncAdapterImpl$L6ZtOCe8gjKwJj0908ytPlrD8Rc;->INSTANCE:Landroid/content/-$$Lambda$AbstractThreadedSyncAdapter$ISyncAdapterImpl$L6ZtOCe8gjKwJj0908ytPlrD8Rc;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz v12, :cond_13

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->size()I

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSync() start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :try_start_3a
    new-instance v0, Landroid/content/SyncContext;
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3c} :catch_106
    .catch Ljava/lang/Error; {:try_start_3a .. :try_end_3c} :catch_106
    .catchall {:try_start_3a .. :try_end_3c} :catchall_102

    move-object/from16 v13, p1

    :try_start_3e
    invoke-direct {v0, v13}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    move-object v14, v0

    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # invokes: Landroid/content/AbstractThreadedSyncAdapter;->toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;
    invoke-static {v0, v11}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    move-object v15, v0

    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_50} :catch_100
    .catch Ljava/lang/Error; {:try_start_3e .. :try_end_50} :catch_100
    .catchall {:try_start_3e .. :try_end_50} :catchall_fe

    :try_start_50
    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$500(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_9d

    if-eqz v12, :cond_9d

    const-string v0, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_6d
    .catchall {:try_start_50 .. :try_end_6d} :catchall_fb

    if-eqz v0, :cond_9d

    :try_start_6f
    invoke-static {v11, v10}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_79

    const/4 v0, 0x1

    invoke-static {v11, v10, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_79
    .catchall {:try_start_6f .. :try_end_79} :catchall_92

    :cond_79
    :try_start_79
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v14, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    nop

    monitor-exit v16
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_fb

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, "SyncAdapter"

    const-string/jumbo v2, "startSync() finishing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    return-void

    :catchall_92
    move-exception v0

    :try_start_93
    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v14, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    nop

    throw v0

    :cond_9d
    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v3, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncAdapterThread-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->access$600(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    move-object v2, v0

    move-object v5, v14

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    iget-object v2, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V

    const/4 v0, 0x0

    goto :goto_e4

    :cond_d6
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string v0, "SyncAdapter"

    const-string v2, "  alreadyInProgress"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    const/4 v0, 0x1

    :goto_e4
    monitor-exit v16
    :try_end_e5
    .catchall {:try_start_93 .. :try_end_e5} :catchall_fb

    if-eqz v0, :cond_ec

    :try_start_e7
    sget-object v2, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v14, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_ec
    .catch Ljava/lang/RuntimeException; {:try_start_e7 .. :try_end_ec} :catch_100
    .catch Ljava/lang/Error; {:try_start_e7 .. :try_end_ec} :catch_100
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_fe

    :cond_ec
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_fa

    const-string v0, "SyncAdapter"

    const-string/jumbo v2, "startSync() finishing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    return-void

    :catchall_fb
    move-exception v0

    :try_start_fc
    monitor-exit v16
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw v0
    :try_end_fe
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_fe} :catch_100
    .catch Ljava/lang/Error; {:try_start_fd .. :try_end_fe} :catch_100
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fe

    :catchall_fe
    move-exception v0

    goto :goto_119

    :catch_100
    move-exception v0

    goto :goto_109

    :catchall_102
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_119

    :catch_106
    move-exception v0

    move-object/from16 v13, p1

    :goto_109
    :try_start_109
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_117

    const-string v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() caught exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_117
    nop

    throw v0
    :try_end_119
    .catchall {:try_start_109 .. :try_end_119} :catchall_fe

    :goto_119
    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_127

    const-string v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_127
    throw v0
.end method
