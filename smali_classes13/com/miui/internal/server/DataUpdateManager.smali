.class public Lcom/miui/internal/server/DataUpdateManager;
.super Ljava/lang/Object;
.source "DataUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;,
        Lcom/miui/internal/server/DataUpdateManager$Holder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "data-update"

.field private static final BASE_URL:Ljava/lang/String;

.field private static final CHECK_UPDATE_INTERVAL:J = 0x240c8400L

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE:Ljava/lang/String; = "check_update_only_wifi_available"

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE_DEFAULT:I = 0x1

.field public static final DATA_UPDATE_RECEIVE:Ljava/lang/String; = "com.xiaomi.dataUpdate.RECEIVE"

.field public static final DATA_UPDATE_REGISTRATION:Ljava/lang/String; = "com.xiaomi.dataUpdate.REGISTRATION"

.field private static final DBG:Z = true

.field public static final EXTRA_SERVICE_NAME:Ljava/lang/String; = "service_name"

.field public static final EXTRA_WATER_MARK:Ljava/lang/String; = "water_mark"

.field private static final FORMAL_BASE_URL:Ljava/lang/String; = "aHR0cHM6Ly9hcGkuY29tbS5taXVpLmNvbQ=="

.field private static final HTTP_REQUEST_TIMEOUT_MS:I = 0x7530

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field public static final RECEIVER_META_DATA:Ljava/lang/String; = "com.xiaomi.dataUpdate"

.field private static final SECRET:Ljava/lang/String; = "f47c473853236172bf1a709714bda7a9"

.field private static final STAGING_BASE_URL:Ljava/lang/String; = "aHR0cDovL3RyaWFsLmFwaS5jb21tLm1pdWkuY29t"

.field private static final TAG:Ljava/lang/String; = "DataUpdateManager"

.field public static final URL:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUpdateServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_7

    const-string v0, "aHR0cDovL3RyaWFsLmFwaS5jb21tLm1pdWkuY29t"

    goto :goto_9

    :cond_7
    const-string v0, "aHR0cHM6Ly9hcGkuY29tbS5taXVpLmNvbQ=="

    :goto_9
    sput-object v0, Lcom/miui/internal/server/DataUpdateManager;->BASE_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cspmisc/service/version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/server/DataUpdateManager;->URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/internal/server/DataUpdateManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/server/DataUpdateManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/miui/internal/server/DataUpdateManager;->BASE_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/util/DataUpdateUtils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContent()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/miui/internal/server/DataUpdateManager;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_26
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "imei"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3e

    :cond_4e
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/miui/internal/server/DataUpdateManager;
    .registers 1

    sget-object v0, Lcom/miui/internal/server/DataUpdateManager$Holder;->INSTANCE:Lcom/miui/internal/server/DataUpdateManager;

    return-object v0
.end method

.method private getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    const-string v0, ""

    :try_start_7
    const-string v1, "com.android.id.IdentifierManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOAID"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2f

    move-object v4, v3

    check-cast v4, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_30

    move-object v0, v4

    :cond_2f
    goto :goto_38

    :catch_30
    move-exception v1

    const-string v2, "DataUpdateManager"

    const-string v3, "invoke IdentifierManager for OAID error. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-object v0
.end method

