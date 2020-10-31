.class Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;
.super Ljava/lang/Object;
.source "DynamicSystemClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/DynamicSystemClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynSystemServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/image/DynamicSystemClient;


# direct methods
.method private constructor <init>(Landroid/os/image/DynamicSystemClient;)V
    .registers 2

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/image/DynamicSystemClient;Landroid/os/image/DynamicSystemClient$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;-><init>(Landroid/os/image/DynamicSystemClient;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onServiceConnected$0$DynamicSystemClient$DynSystemServiceConnection(Landroid/os/RemoteException;)V
    .registers 9

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    # getter for: Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;
    invoke-static {v0}, Landroid/os/image/DynamicSystemClient;->access$400(Landroid/os/image/DynamicSystemClient;)Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    const-string v0, "DynSystemClient"

    const-string v1, "DynSystemService connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;
    invoke-static {v1, v2}, Landroid/os/image/DynamicSystemClient;->access$102(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    # getter for: Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Landroid/os/image/DynamicSystemClient;->access$200(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    # getter for: Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;
    invoke-static {v2}, Landroid/os/image/DynamicSystemClient;->access$100(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_28} :catch_29

    goto :goto_54

    :catch_29
    move-exception v1

    const-string v2, "Unable to get status from installation service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    # getter for: Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/os/image/DynamicSystemClient;->access$300(Landroid/os/image/DynamicSystemClient;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    # getter for: Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/os/image/DynamicSystemClient;->access$300(Landroid/os/image/DynamicSystemClient;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroid/os/image/-$$Lambda$DynamicSystemClient$DynSystemServiceConnection$Q-VWaYUew87mkpsE47b33p5XLa8;

    invoke-direct {v2, p0, v1}, Landroid/os/image/-$$Lambda$DynamicSystemClient$DynSystemServiceConnection$Q-VWaYUew87mkpsE47b33p5XLa8;-><init>(Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;Landroid/os/RemoteException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_54

    :cond_46
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    # getter for: Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;
    invoke-static {v0}, Landroid/os/image/DynamicSystemClient;->access$400(Landroid/os/image/DynamicSystemClient;)Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide/16 v5, 0x0

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    :goto_54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "DynSystemClient"

    const-string v1, "DynSystemService disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    const/4 v1, 0x0

    # setter for: Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Landroid/os/image/DynamicSystemClient;->access$102(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
