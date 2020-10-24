.class public abstract Lcom/xiaomi/idm/service/iot/IotService;
.super Lcom/xiaomi/idm/api/IDMService$LocalService;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IotService"


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/xiaomi/idm/service/iot/IotService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iot"

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/api/IDMService$LocalService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/IDMService$LocalService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iot"

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/idm/api/IDMService$LocalService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "iot"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/idm/api/IDMService$LocalService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract exeScenes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract getDeviceInformations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract getDeviceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract getDevices(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract getHomeFastCommands(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract getHomes(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract getScenes(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 5

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getAid()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequest()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$ExeScenes;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$ExeScenes;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_1
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$StopToken;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$StopToken;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_2
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetToken;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetToken;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_3
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$SetDeviceProperties;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_4
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceProperties;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceProperties;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_5
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomeFastCommands;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomeFastCommands;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_6
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceInformations;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDeviceInformations;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_7
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetScenes;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetScenes;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_8
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomes;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetHomes;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V

    goto :goto_1

    :pswitch_9
    new-instance v3, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDevices;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/IotService$Actions$GetDevices;-><init>(Lcom/xiaomi/idm/service/iot/IotService;[B)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IotService"

    invoke-static {v4, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_1

    const/4 v1, -0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/xiaomi/idm/api/ResponseCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " aid: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1, v2}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/idm/api/IDMService$Action;->invoke()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract setDeviceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract setToken(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method

.method public abstract stop(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;
.end method
