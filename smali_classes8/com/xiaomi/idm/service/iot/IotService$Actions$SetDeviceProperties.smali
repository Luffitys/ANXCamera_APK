.class public Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "GetDeviceProperties"


# instance fields
.field action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/service/iot/IotService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService$Action;->getAid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->setPropertyBody(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->setIsSort(Z)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast v1, Lcom/xiaomi/idm/service/iot/IotService;

    iget-object v2, p0, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {v2}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getServiceToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {v3}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {v4}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getPropertyBody()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getIsSort()Z

    move-result p0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/xiaomi/idm/service/iot/IotService;->setDeviceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetDeviceProperties"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GetDeviceProperties"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/xiaomi/idm/api/RmiException;

    const/4 p1, -0x8

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/RmiException;-><init>(I)V

    throw p0
.end method

.method public bridge synthetic parseResponse([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    move-result-object p0

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;->action:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