.method private getUserAgent()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mUserAgent:Ljava/lang/String;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_26

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/server/DataUpdateManager;->mUserAgent:Ljava/lang/String;

    :cond_2c
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private httpPost()Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "result"

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataUpdateManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "content"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/miui/internal/net/KeyValuePair;

    invoke-direct {v7, v6, v2}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "f47c473853236172bf1a709714bda7a9"

    invoke-static {v5, v6, v7}, Lcom/miui/internal/util/DataUpdateUtils;->genUrlSign(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/miui/internal/net/KeyValuePair;

    iget-object v8, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "appkey"

    invoke-direct {v7, v9, v8}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/miui/internal/net/KeyValuePair;

    const-string v8, "sign"

    invoke-direct {v7, v8, v6}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_65
    new-instance v9, Lcom/miui/internal/net/URLConnectionPostBuilder;

    sget-object v10, Lcom/miui/internal/server/DataUpdateManager;->URL:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/miui/internal/net/URLConnectionPostBuilder;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x7530

    invoke-virtual {v9, v10}, Lcom/miui/internal/net/URLConnectionPostBuilder;->setTimeout(I)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/miui/internal/net/URLConnectionBuilder;->setHeadParams(Ljava/util/Map;)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/miui/internal/net/URLConnectionBuilder;->setDoInputOutput(Z)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v10

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Lcom/miui/internal/net/URLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/internal/net/URLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v10

    move-object v7, v10

    invoke-virtual {v9, v4}, Lcom/miui/internal/net/URLConnectionPostBuilder;->post(Ljava/util/List;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_f9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    move-object v8, v11

    invoke-static {v8}, Lmiui/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f9

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "ok"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_ae
    .catchall {:try_start_65 .. :try_end_ae} :catchall_10e

    if-eqz v13, :cond_c5

    nop

    if-eqz v8, :cond_bf

    :try_start_b3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bf

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    :goto_bf
    if-eqz v7, :cond_c4

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c4
    return-object v11

    :cond_c5
    :try_start_c5
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "error"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to send to server, "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "description"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "code"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_c5 .. :try_end_f9} :catchall_10e

    :cond_f9
    if-eqz v8, :cond_107

    :try_start_fb
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_ff

    goto :goto_107

    :catch_ff
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    :goto_107
    if-eqz v7, :cond_10c

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10c
    const/4 v0, 0x0

    return-object v0

    :catchall_10e
    move-exception v0

    if-eqz v8, :cond_11d

    :try_start_111
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115

    goto :goto_11d

    :catch_115
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    :goto_11d
    if-eqz v7, :cond_122

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_122
    throw v0
.end method

.method private isCheckUpdateOnlyWifiAvailable()Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "check_update_only_wifi_available"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method private isNetworkAvailable()Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->isCheckUpdateOnlyWifiAvailable()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-nez v3, :cond_26

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    :goto_26
    return v1
.end method

.method private isUpdateExpired()Z
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_update_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    cmp-long v5, v5, v7

    if-lez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    return v5
.end method

.method private declared-synchronized queryDataUpdateService()V
    .registers 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    if-nez v0, :cond_123

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    iget-object v0, v1, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.dataUpdate.REGISTRATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_125

    move-object v5, v0

    :try_start_34
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const-string v0, "com.xiaomi.dataUpdate"

    invoke-virtual {v6, v2, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v7, v0

    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v8, v0

    :goto_43
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v9, v0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_4f

    const/4 v0, 0x2

    if-eq v9, v0, :cond_4f

    goto :goto_43

    :cond_4f
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const-string v0, "data-update"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5a} :catch_d4
    .catchall {:try_start_34 .. :try_end_5a} :catchall_125

    if-nez v0, :cond_69

    :try_start_5c
    const-string v0, "DataUpdateManager"

    const-string v11, "Meta-data does not start with data-update tag"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_64
    .catchall {:try_start_5c .. :try_end_63} :catchall_125

    goto :goto_69

    :catch_64
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_d7

    :cond_69
    :goto_69
    :try_start_69
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    sget-object v11, Lmiui/R$styleable;->DataUpdate:[I

    invoke-virtual {v0, v8, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_d4
    .catchall {:try_start_69 .. :try_end_75} :catchall_125

    move-object v11, v0

    :try_start_76
    sget v0, Lmiui/R$styleable;->DataUpdate_serviceName:I

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    array-length v14, v12

    :goto_84
    if-ge v13, v14, :cond_a0

    iget-object v15, v1, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    aget-object v16, v12, v13

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_90} :catch_ac
    .catchall {:try_start_76 .. :try_end_90} :catchall_a8

    move-object/from16 v16, v2

    :try_start_92
    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_92 .. :try_end_97} :catch_9e
    .catchall {:try_start_92 .. :try_end_97} :catchall_cc

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto :goto_84

    :catch_9e
    move-exception v0

    goto :goto_af

    :cond_a0
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    :try_start_a4
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_d2
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_125

    :goto_a7
    goto :goto_cb

    :catchall_a8
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_cd

    :catch_ac
    move-exception v0

    move-object/from16 v16, v2

    :goto_af
    :try_start_af
    const-string v2, "DataUpdateManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " micloud-push attrs error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_af .. :try_end_c7} :catchall_cc

    :try_start_c7
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_a7

    :goto_cb
    goto :goto_da

    :catchall_cc
    move-exception v0

    :goto_cd
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    nop

    throw v0
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d2} :catch_d2
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_125

    :catch_d2
    move-exception v0

    goto :goto_d7

    :catch_d4
    move-exception v0

    move-object/from16 v16, v2

    :goto_d7
    :try_start_d7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_da
    move-object/from16 v2, v16

    goto/16 :goto_27

    :cond_de
    move-object/from16 v16, v2

    iget-object v0, v1, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "DataUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{serviceName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_d7 .. :try_end_121} :catchall_125

    nop

    goto :goto_ea

    :cond_123
    monitor-exit p0

    return-void

    :catchall_125
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryUpdate()V
    .registers 12

    const-string v0, "last_update_time"

    const-string v1, "DataUpdateManager"

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->queryDataUpdateService()V

    iget-object v2, p0, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x0

    :try_start_11
    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->httpPost()Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_17

    move-object v2, v3

    goto :goto_1b

    :catch_17
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    if-eqz v2, :cond_b5

    :try_start_1d
    new-instance v3, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;

    invoke-direct {v3, p0, v2}, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;-><init>(Lcom/miui/internal/server/DataUpdateManager;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->mCode:I

    if-nez v4, :cond_b0

    iget-object v4, p0, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->mData:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_77

    iget-object v6, v3, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->mData:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/miui/internal/server/DataUpdateManager;->mDataUpdateServices:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.xiaomi.dataUpdate.RECEIVE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "water_mark"

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v10, "service_name"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v10, "tryUpdate success -> Send DATA_UPDATE_RECEIVE"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    goto :goto_37

    :cond_78
    iget-object v4, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_a1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The distance last update time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v1, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_b0} :catch_b1

    :cond_b0
    goto :goto_b5

    :catch_b1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b5
    :goto_b5
    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/util/DeviceHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->isUpdateExpired()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->tryUpdate()V

    :cond_17
    return-void
.end method
