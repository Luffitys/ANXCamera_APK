.class public Lcom/android/camera/fragment/film/FilmList;
.super Lcom/android/camera/resource/BaseResourceList;
.source ""


# static fields
.field public static final TYPE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceList;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 0

    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public getLocalVersion()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getResourceType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public parseInitialData(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/film/FilmItem;
    .locals 0

    new-instance p0, Lcom/android/camera/fragment/film/FilmItem;

    invoke-direct {p0}, Lcom/android/camera/fragment/film/FilmItem;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/film/FilmItem;->parseSummaryData(Lorg/json/JSONObject;I)V

    return-object p0
.end method

.method public bridge synthetic parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/film/FilmList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/film/FilmItem;

    move-result-object p0

    return-object p0
.end method

.method public setLocalVersion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
