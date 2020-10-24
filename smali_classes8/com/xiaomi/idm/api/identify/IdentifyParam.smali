.class public Lcom/xiaomi/idm/api/identify/IdentifyParam;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IdentifyParam"


# instance fields
.field cUserId:Ljava/lang/String;

.field domain:Ljava/lang/String;

.field serviceToken:Ljava/lang/String;

.field sid:Ljava/lang/String;

.field ssecurity:Ljava/lang/String;

.field timeDiff:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)Lcom/xiaomi/idm/api/identify/IdentifyParam;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/identify/IdentifyParam;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getTimeDiff()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDomain()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSsecurity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getCUserId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    return-object v0
.end method

.method public static buildFromProto([B)Lcom/xiaomi/idm/api/identify/IdentifyParam;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdentifyParam"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/identify/IdentifyParam;->buildFromProto(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)Lcom/xiaomi/idm/api/identify/IdentifyParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public getSsecurity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeDiff()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public getcUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    return-void
.end method

.method public setServiceToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSsecurity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    return-void
.end method

.method public setTimeDiff(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    return-void
.end method

.method public setcUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    return-void
.end method

.method public toProto()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 2

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->setServiceToken(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->setUserId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->setSid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->setCUserId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->setSsecurity(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->setDomain(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    :cond_5
    iget-object p0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->setTimeDiff(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    :cond_6
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method
