.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitStartUninstallTask"


# instance fields
.field private final uninstallSplits:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "SplitStartUninstallTask"

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v4, "split %s need to be uninstalled, try to delete its files"

    invoke-static {v6, v4, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitRootDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;->getUninstallReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-interface {p0, v2, v7, v8}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;->onSplitUninstallOK(Ljava/util/List;J)V

    :cond_1
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;-><init>()V

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->deletePendingUninstallSplitsRecord()Z

    move-result p0

    new-array v0, v5, [Ljava/lang/Object;

    if-eqz p0, :cond_2

    const-string p0, "Succeed"

    goto :goto_1

    :cond_2
    const-string p0, "Failed"

    :goto_1
    aput-object p0, v0, v4

    const-string p0, "%s to delete record file of pending uninstall splits!"

    invoke-static {v6, p0, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
