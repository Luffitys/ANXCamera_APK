.class public Lmiui/animation/utils/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/utils/ObjectPool$Cache;,
        Lmiui/animation/utils/ObjectPool$IPoolObject;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x1388L

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static final sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiui/animation/utils/ObjectPool$Cache;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1}, Lmiui/animation/utils/ObjectPool;->createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lmiui/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static varargs acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiui/animation/utils/ObjectPool$Cache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/animation/utils/ObjectPool$Cache;->acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static varargs createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v5, p1

    if-eq v4, v5, :cond_16

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    return-object v1

    :cond_1f
    goto :goto_37

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjectPool.createObject failed, clz = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuisdk_anim"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getObjectCache(Ljava/lang/Class;Z)Lmiui/animation/utils/ObjectPool$Cache;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lmiui/animation/utils/ObjectPool$Cache;"
        }
    .end annotation

    sget-object v0, Lmiui/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/utils/ObjectPool$Cache;

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    new-instance v1, Lmiui/animation/utils/ObjectPool$Cache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/animation/utils/ObjectPool$Cache;-><init>(Lmiui/animation/utils/ObjectPool$1;)V

    move-object v0, v1

    sget-object v1, Lmiui/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/utils/ObjectPool$Cache;

    if-eqz v1, :cond_1f

    move-object v2, v1

    goto :goto_20

    :cond_1f
    move-object v2, v0

    :goto_20
    move-object v0, v2

    :cond_21
    return-object v0
.end method

.method public static release(Ljava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    instance-of v1, p0, Lmiui/animation/utils/ObjectPool$IPoolObject;

    if-eqz v1, :cond_12

    move-object v1, p0

    check-cast v1, Lmiui/animation/utils/ObjectPool$IPoolObject;

    invoke-interface {v1}, Lmiui/animation/utils/ObjectPool$IPoolObject;->clear()V

    goto :goto_27

    :cond_12
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1d

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_27

    :cond_1d
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_27

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_27
    :goto_27
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiui/animation/utils/ObjectPool$Cache;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1, p0}, Lmiui/animation/utils/ObjectPool$Cache;->releaseObject(Ljava/lang/Object;)V

    :cond_31
    return-void
.end method
