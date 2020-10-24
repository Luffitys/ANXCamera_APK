.class public Lcom/android/camera/resource/conf/ConfSettingRequest;
.super Lcom/android/camera/resource/SimpleParseRequest;
.source ""


# static fields
.field private static final CLOUD_DATA_MODULE_NAME:Ljava/lang/String; = "camera_v4"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/SimpleParseRequest;-><init>()V

    return-void
.end method

.method private static final getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected processParse(Lcom/android/camera/data/cloud/DataCloudItemFeature;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_v4"

    const-string v2, "extraInfo"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/resource/conf/ConfSettingRequest;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "cache_info"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->writeToCache(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected bridge synthetic processParse(Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 0

    check-cast p1, Lcom/android/camera/data/cloud/DataCloudItemFeature;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/conf/ConfSettingRequest;->processParse(Lcom/android/camera/data/cloud/DataCloudItemFeature;)V

    return-void
.end method
