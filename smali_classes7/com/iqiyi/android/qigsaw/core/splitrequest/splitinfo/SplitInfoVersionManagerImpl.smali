.class final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitInfoVersionManager"


# instance fields
.field private currentVersion:Ljava/lang/String;

.field private defaultVersion:Ljava/lang/String;

.field private isMainProcess:Z

.field private rootDir:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->isMainProcess:Z

    new-instance p2, Ljava/io/File;

    const-string p3, "qigsaw"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    const-string p4, "split_info_version"

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->processVersionData(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->reportNewSplitInfoVersionLoaded()V

    return-void
.end method

.method static createSplitInfoVersionManager(Landroid/content/Context;Z)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;
    .locals 3

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getDefaultSplitInfoVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getQigsawId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private processVersionData(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->readVersionData()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SplitInfoVersionManager"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "No new split info version, just use default version."

    invoke-static {v2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v1, "Splits have been updated, so we use new split info version %s."

    invoke-static {v2, v1, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->isMainProcess:Z

    if-eqz v4, :cond_3

    new-instance v4, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    invoke-direct {v4, v0, v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/ProcessUtil;->killAllOtherProcess(Landroid/content/Context;)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Splits have been updated, start to kill other processes!"

    invoke-static {v2, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to update new split info version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private readVersionData()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;-><init>(Ljava/io/File;)V

    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorage;->readVersionData()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    move-result-object p0

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private reportNewSplitInfoVersionLoaded()V
    .locals 2

    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->isMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateReporterManager;->getUpdateReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;->onNewSplitInfoVersionLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;-><init>(Ljava/io/File;)V

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorage;->updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z

    move-result p0

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCurrentVersion()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultVersion()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    return-object p0
.end method

.method public updateVersion(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 4

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v0, "SplitInfoVersionManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Failed to make dir for split info file!"

    invoke-static {v0, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qigsaw_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p3, v2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-direct {p1, v2, p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const-string p1, "Success to update split info version, current version %s, new version %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    aput-object p0, v3, v1

    aput-object p2, v3, v2

    invoke-static {v0, p1, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to delete temp split info file: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move v2, v1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to rename file : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return v2
.end method
