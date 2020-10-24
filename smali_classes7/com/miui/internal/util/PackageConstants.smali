.class public Lcom/miui/internal/util/PackageConstants;
.super Lmiui/util/AppConstants;
.source ""


# static fields
.field public static final CURRENT_SDK_LEVEL:I

.field public static final LOG_TAG:Ljava/lang/String; = "miuisdk"

.field public static final ORIGINAL_PACKAGE_NAME:Ljava/lang/String; = "miui"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.core"

.field public static final RESOURCE_PATH:Ljava/lang/String;

.field private static final SDK_BASE_FOLDER_NAME:Ljava/lang/String; = "miuisdk"

.field public static final SDK_STATUS_INITIALIZED:I = 0x2

.field public static final SDK_STATUS_LOADED:I = 0x1

.field public static final SDK_STATUS_NOT_EXISTS:I = 0x0

.field public static final SDK_STATUS_STARTED:I = 0x3

.field public static volatile sApplication:Landroid/app/Application;

.field public static sInitializingApplication:Landroid/app/Application;

.field public static sSdkStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "com.miui.core"

    const-string v2, "miui"

    invoke-static {v0, v1, v2}, Lcom/miui/internal/util/PackageHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->retrieveSdkLevel()I

    move-result v0

    sput v0, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/AppConstants;-><init>()V

    return-void
.end method

.method public static getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "miuisdk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static retrieveSdkLevel()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "miui"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Module;->getLevel()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current sdk level is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuisdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot retrieve sdk level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
