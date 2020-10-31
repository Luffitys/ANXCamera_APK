.class public Lmiui/maml/LifecycleResourceManager;
.super Lmiui/maml/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceLoader;JJ)V
    .registers 6

    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    iput-wide p2, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    iput-wide p4, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    return-void
.end method


# virtual methods
.method public checkCache()V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return-void

    :cond_f
    const-string v2, "LifecycleResourceManager"

    const-string v3, "begin check cache... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1e
    iget-object v4, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapKeys:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lmiui/maml/LifecycleResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/ResourceManager$BitmapInfo;

    if-eqz v6, :cond_47

    iget-wide v7, v6, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v7, v0, v7

    iget-wide v9, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_47

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    goto :goto_24

    :cond_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "LifecycleResourceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lmiui/maml/LifecycleResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapKeys:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    nop

    goto :goto_4c

    :cond_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_1e .. :try_end_7b} :catchall_7e

    sput-wide v0, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    return-void

    :catchall_7e
    move-exception v4

    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v4
.end method

.method public finish(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    :cond_5
    invoke-super {p0, p1}, Lmiui/maml/ResourceManager;->finish(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    return-void
.end method
