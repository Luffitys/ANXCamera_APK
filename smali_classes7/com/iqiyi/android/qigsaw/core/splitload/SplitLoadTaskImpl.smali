.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl;
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

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method loadCode(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoader(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual/range {p1 .. p6}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object p0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->addClassLoader(Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;)V

    :cond_0
    return-object p0
.end method

.method onSplitActivateFailed(Ljava/lang/ClassLoader;)V
    .locals 0

    instance-of p0, p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object p0

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->removeClassLoader(Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;)Z

    :cond_0
    return-void
.end method
