.class Lmiui/util/MiuiScreenshotHelper$3;
.super Ljava/lang/Object;
.source "MiuiScreenshotHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lmiui/util/MiuiScreenshotHelper;Ljava/util/function/Consumer;)V
    .registers 3

    iput-object p1, p0, Lmiui/util/MiuiScreenshotHelper$3;->this$0:Lmiui/util/MiuiScreenshotHelper;

    iput-object p2, p0, Lmiui/util/MiuiScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper$3;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/MiuiScreenshotHelper;->access$000(Lmiui/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$3;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$3;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$200(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lmiui/util/MiuiScreenshotHelper$3;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # getter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lmiui/util/MiuiScreenshotHelper;->access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$3;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # setter for: Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lmiui/util/MiuiScreenshotHelper;->access$102(Lmiui/util/MiuiScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v1, p0, Lmiui/util/MiuiScreenshotHelper$3;->this$0:Lmiui/util/MiuiScreenshotHelper;

    # invokes: Lmiui/util/MiuiScreenshotHelper;->notifyScreenshotError()V
    invoke-static {v1}, Lmiui/util/MiuiScreenshotHelper;->access$300(Lmiui/util/MiuiScreenshotHelper;)V

    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_32

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_31

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_31
    return-void

    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method
