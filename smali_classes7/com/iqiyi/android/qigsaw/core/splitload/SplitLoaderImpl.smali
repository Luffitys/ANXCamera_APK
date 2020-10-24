.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
.source ""


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->create(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p2, -0x1b

    invoke-direct {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method
