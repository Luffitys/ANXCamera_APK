.class public Lmiui/net/http/DiskBasedCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/net/http/Cache;


# static fields
.field private static final CACHE_MAGIC:I = 0x20140228

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0xa00000

.field private static final HYSTERESIS_FACTOR:F = 0.9f

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;

.field private static final TAG:Ljava/lang/String; = "DisBasedCache"


# instance fields
.field private final mEntries:Ljava/util/Map;

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/net/http/DiskBasedCache$1;

    invoke-direct {v0}, Lmiui/net/http/DiskBasedCache$1;-><init>()V

    sput-object v0, Lmiui/net/http/DiskBasedCache;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0xa00000

    invoke-direct {p0, v0, v1}, Lmiui/net/http/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0xa00000

    invoke-direct {p0, p1, v0}, Lmiui/net/http/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    iput-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "miui.net.http"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    iput p2, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method public static getDefault()Lmiui/net/http/DiskBasedCache;
    .locals 1

    sget-object v0, Lmiui/net/http/DiskBasedCache;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache;

    return-object v0
.end method

.method private getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, "MD5"

    invoke-static {p1, v0}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private pruneIfNeeded(J)V
    .locals 10

    iget-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v0, p1

    iget v2, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v3, p1

    iget v5, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    iget-wide v5, v4, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_2

    invoke-virtual {v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    iget-wide v5, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v7, v4, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v3, p1

    iget v5, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    iget-object v3, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const v5, 0x3f666666    # 0.9f

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    iget-wide v6, v4, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_5

    invoke-virtual {v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    iget-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v8, v4, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v6, p1

    long-to-float v4, v6

    iget v6, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_5

    :cond_6
    iget-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v0, p1

    iget v3, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_7

    monitor-exit v2

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->isUsing()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v3, p1

    long-to-float v1, v3

    iget v3, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    :cond_a
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .locals 8

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v2, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-nez v1, :cond_0

    iget-wide v1, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    :goto_0
    iget-object p0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v1, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .locals 5

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-object p0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object p1, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    return-void
.end method

.method public get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->toCacheEntry()Lmiui/net/http/Cache$Entry;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .locals 7

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DisBasedCache"

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    invoke-static {v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->fromFile(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v5}, Lmiui/net/http/DiskBasedCache;->putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 2

    iget-object p0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    if-eqz p2, :cond_0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z
    .locals 2

    invoke-direct {p0, p1}, Lmiui/net/http/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->toFile(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    invoke-direct {p0, v0, v1}, Lmiui/net/http/DiskBasedCache;->pruneIfNeeded(J)V

    invoke-direct {p0, p1}, Lmiui/net/http/DiskBasedCache;->putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    invoke-direct {p0, p1}, Lmiui/net/http/DiskBasedCache;->removeEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    :cond_0
    return-void
.end method
