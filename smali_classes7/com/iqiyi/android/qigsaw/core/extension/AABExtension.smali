.class public Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Split:AABExtension"

.field private static final sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final aabApplications:Ljava/util/List;

.field private final extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

.field private final sSplitContentProviderMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getSplitNames()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;

    new-instance v2, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

    invoke-direct {v2, v0}, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;-><init>(Ljava/util/Set;)V

    invoke-direct {v1, v2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;-><init>(Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;)V

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    return-void
.end method

.method public static getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-direct {v1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    return-object v0
.end method

.method private getSplitNames()Ljava/util/Set;
    .locals 2

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getDynamicFeatures()[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public activateSplitProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;

    invoke-virtual {p2, p1}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->activateRealContentProvider(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public activeApplication(Landroid/app/Application;Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->activeApplication(Landroid/app/Application;Landroid/content/Context;)V

    return-void
.end method

.method public createAndActiveSplitApplication(Landroid/content/Context;Z)V
    .locals 4

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;

    invoke-direct {p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->getInstalledSplitsForAAB()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->activeApplication(Landroid/app/Application;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " application"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Split:AABExtension"

    invoke-static {v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public getFakeComponent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->isSplitActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p0, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeActivity;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->isSplitService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeService;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->isSplitReceiver(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-class p0, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeReceiver;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitNameForActivityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->getSplitActivitiesMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public onApplicationCreate()V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method put(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
