.class public Lcom/miui/internal/component/ComponentManager;
.super Ljava/lang/Object;
.source "ComponentManager.java"


# static fields
.field private static final PLUGIN_BUILT_IN_FOLDER:Ljava/lang/String; = "plugins"

.field private static final PLUGIN_TARGET_FOLDER:Ljava/lang/String; = "plugins"


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mManifest:Lmiui/core/Manifest;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lmiui/core/Manifest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    iput-object p2, p0, Lcom/miui/internal/component/ComponentManager;->mManifest:Lmiui/core/Manifest;

    return-void
.end method

.method private extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 12

    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_3e

    aget-object v4, v1, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v5}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3f

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3e
    goto :goto_43

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_43
    return-void
.end method

.method private getPluginsFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "plugins"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadModules()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lmiui/module/ModuleManager;->createInstance(Landroid/app/Application;)Lmiui/module/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v1}, Lmiui/core/Manifest;->getDependencies()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/module/ModuleManager;->loadModules([Ljava/lang/String;)V

    return-void
.end method

.method private loadPlugins()V
    .registers 6

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/miui/internal/component/plugin/PluginContext;->setApplicationContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/miui/internal/component/ComponentManager;->getPluginsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    const-string v2, "plugins"

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/internal/component/ComponentManager;->extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_1c
    new-instance v1, Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-direct {v1, v0}, Lcom/miui/internal/component/plugin/PluginLoader;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginLoader(Lcom/miui/internal/component/plugin/PluginLoader;)V

    new-instance v2, Lcom/miui/internal/component/plugin/PluginClassLoader;

    invoke-direct {v2, v1}, Lcom/miui/internal/component/plugin/PluginClassLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginClassLoader(Lcom/miui/internal/component/plugin/PluginClassLoader;)V

    new-instance v3, Lcom/miui/internal/component/plugin/PluginResourceLoader;

    invoke-direct {v3, v1}, Lcom/miui/internal/component/plugin/PluginResourceLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginResourceLoader(Lcom/miui/internal/component/plugin/PluginResourceLoader;)V

    return-void
.end method


# virtual methods
.method public load()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/component/ComponentManager;->loadModules()V

    invoke-direct {p0}, Lcom/miui/internal/component/ComponentManager;->loadPlugins()V

    return-void
.end method
