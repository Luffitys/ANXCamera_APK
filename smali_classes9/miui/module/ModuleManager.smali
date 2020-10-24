.class public Lmiui/module/ModuleManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INSTANCE:Lmiui/module/ModuleManager;

.field private static final MODULE_TARGET_FOLDER:Ljava/lang/String; = "modules"

.field private static final MODULE_TEMP_FOLDER:Ljava/lang/String; = "modules-temp"

.field private static final sModuleManagerMap:Ljava/util/WeakHashMap;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

.field private mModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

.field private mModulesFolder:Ljava/io/File;

.field private mTempModulesFolder:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {p0, p1}, Lmiui/module/ModuleManager;->getModulesFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    iget-object p1, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {p0, p1}, Lmiui/module/ModuleManager;->getTempModulesFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    new-instance p1, Lcom/miui/internal/component/module/ModuleLoader;

    iget-object v0, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/internal/component/module/ModuleFolder;

    new-instance v2, Lcom/miui/internal/component/module/ModuleFolder;

    iget-object v3, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-direct {v2, v3, v3}, Lcom/miui/internal/component/module/ModuleFolder;-><init>(Ljava/io/File;Ljava/io/File;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p1, v0, v1}, Lcom/miui/internal/component/module/ModuleLoader;-><init>(Landroid/app/Application;[Lcom/miui/internal/component/module/ModuleFolder;)V

    iput-object p1, p0, Lmiui/module/ModuleManager;->mModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

    return-void
.end method

.method private copyModule(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".apk"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    invoke-virtual {p4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static createInstance(Landroid/app/Application;)Lmiui/module/ModuleManager;
    .locals 3

    if-eqz p0, :cond_2

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/module/ModuleManager;->sModuleManagerMap:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/module/ModuleManager;->sModuleManagerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/module/ModuleManager;

    if-nez v1, :cond_1

    new-instance v1, Lmiui/module/ModuleManager;

    invoke-direct {v1, p0}, Lmiui/module/ModuleManager;-><init>(Landroid/app/Application;)V

    sget-object v2, Lmiui/module/ModuleManager;->sModuleManagerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lmiui/module/ModuleManager;->INSTANCE:Lmiui/module/ModuleManager;

    return-object p0
.end method

.method private extractLibrary(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    const-string p1, "lib/"

    invoke-direct {p0, p2}, Lmiui/module/ModuleManager;->getModuleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    invoke-static {v3}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v4}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    throw p0
.end method

.method public static getInstance()Lmiui/module/ModuleManager;
    .locals 1

    sget-object v0, Lmiui/module/ModuleManager;->INSTANCE:Lmiui/module/ModuleManager;

    return-object v0
.end method

.method private getModuleFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getModulesFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v0, "modules"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private getTempModulesFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v0, "modules-temp"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private notifyFail(Ljava/lang/String;I)V
    .locals 2

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

    iget-object p0, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFail(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private notifyFinish()V
    .locals 2

    const-string v0, "miuisdk"

    const-string v1, "process modules finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFinish()V

    :cond_0
    return-void
.end method

.method private notifySuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

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

    iget-object p0, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V
    .locals 13

    if-eqz p2, :cond_9

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Lcom/miui/internal/component/module/BuiltinRepository;

    iget-object v1, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/BuiltinRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/internal/component/module/PrebuiltRepository;

    iget-object v2, p0, Lmiui/module/ModuleManager;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/miui/internal/component/module/PrebuiltRepository;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v6, v3, [Lmiui/module/Repository;

    aput-object v0, v6, v4

    aput-object v1, v6, v5

    invoke-direct {p1, v6}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v7, v2, [Lmiui/module/Repository;

    aput-object v0, v7, v4

    aput-object v1, v7, v5

    aput-object p1, v7, v3

    invoke-direct {v6, v7}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    move-object p1, v6

    :goto_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p2

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_3

    aget-object v7, p2, v6

    invoke-direct {p0, v7}, Lmiui/module/ModuleManager;->getModuleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    invoke-virtual {p1, v0}, Lmiui/module/Repository;->contains(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    :goto_2
    array-length v1, p2

    move v6, v4

    :goto_3
    if-ge v6, v1, :cond_8

    aget-object v7, p2, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading module: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "miuisdk"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, " with "

    if-eqz v8, :cond_5

    iget-object v8, p0, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    iget-object v11, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {p0, v8, v11, v12, v7}, Lmiui/module/ModuleManager;->copyModule(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t copy module from "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lmiui/module/ModuleManager;->mTempModulesFolder:Ljava/io/File;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v3}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_5
    invoke-direct {p0, v7}, Lmiui/module/ModuleManager;->getModuleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    :try_start_0
    iget-object v11, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-direct {p0, v11, v7}, Lmiui/module/ModuleManager;->extractLibrary(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to extract library to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lmiui/module/ModuleManager;->mModulesFolder:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v3}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "got IOException when extract lib: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v3}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    :cond_6
    new-instance v10, Lmiui/module/Dependency;

    invoke-direct {v10}, Lmiui/module/Dependency;-><init>()V

    invoke-virtual {v10, v7}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    :try_start_1
    iget-object v11, p0, Lmiui/module/ModuleManager;->mModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

    new-array v12, v5, [Lmiui/module/Dependency;

    aput-object v10, v12, v4

    invoke-virtual {v11, v12}, Lcom/miui/internal/component/module/ModuleLoader;->loadModules([Lmiui/module/Dependency;)V
    :try_end_1
    .catch Lcom/miui/internal/component/module/ModuleLoadException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lmiui/module/ModuleManager;->notifySuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got Exception when load modules: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, v7, v2}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    goto :goto_4

    :catch_2
    move-exception v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got ModuleLoadException when load modules: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0, v7, v5}, Lmiui/module/ModuleManager;->notifyFail(Ljava/lang/String;I)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0}, Lmiui/module/ModuleManager;->notifyFinish()V

    :cond_9
    :goto_5
    return-void
.end method

.method public varargs loadModules([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/module/ModuleManager;->loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V

    return-void
.end method

.method public setModuleLoadListener(Lmiui/module/ModuleManager$ModuleLoadListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/module/ModuleManager;->mListener:Lmiui/module/ModuleManager$ModuleLoadListener;

    return-void
.end method
