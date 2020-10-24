.class Lcom/xiaomi/idm/api/MiConnectApiBase$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/MiConnectApiBase;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "MiConnectApi"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IMiConnect$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object p2

    iput-object p2, v0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget-object p2, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    invoke-static {p2}, Lcom/xiaomi/idm/api/MiConnectApiBase;->access$000(Lcom/xiaomi/idm/api/MiConnectApiBase;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    invoke-static {p0}, Lcom/xiaomi/idm/api/MiConnectApiBase;->access$100(Lcom/xiaomi/idm/api/MiConnectApiBase;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    invoke-static {p2, p1}, Lcom/xiaomi/idm/api/MiConnectApiBase;->access$002(Lcom/xiaomi/idm/api/MiConnectApiBase;Z)Z

    const/4 p1, -0x1

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    iget-object p2, p2, Lcom/xiaomi/idm/api/MiConnectApiBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-interface {p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getServiceApiVersion()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p2, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    iget-object v0, p2, Lcom/xiaomi/idm/api/MiConnectApiBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/idm/api/MiConnectApiBase;->onServiceConnected()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceBind()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MiConnectApi"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;->this$0:Lcom/xiaomi/idm/api/MiConnectApiBase;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceUnbind()V

    :cond_0
    return-void
.end method
