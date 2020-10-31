.class Landroid/provider/FontsContract$1;
.super Ljava/lang/Object;
.source "FontsContract.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    # getter for: Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/provider/FontsContract;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    # getter for: Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;
    invoke-static {}, Landroid/provider/FontsContract;->access$100()Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_19

    # getter for: Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;
    invoke-static {}, Landroid/provider/FontsContract;->access$100()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    # setter for: Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Landroid/provider/FontsContract;->access$102(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    # setter for: Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/provider/FontsContract;->access$202(Landroid/os/Handler;)Landroid/os/Handler;

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method
