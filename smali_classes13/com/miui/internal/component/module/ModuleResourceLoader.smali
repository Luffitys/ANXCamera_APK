.class public Lcom/miui/internal/component/module/ModuleResourceLoader;
.super Ljava/lang/Object;
.source "ModuleResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_32

    invoke-interface {v1}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->newInstance()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object v2, p1

    invoke-interface {v1, v0, p1}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    if-eqz p2, :cond_30

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_20

    :cond_30
    move-object v4, v0

    goto :goto_34

    :cond_32
    move-object v2, p1

    move-object v4, v0

    :goto_34
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    :try_start_45
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    move-result-object v0

    move-object v7, v0

    invoke-static {}, Lcom/miui/internal/component/module/ModuleResourceLoader;->getResourcesManagerInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v9, "mResourceImpls"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    monitor-enter v8
    :try_end_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_45 .. :try_end_63} :catch_ab
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_63} :catch_a9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_45 .. :try_end_63} :catch_a7
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_63} :catch_a5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_45 .. :try_end_63} :catch_a3

    :try_start_63
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v6}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;->appendAssetPath(Ljava/lang/String;)V

    monitor-exit v8
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_a0

    if-eqz v0, :cond_ac

    :try_start_6f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_77
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ac

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9f

    nop

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v7, v13}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;->getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;

    move-result-object v13

    if-eq v13, v4, :cond_9f

    invoke-interface {v1, v13, v6}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6f .. :try_end_9f} :catch_ab
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6f .. :try_end_9f} :catch_a9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6f .. :try_end_9f} :catch_a7
    .catch Ljava/lang/IllegalAccessException; {:try_start_6f .. :try_end_9f} :catch_a5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6f .. :try_end_9f} :catch_a3

    :cond_9f
    goto :goto_77

    :catchall_a0
    move-exception v0

    :try_start_a1
    monitor-exit v8
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a2 .. :try_end_a3} :catch_ab
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a2 .. :try_end_a3} :catch_a9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a2 .. :try_end_a3} :catch_a7
    .catch Ljava/lang/IllegalAccessException; {:try_start_a2 .. :try_end_a3} :catch_a5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a2 .. :try_end_a3} :catch_a3

    :catch_a3
    move-exception v0

    goto :goto_ad

    :catch_a5
    move-exception v0

    goto :goto_ac

    :catch_a7
    move-exception v0

    goto :goto_ac

    :catch_a9
    move-exception v0

    goto :goto_ac

    :catch_ab
    move-exception v0

    :cond_ac
    :goto_ac
    nop

    :goto_ad
    invoke-interface {v1, v4, v6}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_38

    :cond_b1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_ba

    move-object v3, p0

    invoke-static {p0, v4}, Lcom/miui/internal/component/module/ModuleResourceLoader;->replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    goto :goto_bb

    :cond_ba
    move-object v3, p0

    :goto_bb
    return-void
.end method

.method private static getResourcesManagerInstance()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static load(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    invoke-static {p0, p1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Initial(Ljava/util/List;Ljava/util/List;)V

    goto :goto_e

    :cond_9
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {p0, p1, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    :goto_e
    return-void
.end method

.method public static load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, v1, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static load2Initial(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

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

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getResources(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v2, v3}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getApplicationInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4, v5, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static load2System(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->addAssetPath(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .registers 7

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

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
