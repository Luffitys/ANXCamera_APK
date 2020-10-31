.class public Lmiui/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/module/ModuleManager$ModuleLoadListener;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/module/ModuleManager;

.field private static final MODULE_TARGET_FOLDER:Ljava/lang/String; = "modules"

.field private static final MODULE_TEMP_FOLDER:Ljava/lang/String; = "modules-temp"

.field private static final sModuleManagerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lmiui/module/ModuleManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

.field private mModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

.field private mModulesFolder:Ljava/io/File;

.field private mTempModulesFolder:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/module/ModuleManager;

    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lmiui/module/ModuleManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lmiui/module/ModuleManager;->INSTANCE:Lmiui/module/ModuleManager;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/module/ModuleManager;->sModuleManagerMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {p0, p1}, Lmiui/module/ModuleManager;->getModulesFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {p0, v0}, Lmiui/module/ModuleManager;->getTempModulesFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/miui/internal/component/module/ModuleLoader;

    iget-object v1, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/internal/component/module/ModuleFolder;

    new-instance v3, Lcom/miui/internal/component/module/ModuleFolder;

    iget-object v4, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-direct {v3, v4, v4}, Lcom/miui/internal/component/module/ModuleFolder;-><init>(Ljava/io/File;Ljava/io/File;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/component/module/ModuleLoader;-><init>(Landroid/app/Application;[Lcom/miui/internal/component/module/ModuleFolder;)V

    iput-object v0, p0, Lmiui/module/ModuleManager;->mModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

    return-void
.end method

.method private copyModule(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    const/4 v3, 0x0

    return v3

    :cond_23
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    return v3
.end method

.method public static createInstance(Landroid/app/Application;)Lmiui/module/ModuleManager;
    .registers 4

    if-eqz p0, :cond_24

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    if-ne p0, v0, :cond_7

    goto :goto_24

    :cond_7
    sget-object v0, Lmiui/module/ModuleManager;->sModuleManagerMap:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lmiui/module/ModuleManager;->sModuleManagerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/module/ModuleManager;

    if-nez v1, :cond_1f

    new-instance v2, Lmiui/module/ModuleManager;

    invoke-direct {v2, p0}, Lmiui/module/ModuleManager;-><init>(Landroid/app/Application;)V

    move-object v1, v2

    sget-object v2, Lmiui/module/ModuleManager;->sModuleManagerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    :goto_24
    sget-object v0, Lmiui/module/ModuleManager;->INSTANCE:Lmiui/module/ModuleManager;

    return-object v0
.end method

.method private extractLibrary(Ljava/io/File;Ljava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "lib/"

    invoke-direct {p0, p2}, Lmiui/module/ModuleManager;->getModuleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    return v4

    :cond_16
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :try_start_1e
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_85

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_41

    goto :goto_22

    :cond_41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    :cond_6f
    invoke-static {v7}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_85

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v9}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_85
    .catchall {:try_start_1e .. :try_end_85} :catchall_8b

    :cond_85
    goto :goto_22

    :cond_86
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    nop

    return v4

    :catchall_8b
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    throw v0
.end method

.method public static getInstance()Lmiui/module/ModuleManager;
    .registers 1

    sget-object v0, Lmiui/module/ModuleManager;->INSTANCE:Lmiui/module/ModuleManager;

    return-object v0
.end method

.method private getModuleFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getModulesFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "modules"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTempModulesFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "modules-temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyFail(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuisdk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFail(Ljava/lang/String;I)V

    :cond_25
    return-void
.end method

.method private notifyFinish()V
    .registers 3

    const-string v0, "miuisdk"

    const-string v1, "process modules finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFinish()V

    :cond_e
    return-void
.end method

.method private notifySuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " successful"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuisdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_22

    invoke-interface {v0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public varargs loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-eqz v2, :cond_1a4

    array-length v0, v2

    if-nez v0, :cond_b

    goto/16 :goto_1a4

    :cond_b
    new-instance v0, Lcom/miui/internal/component/module/BuiltinRepository;

    iget-object v3, v1, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v3}, Lcom/miui/internal/component/module/BuiltinRepository;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    new-instance v0, Lcom/miui/internal/component/module/PrebuiltRepository;

    iget-object v4, v1, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v4}, Lcom/miui/internal/component/module/PrebuiltRepository;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_2e

    new-instance v0, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v9, v6, [Lmiui/module/Repository;

    aput-object v3, v9, v7

    aput-object v4, v9, v8

    invoke-direct {v0, v9}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    move-object v9, v0

    goto :goto_3c

    :cond_2e
    new-instance v0, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v9, v5, [Lmiui/module/Repository;

    aput-object v3, v9, v7

    aput-object v4, v9, v8

    aput-object p1, v9, v6

    invoke-direct {v0, v9}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    move-object v9, v0

    :goto_3c
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v10, v0

    array-length v0, v2

    move v11, v7

    :goto_44
    if-ge v11, v0, :cond_58

    aget-object v12, v2, v11

    invoke-direct {v1, v12}, Lmiui/module/ModuleManager;->getModuleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_55

    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v11, v11, 0x1

    goto :goto_44

    :cond_58
    const/4 v0, 0x0

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v11, v0

    goto :goto_70

    :cond_65
    iget-object v11, v1, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    invoke-virtual {v9, v10}, Lmiui/module/Repository;->contains(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    move-object v11, v0

    :goto_70
    array-length v12, v2

    move v13, v7

    :goto_72
    if-ge v13, v12, :cond_1a0

    aget-object v14, v2, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loading module: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "miuisdk"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " with "

    if-eqz v0, :cond_d3

    iget-object v0, v1, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    iget-object v7, v1, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    invoke-direct {v1, v0, v7, v8, v14}, Lmiui/module/ModuleManager;->copyModule(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t copy module from "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v14, v6}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    const/4 v6, 0x1

    const/4 v8, 0x3

    goto/16 :goto_198

    :cond_d3
    invoke-direct {v1, v14}, Lmiui/module/ModuleManager;->getModuleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_125

    :try_start_dd
    iget-object v0, v1, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-direct {v1, v0, v14}, Lmiui/module/ModuleManager;->extractLibrary(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to extract library to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v14, v6}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_104} :catch_109

    const/4 v6, 0x1

    const/4 v8, 0x3

    goto/16 :goto_198

    :cond_108
    goto :goto_125

    :catch_109
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got IOException when extract lib: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v14, v6}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    :cond_125
    :goto_125
    new-instance v0, Lmiui/module/Dependency;

    invoke-direct {v0}, Lmiui/module/Dependency;-><init>()V

    move-object v5, v0

    invoke-virtual {v5, v14}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    :try_start_12e
    iget-object v0, v1, Lmiui/module/ModuleManager;->mModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

    const/4 v8, 0x1

    new-array v6, v8, [Lmiui/module/Dependency;
    :try_end_133
    .catch Lcom/miui/internal/component/module/ModuleLoadException; {:try_start_12e .. :try_end_133} :catch_167
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_133} :catch_146

    const/4 v8, 0x0

    :try_start_134
    aput-object v5, v6, v8

    invoke-virtual {v0, v6}, Lcom/miui/internal/component/module/ModuleLoader;->loadModules([Lmiui/module/Dependency;)V
    :try_end_139
    .catch Lcom/miui/internal/component/module/ModuleLoadException; {:try_start_134 .. :try_end_139} :catch_167
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_139} :catch_144

    nop

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, Lmiui/module/ModuleManager;->notifySuccess(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v8, 0x3

    goto :goto_198

    :catch_144
    move-exception v0

    goto :goto_148

    :catch_146
    move-exception v0

    const/4 v8, 0x0

    :goto_148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got Exception when load modules: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    invoke-direct {v1, v14, v6}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    const/4 v6, 0x1

    const/4 v8, 0x3

    goto :goto_198

    :catch_167
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got ModuleLoadException when load modules: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/component/module/ModuleLoadException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_192

    invoke-interface {v11, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_192

    const/4 v6, 0x1

    invoke-direct {v1, v14, v6}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    const/4 v8, 0x3

    goto :goto_197

    :cond_192
    const/4 v6, 0x1

    const/4 v8, 0x3

    invoke-direct {v1, v14, v8}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    :goto_197
    nop

    :goto_198
    add-int/lit8 v13, v13, 0x1

    move v5, v8

    const/4 v7, 0x0

    move v8, v6

    const/4 v6, 0x2

    goto/16 :goto_72

    :cond_1a0
    invoke-direct/range {p0 .. p0}, Lmiui/module/ModuleManager;->notifyFinish()V

    return-void

    :cond_1a4
    :goto_1a4
    return-void
.end method

.method public varargs loadModules([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/module/ModuleManager;->loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V

    return-void
.end method

.method public setModuleLoadListener(Lmiui/module/ModuleManager$ModuleLoadListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    return-void
.end method
