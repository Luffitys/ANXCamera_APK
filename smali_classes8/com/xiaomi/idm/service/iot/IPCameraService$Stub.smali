.class public Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;
.super Lcom/xiaomi/idm/service/iot/IPCameraService;
.source ""


# instance fields
.field private mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/IPCameraService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    return-void
.end method


# virtual methods
.method public getIpcSkeletonInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/ipcamera/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->getIpcSkeletonInfoAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIpcSkeletonInfoAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IPCameraService"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeleton;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeleton;-><init>(Lcom/xiaomi/idm/service/iot/IPCameraService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public setSkeletonEventCallback(Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClientApi;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)V

    return-void
.end method
