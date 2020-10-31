.class Landroid/app/ActivityInjector;
.super Ljava/lang/Object;
.source "ActivityInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityInjector"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAccessControl(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/MessageMonitor;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/os/MessageMonitor;->getRunningMessage()Landroid/os/Message;

    move-result-object v2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2a

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/servertransaction/ClientTransaction;

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v4
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2b

    move v0, v4

    :cond_2a
    goto :goto_33

    :catch_2b
    move-exception v1

    const-string v2, "ActivityInjector"

    const-string v3, "get life cycle exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    const-string/jumbo v1, "security"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    const/4 v2, 0x5

    if-ge v0, v2, :cond_48

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lmiui/security/SecurityManager;->checkAccessControl(Landroid/app/Activity;I)V

    :cond_48
    return-void
.end method
