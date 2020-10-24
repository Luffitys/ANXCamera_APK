.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParamOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$000()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCUserId()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$800(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V

    return-object p0
.end method

.method public clearDomain()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$2000(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1100(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V

    return-object p0
.end method

.method public clearSid()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$500(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V

    return-object p0
.end method

.method public clearSsecurity()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1400(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V

    return-object p0
.end method

.method public clearTimeDiff()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1700(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V

    return-object p0
.end method

.method public clearUserId()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$200(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V

    return-object p0
.end method

.method public getCUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getCUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCUserIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getCUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDomainBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSsecurity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSsecurity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSsecurityBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSsecurityBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTimeDiff()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getTimeDiff()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeDiffBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getTimeDiffBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setCUserId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$700(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCUserIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$900(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1900(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDomainBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$2100(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1000(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1200(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$400(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$600(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSsecurity(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1300(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSsecurityBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1500(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimeDiff(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1600(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeDiffBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$1800(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$100(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUserIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->access$300(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
