.class public abstract Lcom/xiaomi/idm/api/IDMService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/api/IIDMServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "IDMService"

.field public static final TYPE_IOT:Ljava/lang/String; = "iot"

.field public static final TYPE_IPC:Ljava/lang/String; = "ipcamera"


# instance fields
.field protected mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

.field protected mEventEnable:Z

.field private mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

.field version:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method protected constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setType(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method


# virtual methods
.method public enableEvent(IZ)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEventEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    return p0
.end method

.method protected notifyEvent(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMService;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEid(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEvent(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMService;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    invoke-interface {p2, p0, p1}, Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;->onEvent(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    :cond_0
    return-void
.end method

.method public onRequest([B)[B
    .locals 5

    const-string v0, "IDMService"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRequest request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/IDMService;->request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_3

    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "doRequest response is null"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public abstract request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
.end method

.method public setEventCallback(Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    return-void
.end method

.method public toByteArray()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
