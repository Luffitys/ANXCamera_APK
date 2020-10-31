.class Landroid/se/omapi/SEService$1;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/se/omapi/SEService;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/se/omapi/SEService;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;)V
    .registers 2

    iput-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {p2}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v1

    # setter for: Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;
    invoke-static {v0, v1}, Landroid/se/omapi/SEService;->access$102(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)Landroid/se/omapi/ISecureElementService;

    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    # getter for: Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;
    invoke-static {v0}, Landroid/se/omapi/SEService;->access$200(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    # getter for: Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;
    invoke-static {v0}, Landroid/se/omapi/SEService;->access$200(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/se/omapi/SEService$SEListener;->onConnected()V

    :cond_1b
    const-string v0, "OMAPI.SEService"

    const-string v1, "Service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    const/4 v1, 0x0

    # setter for: Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;
    invoke-static {v0, v1}, Landroid/se/omapi/SEService;->access$102(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)Landroid/se/omapi/ISecureElementService;

    const-string v0, "OMAPI.SEService"

    const-string v1, "Service onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
