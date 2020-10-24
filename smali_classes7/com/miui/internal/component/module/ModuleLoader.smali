.class public Lcom/miui/internal/component/module/ModuleLoader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private loadedModules:Ljava/util/Set;

.field private loadedResources:Ljava/util/Set;

.field private mApplication:Landroid/app/Application;

.field private moduleFolders:[Lcom/miui/internal/component/module/ModuleFolder;


# direct methods
.method public varargs constructor <init>(Landroid/app/Application;[Lcom/miui/internal/component/module/ModuleFolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedModules:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedResources:Ljava/util/Set;

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolders:[Lcom/miui/internal/component/module/ModuleFolder;

    return-void
.end method

.method private load(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v0}, Lmiui/module/Module;->getContent()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getContent()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->libFolderPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v3, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v3}, Lmiui/module/Module;->getContent()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget-object v1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    :cond_2
    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    invoke-direct {p0, p2, v0, v2}, Lcom/miui/internal/component/module/ModuleLoader;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_5

    iget-boolean p2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optional:Z

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encounter error when load dex for module: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    invoke-direct {p0, v1}, Lcom/miui/internal/component/module/ModuleLoader;->loadResource(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    iget-boolean p2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optional:Z

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encounter error when load res for module: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedResources:Ljava/util/Set;

    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v3, :cond_9

    iget-object p0, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedModules:Ljava/util/Set;

    iget-object p1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-static {p2, p1, p3, v0, p0}, Lcom/miui/internal/component/module/ModuleClassLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private loadResource(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedResources:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static varargs loadResources([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;)V

    return-void
.end method

.method private resolveModule(Ljava/lang/String;)Lmiui/module/Module;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/core/ManifestParser;->createFromArchive(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs loadModules([Lmiui/module/Dependency;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v8, v1, v6

    iget-object v9, v0, Lcom/miui/internal/component/module/ModuleLoader;->loadedModules:Ljava/util/Set;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v8}, Lmiui/module/Dependency;->getType()I

    move-result v9

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v11, v0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolders:[Lcom/miui/internal/component/module/ModuleFolder;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    new-instance v15, Ljava/io/File;

    invoke-virtual {v14}, Lcom/miui/internal/component/module/ModuleFolder;->getApkFolder()Ljava/io/File;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/miui/internal/component/module/ModuleFolder;->getOptFolder()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v13}, Lcom/miui/internal/component/module/ModuleLoader;->resolveModule(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v12

    new-instance v7, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    move-object v11, v7

    move-object v14, v5

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_7

    iget-object v5, v0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v5, v7, v10}, Lcom/miui/internal/util/PackageHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v0, v13}, Lcom/miui/internal/component/module/ModuleLoader;->resolveModule(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v12

    new-instance v5, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    move-object v11, v5

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such module found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    iget-object v4, v0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    iget-object v5, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/internal/component/module/ModuleUtils;->isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optFolderPath:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/miui/internal/component/module/ModuleLoader;->load(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget-boolean v4, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optional:Z

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid signature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/miui/internal/component/module/ModuleLoader;->load(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    return-void
.end method
