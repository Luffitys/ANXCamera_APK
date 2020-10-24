.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DefaultMiApp"

    const-string v0, "onBindingDied"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DefaultMiApp"

    const-string v0, "onNullBinding"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {p1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$300(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$400(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IMiConnect$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {p1, p2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$502(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Landroid/os/IBinder;)Landroid/os/IBinder;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$600(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object v0, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-interface {v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getServiceApiVersion()I

    move-result v0

    invoke-static {p2, v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$702(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;I)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serviceApiVersion :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$700(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {p2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$700(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->miAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->onServiceConnected()V

    iget-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object p2, p2, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->miAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {p2}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceBind()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$800(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    if-lez p2, :cond_2

    if-ge p1, p2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->execute()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->miAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "DefaultMiApp"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$900(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)V

    return-void
.end method
