.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
.source ""


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 3

    if-eqz p2, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1, p3, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->load(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    invoke-static {p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitUnKnownFileTypeDexLoader;->loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p2, -0x17

    invoke-direct {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private loadLibrary(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader;->load(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p2, -0x16

    invoke-direct {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method loadCode2(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;->loadLibrary(Ljava/lang/ClassLoader;Ljava/io/File;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;->loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method
