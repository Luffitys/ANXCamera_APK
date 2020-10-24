.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl2;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;
.source ""


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V
    .locals 0
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

    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V

    return-void
.end method


# virtual methods
.method createSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method loadCode(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 0

    invoke-virtual {p1, p3, p4, p5}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadCode2(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    const-class p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method onSplitActivateFailed(Ljava/lang/ClassLoader;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->unLoad(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
