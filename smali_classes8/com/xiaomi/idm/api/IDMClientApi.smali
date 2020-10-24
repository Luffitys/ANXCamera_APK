.class public Lcom/xiaomi/idm/api/IDMClientApi;
.super Lcom/xiaomi/idm/api/IDMApi;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IDMClientApi"


# instance fields
.field private mCalls:Ljava/util/concurrent/ConcurrentHashMap;

.field private mEvents:Ljava/util/concurrent/ConcurrentHashMap;

.field private mIDMCallback:Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;

.field private mInnerCallback:Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

.field private mNextRequestId:I

.field private mRemoteClientId:Ljava/lang/String;

.field private mServiceFactory:Lcom/xiaomi/idm/api/IDMServiceFactoryBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/idm/api/IDMClientApi;-><init>(Landroid/content/Context;Lcom/xiaomi/idm/api/IDMServiceFactoryBase;Lcom/xiaomi/idm/api/IDMProcessCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/idm/api/IDMServiceFactoryBase;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/idm/api/IDMApi;-><init>(Landroid/content/Context;Lcom/xiaomi/idm/api/IDMProcessCallback;)V

    new-instance p1, Lcom/xiaomi/idm/api/IDMClientApi$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/idm/api/IDMClientApi$1;-><init>(Lcom/xiaomi/idm/api/IDMClientApi;)V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mInnerCallback:Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

    iput-object p2, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mServiceFactory:Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mNextRequestId:I

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mIDMCallback:Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/idm/api/IDMServiceFactoryBase;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mServiceFactory:Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/idm/api/IDMClientApi;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/idm/api/IDMClientApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClientApi;->clearCallCache()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/idm/api/IDMClientApi;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->miAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->miAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method private clearCallCache()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/idm/api/IDMClientApi$Call;

    iget-object v3, v3, Lcom/xiaomi/idm/api/IDMClientApi$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-virtual {v3}, Lcom/xiaomi/idm/task/CallFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private doRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$Request;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Request$Builder;->setIdmRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/mi_connect_service/IPCLParam$Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Request$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/IPCLParam$Request;

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Request;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->request(I[B)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDMClientApi"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextRequestId()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/xiaomi/idm/api/IDMApi;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mNextRequestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mNextRequestId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public connectService(Lcom/xiaomi/idm/api/IDMService;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnectService;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnectService$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnectService$Builder;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnectService$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnectService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnectService;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnectService;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->connectService(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDMClientApi"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected doDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->doDestroy()V

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    const-string v1, "IDMClientApi"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-interface {v0, p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->unregisterIDMClient(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "destroy called, but service unavailable"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public generateEventKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serviceId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "eid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerIDM(Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mIDMCallback:Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->toByteArray()[B

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mInnerCallback:Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

    invoke-interface {p2, v0, p1, v1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerIDMClient(I[BLcom/xiaomi/mi_connect_service/IIDMClientCallback;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mRemoteClientId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IDMClientApi"

    invoke-static {p2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->getAid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IDMClientApi"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->getAid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setAid(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClientApi;->getNextRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setRequestId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mRemoteClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->toBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setRequest(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/idm/api/IDMClientApi$Call;

    invoke-direct {v3, p0, p1, v0}, Lcom/xiaomi/idm/api/IDMClientApi$Call;-><init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/IDMService$Action;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V

    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/xiaomi/idm/api/IDMClientApi;->doRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)[B

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "IDMClientApi"

    const-string v2, "Response bytes null when do request"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x3

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IDMClientApi"

    invoke-static {v4, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "IDMClientApi"

    const-string v2, "Response parse error when do request"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getCode()I

    move-result p1

    :goto_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when do request responseCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClientApi"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/xiaomi/idm/api/IDMClientApi$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-static {p1}, Lcom/xiaomi/idm/api/ResponseCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClientApi;->clearCallCache()V

    iget-object p0, v3, Lcom/xiaomi/idm/api/IDMClientApi$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEventCallback event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClientApi"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Event;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Event;->getEid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->generateEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEid(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEnable(Z)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$SetEventCallback;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$SetEventCallback$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$SetEventCallback$Builder;->setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/IPCLParam$SetEventCallback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$SetEventCallback$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/IPCLParam$SetEventCallback;

    iget-object v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v4, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$SetEventCallback;->toByteArray()[B

    move-result-object p1

    invoke-interface {v1, v4, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setEventCallback(I[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public startDiscoveryServices(Lcom/xiaomi/idm/api/IDMClientApi$ServiceFilter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscoveryIDM(I[B)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClientApi$ServiceFilter;->access$100(Lcom/xiaomi/idm/api/IDMClientApi$ServiceFilter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->addAllServiceTypes(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClientApi$ServiceFilter;->access$000(Lcom/xiaomi/idm/api/IDMClientApi$ServiceFilter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->addAllServiceUuids(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscoveryIDM(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDMClientApi"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
