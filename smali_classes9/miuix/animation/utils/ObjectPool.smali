.class public Lmiuix/animation/utils/ObjectPool;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DELAY:J = 0x1388L

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static final sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final sMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiuix/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lmiuix/animation/utils/ObjectPool;->createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lmiuix/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static varargs acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiuix/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiuix/animation/utils/ObjectPool$Cache;->acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v5, p1

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectPool.createObject failed, clz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miuix_anim"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;
    .locals 1

    sget-object v0, Lmiuix/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/ObjectPool$Cache;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance p1, Lmiuix/animation/utils/ObjectPool$Cache;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lmiuix/animation/utils/ObjectPool$Cache;-><init>(Lmiuix/animation/utils/ObjectPool$1;)V

    sget-object v0, Lmiuix/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/utils/ObjectPool$Cache;

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static release(Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    instance-of v1, p0, Lmiuix/animation/utils/ObjectPool$IPoolObject;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lmiuix/animation/utils/ObjectPool$IPoolObject;

    invoke-interface {v1}, Lmiuix/animation/utils/ObjectPool$IPoolObject;->clear()V

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lmiuix/animation/utils/ObjectPool$Cache;->releaseObject(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
