.class final Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;


# instance fields
.field private infoProvider:Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

.field private splitActivities:Ljava/util/List;

.field private splitActivitiesMap:Ljava/util/Map;

.field private splitReceivers:Ljava/util/List;

.field private splitServices:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->infoProvider:Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

    return-void
.end method


# virtual methods
.method public activeApplication(Landroid/app/Application;Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroid/app/Application;

    const-string v1, "attach"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    invoke-direct {p1, p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->infoProvider:Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

    invoke-virtual {p0, p2}, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->getSplitApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    invoke-direct {p1, p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getSplitActivitiesMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitActivitiesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->infoProvider:Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->getSplitActivitiesMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitActivitiesMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitActivitiesMap:Ljava/util/Map;

    return-object p0
.end method

.method public isSplitActivity(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitActivities:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->getSplitActivitiesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitActivities:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitActivities:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSplitReceiver(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitReceivers:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->infoProvider:Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->getSplitReceivers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitReceivers:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitReceivers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSplitService(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitServices:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->infoProvider:Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->getSplitServices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitServices:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;->splitServices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
