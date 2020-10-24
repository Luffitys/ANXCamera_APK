.class public Lcom/android/camera/resource/conf/ConfLoadRequest;
.super Lcom/android/camera/resource/SimpleNetworkJsonRequest;
.source ""


# static fields
.field private static final PARENT_ID:Ljava/lang/String; = "13641940998946848"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "https://i.mi.com/gallery/public/resource/info"

    invoke-direct {p0, v0}, Lcom/android/camera/resource/SimpleNetworkJsonRequest;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    const-string v1, "13641940998946848"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected parseJson(Lorg/json/JSONObject;Lcom/android/camera/data/cloud/DataCloudItemFeature;)Lcom/android/camera/data/cloud/DataCloudItemFeature;
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "galleryResourceInfoList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "extraInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cache_info"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->writeToCache(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->parseJson(Lorg/json/JSONObject;)V

    return-object p2
.end method

.method protected bridge synthetic parseJson(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/android/camera/data/cloud/DataCloudItemFeature;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/conf/ConfLoadRequest;->parseJson(Lorg/json/JSONObject;Lcom/android/camera/data/cloud/DataCloudItemFeature;)Lcom/android/camera/data/cloud/DataCloudItemFeature;

    move-result-object p0

    return-object p0
.end method
