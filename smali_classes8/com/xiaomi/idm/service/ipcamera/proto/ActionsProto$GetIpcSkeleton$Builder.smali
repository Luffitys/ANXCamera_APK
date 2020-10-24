.class public final Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeletonOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$000()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$200(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$700(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$400(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$100(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$600(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$800(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$300(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->access$500(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
