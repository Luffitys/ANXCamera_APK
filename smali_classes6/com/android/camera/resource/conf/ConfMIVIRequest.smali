.class public Lcom/android/camera/resource/conf/ConfMIVIRequest;
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
.method protected processParse(Lcom/android/camera/data/cloud/DataCloudItemMIVI;)V
    .locals 2

    const-string p0, "camera_v4"

    const-string v0, "miviInfo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/data/cloud/DataCloudItemMIVI;->setData(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic processParse(Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 0

    check-cast p1, Lcom/android/camera/data/cloud/DataCloudItemMIVI;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/conf/ConfMIVIRequest;->processParse(Lcom/android/camera/data/cloud/DataCloudItemMIVI;)V

    return-void
.end method
