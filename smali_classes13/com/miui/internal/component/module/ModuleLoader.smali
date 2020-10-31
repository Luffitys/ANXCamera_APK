.class public Lcom/miui/internal/component/module/ModuleLoader;
.super Ljava/lang/Object;
.source "ModuleLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;
    }
.end annotation


# instance fields
.field private loadedModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadedResources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private moduleFolders:[Lcom/miui/internal/component/module/ModuleFolder;


# direct methods
.method public varargs constructor <init>(Landroid/app/Application;[Lcom/miui/internal/component/module/ModuleFolder;)V
    .registers 4

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
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v1}, Lmiui/module/Module;->getContent()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    :cond_d
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getContent()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1a

    iget-object v1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->libFolderPath:Ljava/lang/String;

    :cond_1a
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v3}, Lmiui/module/Module;->getContent()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_27

    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    :cond_27
    const/4 v3, 0x0

    if-nez v0, :cond_2c

    if-eqz v1, :cond_57

    :cond_2c
    invoke-direct {p0, p2, v0, v1}, Lcom/miui/internal/component/module/ModuleLoader;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v3, v4

    if-eqz v3, :cond_57

    iget-boolean v4, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optional:Z

    if-eqz v4, :cond_3a

    goto :goto_57

    :cond_3a
    new-instance v4, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encounter error when load dex for module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v6}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_57
    :goto_57
    if-eqz v2, :cond_89

    if-nez v3, :cond_89

    invoke-direct {p0, v2}, Lcom/miui/internal/component/module/ModuleLoader;->loadResource(Ljava/lang/String;)V

    if-eqz v3, :cond_82

    iget-boolean v4, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optional:Z

    if-eqz v4, :cond_65

    goto :goto_82

    :cond_65
    new-instance v4, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encounter error when load res for module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v6}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_82
    :goto_82
    iget-object v4, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedResources:Ljava/util/Set;

    iget-object v5, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_89
    if-nez v3, :cond_96

    iget-object v4, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedModules:Ljava/util/Set;

    iget-object v5, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v5}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_96
    return-void
.end method

.method private loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-static {p2, p1, p3, v0, v1}, Lcom/miui/internal/component/module/ModuleClassLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private loadResource(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedResources:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static varargs loadResources([Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;)V

    return-void
.end method

.method private resolveModule(Ljava/lang/String;)Lmiui/module/Module;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/core/ManifestParser;->createFromArchive(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public varargs loadModules([Lmiui/module/Dependency;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v4, :cond_fe

    aget-object v8, v1, v6

    iget-object v9, v0, Lcom/miui/internal/component/module/ModuleLoader;->loadedModules:Ljava/util/Set;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    goto/16 :goto_f8

    :cond_22
    invoke-virtual {v8}, Lmiui/module/Dependency;->getType()I

    move-result v9

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v10, 0x0

    :goto_2c
    move v9, v10

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolders:[Lcom/miui/internal/component/module/ModuleFolder;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_32
    if-ge v13, v12, :cond_8d

    aget-object v17, v11, v13

    new-instance v14, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/internal/component/module/ModuleFolder;->getApkFolder()Ljava/io/File;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v15, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/miui/internal/component/module/ModuleFolder;->getOptFolder()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/miui/internal/component/module/ModuleLoader;->resolveModule(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v21

    new-instance v15, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    move-object v11, v15

    move-object/from16 v12, v21

    move-object v13, v7

    move-object/from16 v14, v19

    move-object v1, v15

    move-object/from16 v15, v20

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto :goto_8d

    :cond_88
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_32

    :cond_8d
    :goto_8d
    if-nez v10, :cond_f8

    iget-object v1, v0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v1, v5, v7}, Lcom/miui/internal/util/PackageHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a2

    const/4 v7, 0x0

    goto :goto_a7

    :cond_a2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_a7
    move-object v5, v7

    if-eqz v5, :cond_d8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_d8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct {v0, v7}, Lcom/miui/internal/component/module/ModuleLoader;->resolveModule(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v19

    new-instance v15, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    move-object v11, v15

    move-object/from16 v12, v19

    move-object v13, v7

    move-object/from16 v14, v17

    move-object/from16 v20, v1

    move-object v1, v15

    move-object/from16 v15, v18

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    :cond_d8
    move-object/from16 v20, v1

    if-eqz v9, :cond_dd

    :goto_dc
    goto :goto_f8

    :cond_dd
    new-instance v1, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no such module found: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f8
    :goto_f8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_10

    :cond_fe
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_102
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_140

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    iget-object v5, v0, Lcom/miui/internal/component/module/ModuleLoader;->mApplication:Landroid/app/Application;

    iget-object v6, v4, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/miui/internal/component/module/ModuleUtils;->isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11e

    iget-object v5, v4, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optFolderPath:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/miui/internal/component/module/ModuleLoader;->load(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V

    goto :goto_122

    :cond_11e
    iget-boolean v5, v4, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optional:Z

    if-eqz v5, :cond_123

    :goto_122
    goto :goto_102

    :cond_123
    new-instance v1, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid signature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    invoke-virtual {v6}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_140
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_144
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_155

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/miui/internal/component/module/ModuleLoader;->load(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V

    goto :goto_144

    :cond_155
    return-void
.end method
