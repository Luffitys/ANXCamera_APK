.class Lcom/android/internal/util/ScreenshotHelper$1;
.super Landroid/os/Handler;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/ScreenshotHelper;

.field final synthetic val$completionConsumer:Ljava/util/function/Consumer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mScreenshotTimeout:Ljava/lang/Runnable;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/ServiceConnection;)V
    .registers 7

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$completionConsumer:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_4c

    :cond_9
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    # getter for: Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->access$000(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_10
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$myConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    # getter for: Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v1, v2, :cond_34

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    # getter for: Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$200(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/android/internal/util/ScreenshotHelper;->access$102(Lcom/android/internal/util/ScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    # setter for: Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;
    invoke-static {v1, v2}, Lcom/android/internal/util/ScreenshotHelper;->access$302(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/IBinder;)Landroid/os/IBinder;

    :cond_34
    monitor-exit v0

    goto :goto_4c

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v1

    :cond_39
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_44

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_44
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    nop

    :goto_4c
    return-void
.end method
