.class Landroid/content/BroadcastReceiver$PendingResult$1;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/BroadcastReceiver$PendingResult;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V
    .registers 3

    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "ActivityThread"

    const-string v1, "broadcast wait to finish, took too long 5000ms"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v1, v1, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw v1
.end method
