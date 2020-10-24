.class public Lcom/xiaomi/idm/account/ServiceTokenInfo;
.super Lcom/xiaomi/idm/account/TokenInfo;
.source ""


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "ServiceTokenInfo"

.field private static final TAG:Ljava/lang/String; = "ServiceTokenInfo"


# instance fields
.field cUserId:Ljava/lang/String;

.field domain:Ljava/lang/String;

.field sid:Ljava/lang/String;

.field ssecurity:Ljava/lang/String;

.field timeDiff:J

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/account/TokenInfo;-><init>()V

    return-void
.end method

.method public static buildFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/idm/account/ServiceTokenInfo;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;

    invoke-direct {v0}, Lcom/xiaomi/idm/account/ServiceTokenInfo;-><init>()V

    const-string v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    const-string v1, "userId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    const-string v1, "sid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    const-string v1, "cUserId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    const-string v1, "ssecurity"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    const-string v1, "timeDiff"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->timeDiff:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceTokenInfo"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;

    iget-object v1, p1, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 0

    const-string p0, "ServiceTokenInfo"

    return-object p0
.end method

.method public toJsonSub()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "token"

    iget-object v2, p0, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "userId"

    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cUserId"

    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ssecurity"

    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "domain"

    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "timeDiff"

    iget-wide v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->timeDiff:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceTokenInfo"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
