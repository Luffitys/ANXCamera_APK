.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfigOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$3500()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChannel()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4500(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V

    return-object p0
.end method

.method public clearLocalIp()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$5300(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V

    return-object p0
.end method

.method public clearMacAddr()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4700(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V

    return-object p0
.end method

.method public clearPwd()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4000(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V

    return-object p0
.end method

.method public clearRemoteIp()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$5000(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V

    return-object p0
.end method

.method public clearSsid()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$3700(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V

    return-object p0
.end method

.method public clearUse5GBand()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4300(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V

    return-object p0
.end method

.method public getChannel()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getChannel()I

    move-result p0

    return p0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getLocalIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalIpBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getLocalIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getMacAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getMacAddrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getPwd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getPwdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getRemoteIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getRemoteIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getSsidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUse5GBand()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getUse5GBand()Z

    move-result p0

    return p0
.end method

.method public setChannel(I)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4400(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;I)V

    return-object p0
.end method

.method public setLocalIp(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$5200(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLocalIpBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$5400(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMacAddr(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4600(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMacAddrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4800(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPwd(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$3900(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPwdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4100(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRemoteIp(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4900(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRemoteIpBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$5100(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$3600(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSsidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$3800(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUse5GBand(Z)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->access$4200(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Z)V

    return-object p0
.end method
