.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;
.super Ldalvik/system/PathClassLoader;
.source ""


# static fields
.field private static originClassLoader:Ldalvik/system/BaseDexClassLoader;


# instance fields
.field private classNotFoundInterceptor:Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    check-cast p1, Ldalvik/system/BaseDexClassLoader;

    sput-object p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->originClassLoader:Ldalvik/system/BaseDexClassLoader;

    return-void
.end method

.method static inject(Ljava/lang/ClassLoader;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->reflectPackageInfoClassloader(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static reflectPackageInfoClassloader(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "mPackageInfo"

    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "mClassLoader"

    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->originClassLoader:Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->classNotFoundInterceptor:Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    throw v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->originClassLoader:Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoaders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->findLibraryItself(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :cond_1
    return-object p0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoaders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->findResourceItself(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_0

    :cond_1
    return-object p0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoaders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->findResourcesItself(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_0

    :cond_1
    return-object p0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    sget-object p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->originClassLoader:Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {p0, p1}, Ldalvik/system/BaseDexClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 0

    sget-object p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->originClassLoader:Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {p0, p1}, Ldalvik/system/BaseDexClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method setClassNotFoundInterceptor(Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->classNotFoundInterceptor:Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;

    return-void
.end method
