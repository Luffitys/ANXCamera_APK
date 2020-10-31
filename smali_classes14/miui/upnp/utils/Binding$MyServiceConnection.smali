.class Lmiui/upnp/utils/Binding$MyServiceConnection;
.super Ljava/lang/Object;
.source "Binding.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/utils/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/utils/Binding;


# direct methods
.method private constructor <init>(Lmiui/upnp/utils/Binding;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/upnp/utils/Binding;Lmiui/upnp/utils/Binding$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/upnp/utils/Binding$MyServiceConnection;-><init>(Lmiui/upnp/utils/Binding;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    # getter for: Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/upnp/utils/Binding;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onServiceConnected: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-virtual {v0, p1, p2}, Lmiui/upnp/utils/Binding;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v0}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v0

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    sget-object v2, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;

    iput-object v2, v1, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/upnp/utils/Binding$ServiceState;->waiting:Z

    if-eqz v1, :cond_40

    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    # getter for: Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/upnp/utils/Binding;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onServiceDisconnected: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-virtual {v0, p1}, Lmiui/upnp/utils/Binding;->onServiceDisconnected(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v0}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v0

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    sget-object v2, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    iput-object v2, v1, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/upnp/utils/Binding$ServiceState;->waiting:Z

    if-eqz v1, :cond_40

    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    # getter for: Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;
    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method
