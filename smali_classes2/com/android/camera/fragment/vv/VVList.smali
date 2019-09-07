.class public Lcom/android/camera/fragment/vv/VVList;
.super Lcom/android/camera/fragment/vv/BaseResourceList;
.source "VVList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/vv/BaseResourceList<",
        "Lcom/android/camera/fragment/vv/VVItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:I = 0x1


# instance fields
.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/BaseResourceList;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 0

    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public getResourceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public parseExtraData(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVList;->version:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/vv/BaseResourceItem;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object p0

    return-object p0
.end method

.method public parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    new-instance p0, Lcom/android/camera/fragment/vv/VVItem;

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVItem;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVItem;->parseSummaryData(Lorg/json/JSONObject;I)V

    return-object p0
.end method
