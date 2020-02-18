.class public Lcom/android/camera/network/live/TTLiveStickerResourceRequest;
.super Lcom/android/camera/network/live/BaseJsonRequest;
.source "TTLiveStickerResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/network/live/BaseJsonRequest<",
        "Ljava/util/List<",
        "Lcom/android/camera/sticker/LiveStickerInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final APP_VERSION:Ljava/lang/String; = "3.0.1"

.field private static final BASE_URL:Ljava/lang/String; = "https://effect.snssdk.com/effect/api/v3/effects"

.field private static final DEVICE_ID:Ljava/lang/String; = "123456"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "Xiaomi"

.field private static final MAX_CACHE_TIME:J = 0x5265c00L

.field private static final PLATFORM:Ljava/lang/String; = "android"

.field private static final SDK_VERSION:Ljava/lang/String; = "4.4.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "https://effect.snssdk.com/effect/api/v3/effects"

    invoke-direct {p0, v0}, Lcom/android/camera/network/live/BaseJsonRequest;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/network/live/Util;->getGlobalAccessKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/network/live/Util;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    const-string v2, "app_version"

    const-string v3, "3.0.1"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/Util;->sAAID:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "access_key"

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_version"

    const-string v2, "4.4.0"

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_platform"

    const-string v0, "android"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "device_type"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "panel"

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "region"

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/network/live/TTLiveStickerResourceRequest;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/live/BaseRequestException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/network/live/TTLiveStickerResourceRequest;->loadFromCache()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private loadFromCache()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/sticker/LiveStickerInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/live/BaseRequestException;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTTLiveStickerJsonCache()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/network/live/TTLiveStickerResourceRequest;->processJson(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/android/camera/network/live/BaseRequestException;

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public execute(Lcom/android/camera/network/net/base/ResponseListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/network/live/TTLiveStickerResourceRequest;->execute(ZLcom/android/camera/network/net/base/ResponseListener;)V

    return-void
.end method

.method public execute(ZLcom/android/camera/network/net/base/ResponseListener;)V
    .locals 7

    new-instance v0, Lcom/android/camera/network/live/TTLiveStickerResourceRequest$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/network/live/TTLiveStickerResourceRequest$1;-><init>(Lcom/android/camera/network/live/TTLiveStickerResourceRequest;ZLcom/android/camera/network/net/base/ResponseListener;)V

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->setLiveStickerLastCacheTime(J)V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getLiveStickerLastCacheTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v1

    const-string v1, "BaseRequest"

    if-lez p1, :cond_2

    sub-long/2addr v5, v3

    const-wide/32 v2, 0x5265c00

    cmp-long p1, v5, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p1, "TT sticker load from cache"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/network/live/TTLiveStickerResourceRequest;->loadFromCache()Ljava/util/List;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-interface {p2, p1}, Lcom/android/camera/network/net/base/ResponseListener;->onResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/camera/network/live/BaseRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/android/camera/network/live/BaseRequestException;->getErrorCode()Lcom/android/camera/network/net/base/ErrorCode;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, p0}, Lcom/android/camera/network/net/base/ResponseListener;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "TT sticker directly request"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v0}, Lcom/android/camera/network/live/BaseRequest;->execute(Lcom/android/camera/network/net/base/ResponseListener;)V

    :goto_1
    return-void
.end method

.method protected hasUpdate(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTTLiveStickerJsonCache()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setTTLiveStickerNeedRedDot(Z)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setLiveModuleClicked(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setLiveStickerRedDotTime(J)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic processJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/live/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/network/live/TTLiveStickerResourceRequest;->processJson(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected processJson(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/sticker/LiveStickerInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/live/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/network/live/TTLiveStickerResourceRequest;->hasUpdate(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "effects"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/android/camera/sticker/LiveStickerInfo;

    invoke-direct {v4}, Lcom/android/camera/sticker/LiveStickerInfo;-><init>()V

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/network/resource/LiveResource;->id:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/sticker/LiveStickerInfo;->name:Ljava/lang/String;

    const-string v5, "icon_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "url_list"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/sticker/LiveStickerInfo;->icon:Ljava/lang/String;

    const-string v5, "file_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/camera/sticker/LiveStickerInfo;->url:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "uri"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    const-string v5, "hint"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/sticker/LiveStickerInfo;->hint:Ljava/lang/String;

    const-string v5, "hint_icon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/camera/sticker/LiveStickerInfo;->hintIcon:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setTTLiveStickerJsonCache(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setLiveStickerLastCacheTime(J)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/android/camera/network/live/BaseRequestException;

    sget-object p1, Lcom/android/camera/network/net/base/ErrorCode;->BODY_EMPTY:Lcom/android/camera/network/net/base/ErrorCode;

    const-string v0, "response empty data"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "message"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/camera/network/live/BaseRequestException;

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->SERVER_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-direct {p1, v0, p0}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Lcom/android/camera/network/live/BaseRequestException;

    sget-object p1, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    const-string v0, "response has no status_code"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;)V

    throw p0
.end method
