.class public Lcom/miui/internal/hybrid/JsonConfigParser;
.super Ljava/lang/Object;
.source ""

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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/JsonConfigParser;->mJson:Lorg/json/JSONObject;

    return-void
.end method

.method private buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 0

    return-object p1
.end method

.method public static createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/JsonConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/JsonConfigParser;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private parseFeatures(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .locals 8

    const-string p0, "features"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v2}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    const-string v4, "params"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    move v4, p2

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parsePermissions(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .locals 3

    const-string p0, "permissions"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {v1}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    const-string v2, "origin"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    const-string v2, "subdomains"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    invoke-virtual {p1, v1}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 5

    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    :try_start_0
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

    const-string v2, "vendor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->parseFeatures(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->parsePermissions(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v0, 0xc9

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
