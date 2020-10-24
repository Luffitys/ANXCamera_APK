.class public Lmiui/util/cache/LruCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/util/cache/Cache;


# static fields
.field private static final BASE_MEMORY_SIZE:I


# instance fields
.field private final mCacheItems:Ljava/util/LinkedHashMap;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxSize:J

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    sget p1, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    div-int/lit8 p1, p1, 0x8

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private trim()V
    .locals 6

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v1, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    iget-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v3, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, v1, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    :cond_5
    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget v4, v1, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/cache/LruCache$CacheItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    iget-object p1, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :try_start_2
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->softCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget p1, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v3, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V

    iget-object v0, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lmiui/util/cache/LruCache$CacheItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/cache/LruCache$CacheItem;-><init>(Lmiui/util/cache/LruCache$1;)V

    iput-object p1, v0, Lmiui/util/cache/LruCache$CacheItem;->key:Ljava/lang/Object;

    iput-object p2, v0, Lmiui/util/cache/LruCache$CacheItem;->cacheItem:Ljava/lang/Object;

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iput p3, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    iget-object p2, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p2, p0, Lmiui/util/cache/LruCache;->mCacheItems:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget p3, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public setMaxSize(I)V
    .locals 4

    if-gez p1, :cond_0

    sget p1, Lmiui/util/cache/LruCache;->BASE_MEMORY_SIZE:I

    div-int/lit8 p1, p1, 0x8

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    :try_start_0
    iget-object p1, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lmiui/util/cache/LruCache;->mTotalSize:J

    iget-wide v2, p0, Lmiui/util/cache/LruCache;->mMaxSize:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    invoke-direct {p0}, Lmiui/util/cache/LruCache;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmiui/util/cache/LruCache;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
