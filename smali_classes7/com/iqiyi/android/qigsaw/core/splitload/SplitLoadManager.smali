.class public abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SplitLoadManager"


# instance fields
.field private final context:Landroid/content/Context;

.field final currentProcessName:Ljava/lang/String;

.field private final loadedSplitApkPaths:Ljava/util/Set;

.field private final loadedSplitNames:Ljava/util/Set;

.field private final loadedSplits:Ljava/util/Set;

.field final splitLoadMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitNames:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    iput p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode:I

    return-void
.end method


# virtual methods
.method public abstract createSplitLoadTask(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)Ljava/lang/Runnable;
    .param p2    # Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method getLoadedSplitApkPaths()Ljava/util/Set;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "SplitLoadManager"

    const-string v4, "Split has been loaded, but its file %s is not exist!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadedSplitNames()Ljava/util/Set;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitNames:Ljava/util/Set;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getLoadedSplits()Ljava/util/Set;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getResources(Landroid/content/res/Resources;)V
.end method

.method public abstract injectPathClassloader()V
.end method

.method public abstract loadInstalledSplits()V
.end method

.method public abstract loadInstalledSplitsWhenAppLaunches()V
.end method

.method final putSplits(Ljava/util/Collection;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitNames:Ljava/util/Set;

    iget-object v2, v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitApkPath:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public splitLoadMode()I
    .locals 0

    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode:I

    return p0
.end method
