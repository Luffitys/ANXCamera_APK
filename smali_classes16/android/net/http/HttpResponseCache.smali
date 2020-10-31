.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Lcom/android/okhttp/internalandroidapi/HasCacheHolder;
.implements Ljava/io/Closeable;


# instance fields
.field private final mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .registers 2

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Landroid/net/http/HttpResponseCache;

    return-object v1

    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Landroid/net/http/HttpResponseCache;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    instance-of v2, v1, Landroid/net/http/HttpResponseCache;

    if-eqz v2, :cond_1d

    move-object v2, v1

    check-cast v2, Landroid/net/http/HttpResponseCache;

    invoke-virtual {v2}, Landroid/net/http/HttpResponseCache;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->isEquivalent(Ljava/io/File;J)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_30

    if-eqz v4, :cond_1a

    monitor-exit v0

    return-object v2

    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Landroid/net/http/HttpResponseCache;->close()V

    :cond_1d
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->create(Ljava/io/File;J)Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v2

    new-instance v3, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-direct {v3, v2}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;-><init>(Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;)V

    new-instance v4, Landroid/net/http/HttpResponseCache;

    invoke-direct {v4, v3}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;)V

    invoke-static {v4}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_30

    monitor-exit v0

    return-object v4

    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_a
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->close()V

    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_a
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->delete()V

    return-void
.end method

.method public flush()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .registers 3

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getSize()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception v0

    const-wide/16 v1, -0x1

    return-wide v1
.end method
