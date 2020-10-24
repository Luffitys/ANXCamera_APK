.class public abstract Lmiui/core/SdkManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MIUI_CORE_SERVICE:Ljava/lang/String; = "com.miui.internal.server.CoreService"

.field public static final RETURN_CODE_LOW_SDK_VERSION:I = 0x1

.field public static final RETURN_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "miuisdk"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configDebugEnable()I
    .locals 8

    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getDebugEnable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/miui/internal/util/ClassProxy;->getProcName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/internal/util/ClassProxy;->setDebugModules([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/internal/util/ClassProxy;->setDebugModules([Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static initialize(Landroid/app/Application;Ljava/util/Map;)I
    .locals 3

    const-class p1, Lmiui/core/SdkManager;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lmiui/core/SdkManager;->configDebugEnable()I

    sput-object p0, Lcom/miui/internal/util/PackageConstants;->sInitializingApplication:Landroid/app/Application;

    sget p0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_0

    const-string p0, "miuisdk"

    const-string v1, "sdk already initialized"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/internal/initialization/OverrideHelper;->doInitialize()V

    invoke-static {}, Lcom/miui/internal/util/PackageHelper;->isMiuiSystem()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleLoader;->loadResources([Ljava/lang/String;)V

    :cond_1
    sget p0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge p0, v1, :cond_2

    sput v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    :cond_2
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static isCompatible(Landroid/content/Context;Lmiui/core/Manifest;)Z
    .locals 1

    new-instance v0, Lmiui/core/CompatibleManager;

    invoke-direct {v0, p0, p1}, Lmiui/core/CompatibleManager;-><init>(Landroid/content/Context;Lmiui/core/Manifest;)V

    invoke-virtual {v0}, Lmiui/core/CompatibleManager;->isCompatible()Z

    move-result p0

    return p0
.end method

.method private static loadComponents(Landroid/app/Application;Lmiui/core/Manifest;)V
    .locals 1

    new-instance v0, Lcom/miui/internal/component/ComponentManager;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/component/ComponentManager;-><init>(Landroid/app/Application;Lmiui/core/Manifest;)V

    invoke-virtual {v0}, Lcom/miui/internal/component/ComponentManager;->load()V

    return-void
.end method

.method public static start(Ljava/util/Map;)I
    .locals 5

    const-class v0, Lmiui/core/SdkManager;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v1, "miuisdk"

    const-string v3, "sdk already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sInitializingApplication:Landroid/app/Application;

    sput-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lmiui/core/ManifestParser;->create(Landroid/content/Context;)Lmiui/core/ManifestParser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p0

    instance-of v3, v1, Lcom/miui/internal/app/MiuiApplication;

    if-nez v3, :cond_1

    invoke-static {v1, p0}, Lmiui/core/SdkManager;->isCompatible(Landroid/content/Context;Lmiui/core/Manifest;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    const-string v3, "android"

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, p0}, Lmiui/core/SdkManager;->loadComponents(Landroid/app/Application;Lmiui/core/Manifest;)V

    :cond_2
    sget p0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge p0, v2, :cond_3

    sput v2, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    :cond_3
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static startService(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmiui/core/SdkManager$1;

    invoke-direct {v1, p0}, Lmiui/core/SdkManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static supportUpdate(Ljava/util/Map;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static update(Ljava/util/Map;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
