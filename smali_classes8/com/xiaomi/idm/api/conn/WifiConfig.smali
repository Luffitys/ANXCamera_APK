.class public Lcom/xiaomi/idm/api/conn/WifiConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConfig"


# instance fields
.field channel:I

.field localIp:Ljava/lang/String;

.field macAddr:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field remoteIp:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field use5GBand:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)Lcom/xiaomi/idm/api/conn/WifiConfig;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/WifiConfig;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/WifiConfig;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getPwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getUse5GBand()Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->use5GBand:Z

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getChannel()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getRemoteIp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->remoteIp:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getLocalIp()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->localIp:Ljava/lang/String;

    return-object v0
.end method

.method public static buildFromProto([B)Lcom/xiaomi/idm/api/conn/WifiConfig;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiConfig"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/conn/WifiConfig;->buildFromProto(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)Lcom/xiaomi/idm/api/conn/WifiConfig;

    move-result-object p0

    return-object p0
.end method

.method public static buildFromQRCode(Ljava/lang/String;)Lcom/xiaomi/idm/api/conn/WifiConfig;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/xiaomi/idm/api/conn/WifiConfig;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/WifiConfig;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    const/4 v1, 0x3

    :try_start_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiConfig"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    return p0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->localIp:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->remoteIp:Ljava/lang/String;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public isUse5GBand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->use5GBand:Z

    return p0
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    return-void
.end method

.method public setLocalIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->localIp:Ljava/lang/String;

    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setRemoteIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->remoteIp:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setUse5GBand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->use5GBand:Z

    return-void
.end method

.method public toProto()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 2

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->setSsid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->setPwd(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/conn/WifiConfig;->isUse5GBand()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->setUse5GBand(Z)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    iget v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->setChannel(I)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->setMacAddr(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->remoteIp:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->setRemoteIp(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    :cond_3
    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->localIp:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->setLocalIp(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public toQCodeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfig{use5GBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->use5GBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ssid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pwd=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", macAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localIp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->localIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", remoteIp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/WifiConfig;->remoteIp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
