.class Landroid/se/omapi/SEService$SEListener;
.super Landroid/se/omapi/ISecureElementListener$Stub;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/SEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SEListener"
.end annotation


# instance fields
.field public mExecutor:Ljava/util/concurrent/Executor;

.field public mListener:Landroid/se/omapi/SEService$OnConnectedListener;

.field final synthetic this$0:Landroid/se/omapi/SEService;


# direct methods
.method private constructor <init>(Landroid/se/omapi/SEService;)V
    .registers 2

    iput-object p1, p0, Landroid/se/omapi/SEService$SEListener;->this$0:Landroid/se/omapi/SEService;

    invoke-direct {p0}, Landroid/se/omapi/ISecureElementListener$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    iput-object p1, p0, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/SEService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/se/omapi/SEService$SEListener;-><init>(Landroid/se/omapi/SEService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onConnected()V
    .registers 3

    iget-object v0, p0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    new-instance v1, Landroid/se/omapi/SEService$SEListener$1;

    invoke-direct {v1, p0}, Landroid/se/omapi/SEService$SEListener$1;-><init>(Landroid/se/omapi/SEService$SEListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method
