.class public abstract Lmiui/core/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"


# static fields
.field private static final MIUI_CORE_SERVICE:Ljava/lang/String; = "com.miui.internal.server.CoreService"

.field public static final RETURN_CODE_LOW_SDK_VERSION:I = 0x1

.field public static final RETURN_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "miuisdk"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configDebugEnable()I
    .registers 12

    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getDebugEnable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_14
    if-ge v4, v3, :cond_5f

    aget-object v5, v1, v4

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5c

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "all"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    const/4 v8, 0x1

    :cond_32
    if-nez v8, :cond_42

    invoke-static {}, Lcom/miui/internal/util/ClassProxy;->getProcName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    :cond_42
    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/internal/util/ClassProxy;->setDebugModules([Ljava/lang/String;)V

    goto :goto_5c

    :cond_53
    const-string v9, "\\|"

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/internal/util/ClassProxy;->setDebugModules([Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_5f
    return v2
.end method

.method public static initialize(Landroid/app/Application;Ljava/util/Map;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lmiui/core/SdkManager;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lmiui/core/SdkManager;->configDebugEnable()I

    sput-object p0, Lcom/miui/internal/util/PackageConstants;->sInitializingApplication:Landroid/app/Application;

    sget v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_17

    const-string v1, "miuisdk"

    const-string v3, "sdk already initialized"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_17
    invoke-static {}, Lcom/miui/internal/initialization/OverrideHelper;->doInitialize()V

    invoke-static {}, Lcom/miui/internal/util/PackageHelper;->isMiuiSystem()Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v4, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/miui/internal/component/module/ModuleLoader;->loadResources([Ljava/lang/String;)V

    :cond_2a
    sget v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge v1, v3, :cond_30

    sput v3, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    :cond_30
    monitor-exit v0

    return v2

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private static isCompatible(Landroid/content/Context;Lmiui/core/Manifest;)Z
    .registers 4

    new-instance v0, Lmiui/core/CompatibleManager;

    invoke-direct {v0, p0, p1}, Lmiui/core/CompatibleManager;-><init>(Landroid/content/Context;Lmiui/core/Manifest;)V

    invoke-virtual {v0}, Lmiui/core/CompatibleManager;->isCompatible()Z

    move-result v1

    return v1
.end method

.method private static loadComponents(Landroid/app/Application;Lmiui/core/Manifest;)V
    .registers 3

    new-instance v0, Lcom/miui/internal/component/ComponentManager;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/component/ComponentManager;-><init>(Landroid/app/Application;Lmiui/core/Manifest;)V

    invoke-virtual {v0}, Lcom/miui/internal/component/ComponentManager;->load()V

    return-void
.end method

.method public static start(Ljava/util/Map;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lmiui/core/SdkManager;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_f

    const-string v1, "miuisdk"

    const-string v3, "sdk already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sInitializingApplication:Landroid/app/Application;

    sput-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lmiui/core/ManifestParser;->create(Landroid/content/Context;)Lmiui/core/ManifestParser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v3

    instance-of v4, v1, Lcom/miui/internal/app/MiuiApplication;

    if-nez v4, :cond_28

    invoke-static {v1, v3}, Lmiui/core/SdkManager;->isCompatible(Landroid/content/Context;Lmiui/core/Manifest;)Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_28
    const-string v4, "android"

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-static {v1, v3}, Lmiui/core/SdkManager;->loadComponents(Landroid/app/Application;Lmiui/core/Manifest;)V

    :cond_37
    sget v4, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge v4, v2, :cond_3d

    sput v2, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    :cond_3d
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private static startService(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmiui/core/SdkManager$1;

    invoke-direct {v1, p0}, Lmiui/core/SdkManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static supportUpdate(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static update(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
