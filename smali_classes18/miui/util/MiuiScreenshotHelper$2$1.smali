.class Lmiui/util/MiuiScreenshotHelper$2$1;
.super Landroid/os/Handler;
.source "MiuiScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/MiuiScreenshotHelper$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/util/MiuiScreenshotHelper$2;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lmiui/util/MiuiScreenshotHelper$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iput-object p3, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v0, v0, Lmiui/util/MiuiScreenshotHelper$2;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/MiuiScreenshotHelper;->access$000(Lmiui/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v1, v1, Lmiui/util/MiuiScreenshotHelper$2;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v1, v1, Lmiui/util/MiuiScreenshotHelper$2;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$200(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v2, v2, Lmiui/util/MiuiScreenshotHelper$2;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lmiui/util/MiuiScreenshotHelper;->access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v1, v1, Lmiui/util/MiuiScreenshotHelper$2;->this$0:Lmiui/util/MiuiScreenshotHelper;

    const/4 v2, 0x0

    # setter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lmiui/util/MiuiScreenshotHelper;->access$102(Lmiui/util/MiuiScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v1, v1, Lmiui/util/MiuiScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v2, v2, Lmiui/util/MiuiScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_4e

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v0, v0, Lmiui/util/MiuiScreenshotHelper$2;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper$2$1;->this$1:Lmiui/util/MiuiScreenshotHelper$2;

    iget-object v0, v0, Lmiui/util/MiuiScreenshotHelper$2;->val$completionConsumer:Ljava/util/function/Consumer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4d
    return-void

    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method
