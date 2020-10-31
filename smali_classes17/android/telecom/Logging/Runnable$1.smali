.class Landroid/telecom/Logging/Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Logging/Runnable;


# direct methods
.method constructor <init>(Landroid/telecom/Logging/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    # getter for: Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telecom/Logging/Runnable;->access$000(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    # getter for: Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;
    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    # getter for: Landroid/telecom/Logging/Runnable;->mSubsessionName:Ljava/lang/String;
    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->access$200(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-virtual {v2}, Landroid/telecom/Logging/Runnable;->loggedRun()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2e

    :try_start_1c
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    # getter for: Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;
    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    # setter for: Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;
    invoke-static {v2, v1}, Landroid/telecom/Logging/Runnable;->access$102(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;

    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v2

    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    # getter for: Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;
    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    # setter for: Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;
    invoke-static {v3, v1}, Landroid/telecom/Logging/Runnable;->access$102(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;

    :cond_3f
    nop

    throw v2

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_41

    throw v1
.end method
