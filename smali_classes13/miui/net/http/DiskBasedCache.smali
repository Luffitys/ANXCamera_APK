.class public Lmiui/net/http/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lmiui/net/http/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;,
        Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20140228

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0xa00000

.field private static final HYSTERESIS_FACTOR:F = 0.9f

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/net/http/DiskBasedCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisBasedCache"


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/net/http/DiskBasedCache$DiskCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/net/http/DiskBasedCache$1;

    invoke-direct {v0}, Lmiui/net/http/DiskBasedCache$1;-><init>()V

    sput-object v0, Lmiui/net/http/DiskBasedCache;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0xa00000

    invoke-direct {p0, v0, v1}, Lmiui/net/http/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/high16 v0, 0xa00000

    invoke-direct {p0, p1, v0}, Lmiui/net/http/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    iput-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    if-nez p1, :cond_24

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "miui.net.http"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    :cond_24
    iput-object p1, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    iput p2, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method public static getDefault()Lmiui/net/http/DiskBasedCache;
    .registers 1

    sget-object v0, Lmiui/net/http/DiskBasedCache;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache;

    return-object v0
.end method

.method private getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "MD5"

    invoke-static {p1, v0}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private pruneIfNeeded(J)V
    .registers 14

    iget-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v0, p1

    iget v2, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    return-void

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v2

    :try_start_12
    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v3, p1

    iget v5, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1e

    monitor-exit v2

    return-void

    :cond_1e
    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    iget-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_4f

    invoke-virtual {v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    iget-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v8, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_4f
    goto :goto_2a

    :cond_50
    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v4, p1

    iget v6, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_5c

    monitor-exit v2

    return-void

    :cond_5c
    iget-object v4, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const v5, 0x3f666666    # 0.9f

    if-eqz v4, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    iget-wide v7, v6, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    cmp-long v7, v7, v0

    if-gez v7, :cond_9c

    invoke-virtual {v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    iget-wide v7, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v9, v6, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-wide v7, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v7, p1

    long-to-float v7, v7

    iget v8, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9c

    goto :goto_9d

    :cond_9c
    goto :goto_67

    :cond_9d
    :goto_9d
    iget-wide v6, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v6, p1

    iget v4, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gez v4, :cond_a9

    monitor-exit v2

    return-void

    :cond_a9
    iget-object v4, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->isUsing()Z

    move-result v7

    if-eqz v7, :cond_cd

    goto :goto_b4

    :cond_cd
    invoke-virtual {v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-wide v7, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    add-long/2addr v7, p1

    long-to-float v7, v7

    iget v8, p0, Lmiui/net/http/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e0

    goto :goto_e1

    :cond_e0
    goto :goto_b4

    :cond_e1
    :goto_e1
    monitor-exit v2

    return-void

    :catchall_e3
    move-exception v3

    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_12 .. :try_end_e5} :catchall_e3

    throw v3
.end method

.method private putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .registers 10

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v2, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-nez v1, :cond_17

    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    goto :goto_21

    :cond_17
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v6, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    :goto_21
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v3, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private removeEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .registers 7

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-object v1, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    iget-object v2, p1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public clear()V
    .registers 4

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    return-void
.end method

.method public get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;
    .registers 4

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->toCacheEntry()Lmiui/net/http/Cache$Entry;

    move-result-object v1

    return-object v1
.end method

.method public initialize()V
    .registers 9

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/DiskBasedCache;->mTotalSize:J

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DisBasedCache"

    if-nez v0, :cond_32

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    :cond_32
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3b

    return-void

    :cond_3b
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v2, :cond_68

    aget-object v4, v0, v3

    invoke-static {v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->fromFile(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    move-result-object v5

    if-eqz v5, :cond_4b

    invoke-direct {p0, v5}, Lmiui/net/http/DiskBasedCache;->putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    goto :goto_65

    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot delete file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_68
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-eqz v0, :cond_12

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    if-eqz p2, :cond_12

    iput-wide v1, v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    :cond_12
    return-void
.end method

.method public put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z
    .registers 7

    invoke-direct {p0, p1}, Lmiui/net/http/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->toFile(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-wide v2, v1, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    invoke-direct {p0, v2, v3}, Lmiui/net/http/DiskBasedCache;->pruneIfNeeded(J)V

    invoke-direct {p0, v1}, Lmiui/net/http/DiskBasedCache;->putEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    const/4 v2, 0x1

    return v2

    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->delete()V

    invoke-direct {p0, v0}, Lmiui/net/http/DiskBasedCache;->removeEntry(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    :cond_10
    return-void
.end method
