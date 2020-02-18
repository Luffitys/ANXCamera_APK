.class Lcom/xiaomi/stat/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/xiaomi/stat/c/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/c/d;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iput-object p2, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/xiaomi/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/a/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/xiaomi/stat/b;->y()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v3, v3, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v5, v5, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v0, v0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v3, v3, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v5, v5, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    :goto_0
    const-string v0, "UploadMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " connected, do remote http post "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/xiaomi/stat/c/i;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v3, Lcom/xiaomi/stat/c/i;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error while uploading the data by IPC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UploadMode"

    invoke-static {v3, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object p0, p0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    aput-object v1, p0, v2

    :goto_3
    return-void
.end method
