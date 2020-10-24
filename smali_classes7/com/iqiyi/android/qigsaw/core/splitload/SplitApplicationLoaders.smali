.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sInstance:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final splitDexClassLoaders:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->splitDexClassLoaders:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    invoke-direct {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    return-object v0
.end method


# virtual methods
.method addClassLoader(Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;)V
    .locals 0
    .param p1    # Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->splitDexClassLoaders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getClassLoader(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->splitDexClassLoaders:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getClassLoaders()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->splitDexClassLoaders:Ljava/util/Set;

    return-object p0
.end method

.method getClassLoaders(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->splitDexClassLoaders:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method removeClassLoader(Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;)Z
    .locals 0
    .param p1    # Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->splitDexClassLoaders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
