.class public Lcom/xiaomi/idm/api/conn/ConnParam;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONNTYPE_WIFI_P2P_GC:I = 0x1

.field public static final CONNTYPE_WIFI_P2P_GO:I = 0x0

.field public static final CONNTYPE_WIFI_SOFTAP:I = 0x2

.field public static final CONNTYPE_WIFI_STATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ConnParam"


# instance fields
.field private config:Ljava/lang/Object;

.field private connType:I

.field private errCode:I

.field private errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/ConnParam;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getConnTypeValue()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ConnParam: Unrecognized connType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getConnTypeValue()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/idm/api/conn/WifiConfig;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/WifiConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getErrCode()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static buildFromProto([B)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnParam"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getConfig()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Ljava/lang/Object;

    return-object p0
.end method

.method public getConnType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    return p0
.end method

.method public getErrCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    return p0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setConfig(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Ljava/lang/Object;

    return-void
.end method

.method public setConnType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    return-void
.end method

.method public toProto()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 3

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ConnParam: Unrecognized connType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->setConnType(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/idm/api/conn/WifiConfig;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/conn/WifiConfig;->toProto()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->setConfig(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    :cond_4
    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->setErrCode(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->setErrMsg(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    :cond_5
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method
