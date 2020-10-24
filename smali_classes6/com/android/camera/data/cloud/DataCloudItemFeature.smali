.class public Lcom/android/camera/data/cloud/DataCloudItemFeature;
.super Lcom/android/camera/data/cloud/DataCloudItemBase;
.source ""

# interfaces
.implements Lcom/android/camera/resource/BaseResourceCacheable;


# static fields
.field public static final CACHE_INFO:Ljava/lang/String; = "cache_info"

.field private static final SUPPORT_TM_MUSIC:Ljava/lang/String; = "tm"

.field private static final VERSION:Ljava/lang/String; = "v"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/data/cloud/DataCloudItemBase;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/cloud/DataCloudItemBase;->setReady(Z)V

    return-void
.end method


# virtual methods
.method public getCacheExpireTime()J
    .locals 2

    const-wide/32 v0, 0x5265c0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "v"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/cloud/DataCloudItemBase;->getCloudString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudItemBase;->getValues()Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/cloud/DataCloudItemBase;->setReady(Z)V

    return-void
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public supportTMMusic()Z
    .locals 2

    const-string v0, "tm"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/cloud/DataCloudItemBase;->getCloudBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
