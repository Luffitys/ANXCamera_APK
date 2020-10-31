.class public Lcom/miui/internal/hybrid/JsonConfigParser;
.super Ljava/lang/Object;
.source "JsonConfigParser.java"

# interfaces
.implements Lcom/miui/internal/hybrid/ConfigParser;


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_FEATURES:Ljava/lang/String; = "features"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ORIGIN:Ljava/lang/String; = "origin"

.field private static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_SUBDOMAINS:Ljava/lang/String; = "subdomains"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field private mJson:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/JsonConfigParser;->mJson:Lorg/json/JSONObject;

    return-void
.end method

.method private buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/hybrid/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    return-object p1
.end method

.method public static createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .registers 2

    new-instance v0, Lcom/miui/internal/hybrid/JsonConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/JsonConfigParser;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_d

    move-object v0, v1

    nop

    invoke-static {v0}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    const/16 v3, 0xc9

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private parseFeatures(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4a

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4a

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v3}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    const-string v5, "params"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_44

    const/4 v6, 0x0

    :goto_2a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_44

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_44
    invoke-virtual {p1, v3}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4a
    return-void
.end method

.method private parsePermissions(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {v3}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    const-string v4, "origin"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    const-string v4, "subdomains"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    invoke-virtual {p1, v3}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_30
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/miui/internal/hybrid/JsonConfigParser;->mJson:Lorg/json/JSONObject;

    new-instance v2, Lcom/miui/internal/hybrid/Security;

    invoke-direct {v2}, Lcom/miui/internal/hybrid/Security;-><init>()V

    const-string v3, "signature"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/hybrid/Security;->setTimestamp(J)V

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setSecurity(Lcom/miui/internal/hybrid/Security;)V

    const-string v3, "vendor"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->parseFeatures(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->parsePermissions(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_39} :catch_3f

    nop

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v1

    return-object v1

    :catch_3f
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    const/16 v3, 0xc9

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2
.end method
