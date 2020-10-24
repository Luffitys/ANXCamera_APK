.class final Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Split:ClassNotFound"


# instance fields
.field private final context:Landroid/content/Context;

.field private final originClassLoader:Ljava/lang/ClassLoader;

.field private final splitLoadMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->originClassLoader:Ljava/lang/ClassLoader;

    iput p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->splitLoadMode:I

    return-void
.end method

.method private findClassInSplits(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9

    const-string p0, "Split:ClassNotFound"

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoaders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->loadClassItself(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "Class %s is found in %s ClassLoader"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v3

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p0, v6, v7}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "Class %s is not found in %s ClassLoader"

    invoke-static {p0, v1, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSplitEntryFragments(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->context:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitEntryFragments(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onClassNotFound(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->findClassInSplits(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getFakeComponent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->isSplitEntryFragments(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadInstalledSplits()V

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->findClassInSplits(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Split:ClassNotFound"

    if-eqz p0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Class %s is found in Splits after loading all installed splits."

    invoke-static {v3, p1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "Split component %s is still not found after installing all installed splits, return a %s to avoid crash"

    invoke-static {v3, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private onClassNotFound2(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getFakeComponent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->isSplitEntryFragments(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadInstalledSplits()V

    :try_start_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->originClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz v0, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    const-string p1, "Split:ClassNotFound"

    const-string v1, "Split component %s is still not found after installing all installed splits,return a %s to avoid crash"

    invoke-static {p1, v1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->splitLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->onClassNotFound(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->onClassNotFound2(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
