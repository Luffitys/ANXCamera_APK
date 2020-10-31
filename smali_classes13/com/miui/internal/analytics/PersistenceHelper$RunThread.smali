.class Lcom/miui/internal/analytics/PersistenceHelper$RunThread;
.super Ljava/lang/Thread;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/PersistenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/analytics/PersistenceHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/PersistenceHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;-><init>(Lcom/miui/internal/analytics/PersistenceHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    # getter for: Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/miui/internal/analytics/PersistenceHelper;->access$200(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    new-instance v2, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;-><init>(Lcom/miui/internal/analytics/PersistenceHelper$RunThread;)V

    # setter for: Lcom/miui/internal/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/miui/internal/analytics/PersistenceHelper;->access$302(Lcom/miui/internal/analytics/PersistenceHelper;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    # getter for: Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/miui/internal/analytics/PersistenceHelper;->access$200(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->this$0:Lcom/miui/internal/analytics/PersistenceHelper;

    # getter for: Lcom/miui/internal/analytics/PersistenceHelper;->mWorkerReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/miui/internal/analytics/PersistenceHelper;->access$200(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_2c

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method
