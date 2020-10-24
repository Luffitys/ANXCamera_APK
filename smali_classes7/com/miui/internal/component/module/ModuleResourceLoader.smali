.class public Lcom/miui/internal/component/module/ModuleResourceLoader;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    invoke-interface {v1}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->newInstance()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    move-result-object p3

    invoke-static {}, Lcom/miui/internal/component/module/ModuleResourceLoader;->getResourcesManagerInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mResourceImpls"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {p2}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;->appendAssetPath(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    invoke-virtual {p3, v5}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;->getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;

    move-result-object v5

    if-eq v5, v2, :cond_1

    invoke-interface {v1, v5, p2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p3
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    invoke-interface {v1, v2, p2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-ge v0, v3, :cond_4

    invoke-static {p0, v2}, Lcom/miui/internal/component/module/ModuleResourceLoader;->replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    :cond_4
    return-void
.end method

.method private static getResourcesManagerInstance()Ljava/lang/Object;
    .locals 4

    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static load(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Initial(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {p0, p1, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static load2Initial(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ActivityThread_class;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->currentActivityThread()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->get()Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    move-result-object v2

    invoke-interface {v0, v1}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getResources(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v2, v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getApplicationInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1, v0, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static load2System(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 3

    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_Resources_class;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v0, p1}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
