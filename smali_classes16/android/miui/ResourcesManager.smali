.class public Landroid/miui/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field public static final FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

.field public static final FRAMEWORK_RES_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field public static final MIUI_FRAMEWORK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.system-1.apk"

.field public static final MIUI_FRAMEWORK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.system-2.apk"

.field public static final MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

.field public static final MIUI_SDK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.core-1.apk"

.field public static final MIUI_SDK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.core-2.apk"

.field public static final MIUI_SDK_RES_PATH:Ljava/lang/String;

.field private static final VERSION_ABOVE_5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_10

    const-string v0, "/system/app/miui/miui.apk"

    goto :goto_12

    :cond_10
    const-string v0, "/system/app/miui.apk"

    :goto_12
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_1b

    const-string v0, "/system/app/miuisystem/miuisystem.apk"

    goto :goto_1d

    :cond_1b
    const-string v0, "/system/app/miuisystem.apk"

    :goto_1d
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_26

    const-string v0, "/system/framework/framework-ext-res/framework-ext-res.apk"

    goto :goto_28

    :cond_26
    const-string v0, "/system/framework/framework-ext-res.apk"

    :goto_28
    sput-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSystemAssets(Landroid/content/res/AssetManager;)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :cond_b
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "getResourceName"

    invoke-static {p0, v4, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/app/com.miui.core-1.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_43

    :cond_2d
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/app/com.miui.core-2.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_43

    :cond_3e
    sget-object v2, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    :goto_43
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/app/com.miui.system-1.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_6a

    :cond_54
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/app/com.miui.system-2.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_6a

    :cond_65
    sget-object v2, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    :goto_6a
    sget-object v2, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    if-eqz v1, :cond_74

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_74
    return-void
.end method

.method public static belongToMiuiFrameworkThemePath(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiExtFrameworkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSystemSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 3

    instance-of v0, p0, Landroid/content/res/MiuiResources;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Landroid/content/res/MiuiResources;

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static isMiuiExtFrameworkPath(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiSdkPath(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "/data/app/com.miui.core-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "/data/app/com.miui.core-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static isMiuiSystemSdkPath(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "/data/app/com.miui.system-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "/data/app/com.miui.system-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method
