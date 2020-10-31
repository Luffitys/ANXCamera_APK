.class Lmiui/util/MiuiScreenshotHelper$4;
.super Ljava/lang/Object;
.source "MiuiScreenshotHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/MiuiScreenshotHelper;->takeScreenshotPartial(IZZ[FJLandroid/os/Handler;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/MiuiScreenshotHelper;

.field final synthetic val$completionConsumer:Ljava/util/function/Consumer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$hasNav:Z

.field final synthetic val$hasStatus:Z

.field final synthetic val$mScreenshotTimeout:Ljava/lang/Runnable;

.field final synthetic val$pathList:[F

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lmiui/util/MiuiScreenshotHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/util/function/Consumer;ZZ[F)V
    .registers 9

    iput-object p1, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    iput p2, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$screenshotType:I

    iput-object p3, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    iput-object p5, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$completionConsumer:Ljava/util/function/Consumer;

    iput-boolean p6, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$hasStatus:Z

    iput-boolean p7, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$hasNav:Z

    iput-object p8, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$pathList:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/MiuiScreenshotHelper;->access$000(Lmiui/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eq v1, p0, :cond_11

    monitor-exit v0

    return-void

    :cond_11
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iget v2, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$screenshotType:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    move-object v4, p0

    new-instance v5, Lmiui/util/MiuiScreenshotHelper$4$1;

    iget-object v6, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Lmiui/util/MiuiScreenshotHelper$4$1;-><init>(Lmiui/util/MiuiScreenshotHelper$4;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v6, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-boolean v6, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$hasStatus:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_38

    move v6, v7

    goto :goto_39

    :cond_38
    move v6, v8

    :goto_39
    iput v6, v2, Landroid/os/Message;->arg1:I

    iget-boolean v6, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$hasNav:Z

    if-eqz v6, :cond_40

    goto :goto_41

    :cond_40
    move v7, v8

    :goto_41
    iput v7, v2, Landroid/os/Message;->arg2:I
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_78

    :try_start_43
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "partial.screenshot.points"

    iget-object v8, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$pathList:[F

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    invoke-virtual {v2, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_55} :catch_56
    .catchall {:try_start_43 .. :try_end_55} :catchall_78

    goto :goto_76

    :catch_56
    move-exception v6

    :try_start_57
    const-string v7, "MiuiScreenshotHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t take screenshot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v7, :cond_76

    iget-object v7, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$completionConsumer:Ljava/util/function/Consumer;

    invoke-interface {v7, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_76
    :goto_76
    monitor-exit v0

    return-void

    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_57 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/MiuiScreenshotHelper;->access$000(Lmiui/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$200(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lmiui/util/MiuiScreenshotHelper;->access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    const/4 v2, 0x0

    # setter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lmiui/util/MiuiScreenshotHelper;->access$102(Lmiui/util/MiuiScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/util/MiuiScreenshotHelper$4;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$4;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # invokes: Lmiui/util/MiuiScreenshotHelper;->notifyScreenshotError()V
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$300(Lmiui/util/MiuiScreenshotHelper;)V

    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method
