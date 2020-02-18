.class public Lcom/android/camera/resource/tmmusic/TMMusicList;
.super Lcom/android/camera/resource/BaseResourceList;
.source "TMMusicList.java"

# interfaces
.implements Lcom/android/camera/resource/BaseResourceCacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/BaseResourceList<",
        "Lcom/android/camera/resource/tmmusic/TMMusicItem;",
        ">;",
        "Lcom/android/camera/resource/BaseResourceCacheable;"
    }
.end annotation


# static fields
.field public static final CACHE_INITIAL:Ljava/lang/String; = "tt_initial"

.field public static final CACHE_LIST:Ljava/lang/String; = "tt_list"

.field public static final TYPE:I = 0x2


# instance fields
.field private categoryID:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceList;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheExpireTime()J
    .locals 2

    const-wide/32 v0, 0x5265c0

    return-wide v0
.end method

.method public getCategoryID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/tmmusic/TMMusicList;->categoryID:Ljava/lang/String;

    return-object p0
.end method

.method public getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 0

    const-string p0, "stationItems"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public getLocalVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResourceType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public parseInitialData(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "stations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "categoryID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicList;->categoryID:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/tmmusic/TMMusicList;->name:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/tmmusic/TMMusicList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/tmmusic/TMMusicItem;

    move-result-object p0

    return-object p0
.end method

.method public parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/tmmusic/TMMusicItem;
    .locals 0

    new-instance p0, Lcom/android/camera/resource/tmmusic/TMMusicItem;

    invoke-direct {p0}, Lcom/android/camera/resource/tmmusic/TMMusicItem;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/tmmusic/TMMusicItem;->parseSummaryData(Lorg/json/JSONObject;I)V

    return-object p0
.end method

.method public setLocalVersion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
