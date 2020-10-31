.class Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;
.super Ljava/lang/Thread;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeRuntimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeServiceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method private constructor <init>(Lmiui/content/res/ThemeRuntimeManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :goto_0
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # invokes: Lmiui/content/res/ThemeRuntimeManager;->bindService()V
    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->access$000(Lmiui/content/res/ThemeRuntimeManager;)V

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # getter for: Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B
    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v0

    monitor-enter v0

    :goto_c
    :try_start_c
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # getter for: Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$300(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v1

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_72

    :try_start_1f
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # getter for: Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;
    invoke-static {v2}, Lmiui/content/res/ThemeRuntimeManager;->access$400(Lmiui/content/res/ThemeRuntimeManager;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_29

    monitor-exit v1

    goto :goto_47

    :cond_29
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;
    invoke-static {v2}, Lmiui/content/res/ThemeRuntimeManager;->access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    # invokes: Lmiui/content/res/ThemeRuntimeManager;->saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v5}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    monitor-exit v1

    goto :goto_c

    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_72

    :cond_47
    :goto_47
    :try_start_47
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # getter for: Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_52} :catch_53
    .catchall {:try_start_47 .. :try_end_52} :catchall_72

    goto :goto_57

    :catch_53
    move-exception v1

    :try_start_54
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_57
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    # invokes: Lmiui/content/res/ThemeRuntimeManager;->unbindService()V
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$600(Lmiui/content/res/ThemeRuntimeManager;)V

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    const/4 v2, 0x1

    # setter for: Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z
    invoke-static {v1, v2}, Lmiui/content/res/ThemeRuntimeManager;->access$702(Lmiui/content/res/ThemeRuntimeManager;Z)Z

    monitor-exit v0

    return-void

    :cond_70
    monitor-exit v0

    goto :goto_0

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_54 .. :try_end_74} :catchall_72

    throw v1
.end method
