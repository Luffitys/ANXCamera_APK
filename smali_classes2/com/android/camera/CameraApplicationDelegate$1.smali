.class Lcom/android/camera/CameraApplicationDelegate$1;
.super Ljava/lang/Object;
.source "CameraApplicationDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraApplicationDelegate;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraApplicationDelegate;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraApplicationDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraApplicationDelegate$1;->this$0:Lcom/android/camera/CameraApplicationDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->matchCustomWatermarkVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->removeCustomWatermark()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "pref_custom_watermark_version"

    invoke-interface {p0, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_0
    sget-object p0, Lcom/android/camera/Util;->WATERMARK_FILE_NAME:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->generateWatermark2File()Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->Oc()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->generateFrontWatermark2File()Landroid/graphics/Bitmap;

    :cond_2
    sget-object p0, Lcom/android/camera/Util;->WATERMARK_ULTRA_PIXEL_FILE_NAME:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->generateUltraPixelWatermark2File()Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method
