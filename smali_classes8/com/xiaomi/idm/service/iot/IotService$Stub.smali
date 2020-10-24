.class public Lcom/xiaomi/idm/service/iot/IotService$Stub;
.super Lcom/xiaomi/idm/service/iot/IotService;
.source ""


# instance fields
.field private mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/IotService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    return-void
.end method


# virtual methods
.method public exeScenes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p2, p1, p3}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->exeScenesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public exeScenesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1

    iget-object p3, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v0, Lcom/xiaomi/idm/service/iot/IotService$Actions$StopToken;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$StopToken;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceInformations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->getDeviceInformationsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getDeviceInformationsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceInformations;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceInformations;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->getDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceProperties;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceProperties;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getDevices(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->getDevicesAsync(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getDevicesAsync(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDevices;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDevices;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getHomeFastCommandAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomeFastCommands;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomeFastCommands;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getHomeFastCommands(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->getHomeFastCommandAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getHomes(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->getHomesAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getHomesAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomes;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomes;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getScenes(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->getScenesAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getScenesAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetScenes;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetScenes;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->setDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v7, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public setToken(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->setTokenAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setTokenAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetToken;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetToken;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public stop(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotService$Stub;->stopAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/task/CallFuture;

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public stopAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotService$Actions$StopToken;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$StopToken;-><init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method
