.class abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitLoadTask"


# instance fields
.field private final activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

.field final appContext:Landroid/content/Context;

.field private final infoManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

.field private final loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

.field private final loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

.field private final mLock:Ljava/lang/Object;

.field private final mainHandler:Landroid/os/Handler;

.field private final splitFileIntents:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V
    .locals 1
    .param p1    # Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->splitFileIntents:Ljava/util/List;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->appContext:Landroid/content/Context;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->mainHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object p2

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->infoManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    return-void
.end method

.method static synthetic access$000(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadSplitInternal()V

    return-void
.end method

.method private checkSplitLoaded(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getLoadedSplits()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private loadSplitInternal()V
    .locals 23

    move-object/from16 v8, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->createSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    move-result-object v11

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->splitFileIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v8, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->splitFileIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "splitName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v8, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->infoManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    iget-object v2, v8, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->appContext:Landroid/content/Context;

    invoke-interface {v1, v2, v7}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-result-object v1

    const/4 v6, 0x1

    const-string v5, "SplitLoadTask"

    if-nez v1, :cond_1

    new-array v0, v6, [Ljava/lang/Object;

    if-nez v7, :cond_0

    const-string v7, "null"

    :cond_0
    aput-object v7, v0, v14

    const-string v1, "Unable to get info of %s, just skip!"

    invoke-static {v5, v1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v14

    invoke-direct {v4, v2, v3, v14}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v8, v7}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->checkSplitLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const-string v1, "Split %s has been loaded!"

    invoke-static {v5, v1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "apk"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :try_start_0
    invoke-virtual {v11, v14}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadResources(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v2, "added-dex"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitOptDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v17

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasLibs()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitLibDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v2

    :cond_3
    move-object/from16 v18, v2

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v3

    :try_start_1
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getDependencies()Ljava/util/List;

    move-result-object v19
    :try_end_1
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v20, v11

    move-object v11, v3

    move-object v3, v7

    move-wide/from16 v21, v9

    move-object v9, v4

    move-object v4, v0

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v17, v13

    move-object v13, v7

    move-object/from16 v7, v19

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadCode(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_2
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, v8, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    invoke-virtual {v0, v1, v13}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->activate(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set last modified time for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    invoke-direct {v0, v13, v14}, Lcom/iqiyi/android/qigsaw/core/splitload/Split;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v17

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to activate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v10, v0, v2, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v9, v3, v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    move-object/from16 v3, v17

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->onSplitActivateFailed(Ljava/lang/ClassLoader;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, v17

    const/4 v1, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    move-wide/from16 v21, v9

    move-object/from16 v20, v11

    move-object v3, v13

    move-object v9, v4

    move-object v10, v5

    move-object v13, v7

    move v1, v6

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    const-string v2, "Failed to load split %s code!"

    invoke-static {v10, v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v9, v2, v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v13, v3

    :goto_4
    move-object/from16 v11, v20

    move-wide/from16 v9, v21

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move v1, v6

    move-wide/from16 v21, v9

    move-object/from16 v20, v11

    move-object v3, v13

    move-object v9, v4

    move-object v10, v5

    move-object v13, v7

    move-object v2, v0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const-string v4, "Failed to load split %s resources!"

    invoke-static {v10, v2, v4, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;->getErrorCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v9, v4, v2}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v14, v1

    move-object v13, v3

    move-object/from16 v11, v20

    move-wide/from16 v9, v21

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v21, v9

    move-object v3, v13

    iget-object v0, v8, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    invoke-virtual {v0, v12}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->putSplits(Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v21

    invoke-direct {v8, v15, v3, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->reportLoadResult(Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method private reportLoadResult(Ljava/util/List;Ljava/util/List;J)V
    .locals 6

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadReporterManager;->getLoadReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    iget v1, v1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->errorCode:I

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    invoke-interface {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;->onFailed(I)V

    :cond_0
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;->onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;->onCompleted()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;->onLoadOK(Ljava/lang/String;Ljava/util/List;J)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method abstract createSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
.end method

.method abstract loadCode(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;
.end method

.method abstract onSplitActivateFailed(Ljava/lang/ClassLoader;)V
.end method

.method public final run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadSplitInternal()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;

    invoke-direct {v2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->splitFileIntents:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string v3, "splitName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->infoManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->appContext:Landroid/content/Context;

    invoke-interface {v3, v4, v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    const/16 v5, -0x1a

    invoke-direct {v4, v3, v5, v1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->reportLoadResult(Ljava/util/List;Ljava/util/List;J)V

    :cond_1
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
