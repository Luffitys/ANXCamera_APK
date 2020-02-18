.class Lcom/xiaomi/stat/af;
.super Landroid/os/FileObserver;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/ad;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/ad;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/af;->a:Lcom/xiaomi/stat/ad;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/stat/af;->a:Lcom/xiaomi/stat/ad;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/stat/af;->a:Lcom/xiaomi/stat/ad;

    invoke-static {p0}, Lcom/xiaomi/stat/ad;->b(Lcom/xiaomi/stat/ad;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/xiaomi/stat/b;->o()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
