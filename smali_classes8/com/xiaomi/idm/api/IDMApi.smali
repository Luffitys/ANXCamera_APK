.class public Lcom/xiaomi/idm/api/IDMApi;
.super Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;
.source ""


# static fields
.field private static NEXT_INSTANCEID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IDMApi"


# instance fields
.field protected mInstanceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;-><init>(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;I)V

    sget p1, Lcom/xiaomi/idm/api/IDMApi;->NEXT_INSTANCEID:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/xiaomi/idm/api/IDMApi;->NEXT_INSTANCEID:I

    iput p1, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    return-void
.end method


# virtual methods
.method public createConnection(Lcom/xiaomi/idm/api/conn/ConnParam;Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;)I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/xiaomi/idm/api/IDMApi$InternalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/xiaomi/idm/api/IDMApi$InternalCallback;-><init>(Lcom/xiaomi/idm/api/IDMApi;Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;Lcom/xiaomi/idm/api/IDMApi$1;)V

    iget-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->toProto()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->toByteArray()[B

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->createConnection(I[BLcom/xiaomi/mi_connect_service/IConnectionCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IDMApi"

    invoke-static {p2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public createWifiConfigConnectionByQCode(Ljava/lang/String;Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;)I
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/idm/api/conn/WifiConfig;->buildFromQRCode(Ljava/lang/String;)Lcom/xiaomi/idm/api/conn/WifiConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/ConnParam;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/ConnParam;->setConnType(I)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->setConfig(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/idm/api/IDMApi;->createConnection(Lcom/xiaomi/idm/api/conn/ConnParam;Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;)I

    move-result p0

    return p0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->destroy(I)V

    return-void
.end method

.method public destroyConnection(Lcom/xiaomi/idm/api/conn/ConnParam;)I
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->toProto()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->destroyConnection(I[B)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDMApi"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
