.class public Lcom/miui/internal/component/ComponentManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final PLUGIN_BUILT_IN_FOLDER:Ljava/lang/String; = "plugins"

.field private static final PLUGIN_TARGET_FOLDER:Ljava/lang/String; = "plugins"


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mManifest:Lmiui/core/Manifest;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lmiui/core/Manifest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    iput-object p2, p0, Lcom/miui/internal/component/ComponentManager;->mManifest:Lmiui/core/Manifest;

    return-void
.end method

.method private extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v3}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private getPluginsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v0, "plugins"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private loadModules()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lmiui/module/ModuleManager;->createInstance(Landroid/app/Application;)Lmiui/module/ModuleManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/internal/component/ComponentManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {p0}, Lmiui/core/Manifest;->getDependencies()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lmiui/module/ModuleManager;->loadModules([Ljava/lang/String;)V

    return-void
.end method

.method private loadPlugins()V
    .locals 3

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/miui/internal/component/plugin/PluginContext;->setApplicationContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/miui/internal/component/ComponentManager;->getPluginsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->mApplication:Landroid/app/Application;

    const-string v2, "plugins"

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/internal/component/ComponentManager;->extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    new-instance p0, Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-direct {p0, v0}, Lcom/miui/internal/component/plugin/PluginLoader;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginLoader(Lcom/miui/internal/component/plugin/PluginLoader;)V

    new-instance v0, Lcom/miui/internal/component/plugin/PluginClassLoader;

    invoke-direct {v0, p0}, Lcom/miui/internal/component/plugin/PluginClassLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginClassLoader(Lcom/miui/internal/component/plugin/PluginClassLoader;)V

    new-instance v0, Lcom/miui/internal/component/plugin/PluginResourceLoader;

    invoke-direct {v0, p0}, Lcom/miui/internal/component/plugin/PluginResourceLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginResourceLoader(Lcom/miui/internal/component/plugin/PluginResourceLoader;)V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/component/ComponentManager;->loadModules()V

    invoke-direct {p0}, Lcom/miui/internal/component/ComponentManager;->loadPlugins()V

    return-void
.end method
