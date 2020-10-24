.class Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$Singleton;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final INSTANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$Singleton;->INSTANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
