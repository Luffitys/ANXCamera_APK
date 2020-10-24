.class abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

.field private final needUpdateSplits:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->needUpdateSplits:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method abstract isStartInstallOperation()Z
.end method

.method onInstallCompleted(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method onInstallFailed(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method protected onPreInstall()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 15

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onPreInstall()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->isStartInstallOperation()Z

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->needUpdateSplits:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->needUpdateSplits:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    move v8, v7

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    new-instance v11, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    invoke-virtual {v9}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v14

    invoke-direct {v11, v12, v13, v14}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    iget-object v12, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    invoke-virtual {v12, v2, v9}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;->install(ZLcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;

    move-result-object v9

    iget-boolean v12, v9, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->firstInstalled:Z

    if-eqz v12, :cond_1

    move v12, v7

    goto :goto_1

    :cond_1
    const/4 v12, 0x2

    :goto_1
    invoke-virtual {v11, v12}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->setInstallFlag(I)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v9, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;

    invoke-virtual {v8}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;->getErrorCode()I

    move-result v12

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v9, v11, v12, v8}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallReporterManager;->getInstallReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    move-result-object v6

    if-eqz v8, :cond_4

    invoke-virtual {p0, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onInstallCompleted(Ljava/util/List;)V

    if-eqz v6, :cond_6

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-interface {v6, v4, v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onStartInstallOK(Ljava/util/List;J)V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-interface {v6, v4, v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onDeferredInstallOK(Ljava/util/List;J)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onInstallFailed(Ljava/util/List;)V

    if-eqz v6, :cond_6

    if-eqz v2, :cond_5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-interface {v6, v4, p0, v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onStartInstallFailed(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;J)V

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-interface {v6, v4, v5, v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onDeferredInstallFailed(Ljava/util/List;Ljava/util/List;J)V

    :cond_6
    :goto_2
    return-void
.end method
