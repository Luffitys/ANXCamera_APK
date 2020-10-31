.class public Lmiui/util/cache/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lmiui/util/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/cache/LruCache$CacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_MEMORY_SIZE:I


# instance fields
.field private final mCacheItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Lmiui/util/cache/LruCache$CacheItem<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxSize:J

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_9

    sget v0, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    div-int/lit8 p1, v0, 0x8

    :cond_9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private trim()V
    .registers 7

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-nez v2, :cond_2f

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2f

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2f
    goto :goto_a

    :cond_30
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    iget-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v3, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_70

    :cond_49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    if-eqz v1, :cond_6f

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_64

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, v1, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    :cond_64
    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget v4, v1, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    :cond_6f
    goto :goto_3a

    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/cache/LruCache$CacheItem;

    iget-object v3, v2, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_2a

    iget-object v3, v2, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->clear()V

    :cond_2a
    goto :goto_f

    :cond_2b
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_37

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/cache/LruCache$CacheItem;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_5b

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    nop

    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_1a
    :try_start_1a
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-eqz v2, :cond_26

    iget-object v1, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_5b

    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_26
    :try_start_26
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_4f

    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-eqz v2, :cond_4f

    iget-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget v3, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v3, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_47

    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    :cond_47
    iget-object v1, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_5b

    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_4f
    :try_start_4f
    iget-object v2, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_5b

    nop

    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_5b
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    if-eqz p1, :cond_39

    if-nez p2, :cond_5

    goto :goto_39

    :cond_5
    new-instance v0, Lmiui/util/cache/LruCache$CacheItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/cache/LruCache$CacheItem;-><init>(Lmiui/util/cache/LruCache$1;)V

    iput-object p1, v0, Lmiui/util/cache/LruCache$CacheItem;->key:Ljava/lang/Object;

    iput-object p2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-ltz p3, :cond_13

    move v1, p3

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput v1, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1b
    iget-object v1, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget v3, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_32

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_32
    move-exception v1

    iget-object v2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_39
    :goto_39
    return-void
.end method

.method public setMaxSize(I)V
    .registers 6

    if-gez p1, :cond_6

    sget v0, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    div-int/lit8 p1, v0, 0x8

    :cond_6
    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    :try_start_9
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_20

    :cond_19
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_20
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
