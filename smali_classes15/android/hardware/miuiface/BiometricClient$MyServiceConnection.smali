.class Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;
.super Ljava/lang/Object;
.source "BiometricClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/BiometricClient;


# direct methods
.method private constructor <init>(Landroid/hardware/miuiface/BiometricClient;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/BiometricClient;Landroid/hardware/miuiface/BiometricClient$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;-><init>(Landroid/hardware/miuiface/BiometricClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onServiceConnected mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$100(Landroid/hardware/miuiface/BiometricClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # invokes: Landroid/hardware/miuiface/BiometricClient;->onServiceBind(Landroid/os/IBinder;)V
    invoke-static {v0, p2}, Landroid/hardware/miuiface/BiometricClient;->access$200(Landroid/hardware/miuiface/BiometricClient;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onServiceDisconnected mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # getter for: Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I
    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$100(Landroid/hardware/miuiface/BiometricClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    const/4 v1, 0x1

    # invokes: Landroid/hardware/miuiface/BiometricClient;->onServiceUnbind(Z)V
    invoke-static {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->access$300(Landroid/hardware/miuiface/BiometricClient;Z)V

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/miuiface/BiometricClient;

    # invokes: Landroid/hardware/miuiface/BiometricClient;->handle_releaseService()V
    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$400(Landroid/hardware/miuiface/BiometricClient;)V

    return-void
.end method
