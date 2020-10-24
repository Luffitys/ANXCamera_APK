.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_SPLIT_CACHE_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SplitDeleteRedundantVersionTask"


# instance fields
.field private final allSplits:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->allSplits:Ljava/util/Collection;

    return-void
.end method

.method private deleteRedundantSplitVersionDirs(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p2, p1

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$2;

    invoke-direct {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$2;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move p0, p3

    :goto_0
    array-length p2, p1

    if-ge p0, p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    const-string v1, "SplitDeleteRedundantVersionTask"

    const-string v2, "Split %s version %s is redundant, so we try to delete it"

    invoke-static {v1, v2, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object p2, p1, p0

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->allSplits:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitRootDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitMarkFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->deleteRedundantSplitVersionDirs(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method
