.class Lcom/android/camera/parallel/AlgoConnector$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/android/camera/parallel/AlgoConnector;


# direct methods
.method constructor <init>(Lcom/android/camera/parallel/AlgoConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/parallel/AlgoConnector$1;->this$0:Lcom/android/camera/parallel/AlgoConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRelevant(Landroid/content/ComponentName;)Z
    .locals 0

    const-class p0, Lcom/android/camera/LocalParallelService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", binder = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p2, Lcom/android/camera/LocalParallelService$LocalBinder;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->access$100()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/parallel/AlgoConnector$1;->this$0:Lcom/android/camera/parallel/AlgoConnector;

    check-cast p2, Lcom/android/camera/LocalParallelService$LocalBinder;

    invoke-static {p0, p2}, Lcom/android/camera/parallel/AlgoConnector;->access$202(Lcom/android/camera/parallel/AlgoConnector;Lcom/android/camera/LocalParallelService$LocalBinder;)Lcom/android/camera/LocalParallelService$LocalBinder;

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->access$100()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/camera/parallel/AlgoConnector$1;->isRelevant(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->access$100()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/parallel/AlgoConnector$1;->this$0:Lcom/android/camera/parallel/AlgoConnector;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/parallel/AlgoConnector;->access$202(Lcom/android/camera/parallel/AlgoConnector;Lcom/android/camera/LocalParallelService$LocalBinder;)Lcom/android/camera/LocalParallelService$LocalBinder;

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->access$100()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
