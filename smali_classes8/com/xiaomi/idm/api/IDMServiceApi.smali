.class public Lcom/xiaomi/idm/api/IDMServiceApi;
.super Lcom/xiaomi/idm/api/IDMApi;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IDMServiceApi"


# instance fields
.field mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

.field private mProcCallback:Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;

.field private mServices:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/api/IDMApi;-><init>(Landroid/content/Context;Lcom/xiaomi/idm/api/IDMProcessCallback;)V

    new-instance p1, Lcom/xiaomi/idm/api/IDMServiceApi$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/idm/api/IDMServiceApi$1;-><init>(Lcom/xiaomi/idm/api/IDMServiceApi;)V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServiceApi;->mProcCallback:Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;

    new-instance p1, Lcom/xiaomi/idm/api/IDMServiceApi$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/idm/api/IDMServiceApi$2;-><init>(Lcom/xiaomi/idm/api/IDMServiceApi;)V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServiceApi;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServiceApi;->mServices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/idm/api/IDMServiceApi;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServiceApi;->mServices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/idm/api/IDMServiceApi;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/idm/api/IDMServiceApi;)Lcom/xiaomi/mi_connect_service/IMiConnect;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/idm/api/IDMServiceApi;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/xiaomi/idm/api/IDMServiceApi;)Lcom/xiaomi/mi_connect_service/IMiConnect;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    return-object p0
.end method


# virtual methods
.method protected doDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->doDestroy()V

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-interface {v0, p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->unregisterProc(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDMServiceApi"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onServiceConnected()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->onServiceConnected()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServiceApi;->mProcCallback:Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;

    invoke-interface {v0, v1, v2, p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerProc(I[BLcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDMServiceApi"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public registerService(Lcom/xiaomi/idm/api/IDMService;)I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartAdvertisingIDM;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$StartAdvertisingIDM$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartAdvertisingIDM$Builder;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartAdvertisingIDM$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartAdvertisingIDM$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartAdvertisingIDM;

    iget-object v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v2, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartAdvertisingIDM;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startAdvertisingIDM(I[B)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServiceApi;->mServices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDMServiceApi"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
