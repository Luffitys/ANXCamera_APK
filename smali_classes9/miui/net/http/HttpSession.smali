.class public Lmiui/net/http/HttpSession;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final TAG:Ljava/lang/String; = "HttpSession"


# instance fields
.field private mCache:Lmiui/net/http/Cache;

.field private final mClientHeaders:Ljava/util/Map;

.field private mClientParams:Ljava/lang/String;

.field private mRetryStrategy:Lmiui/net/http/RetryStrategy;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-static {}, Lmiui/net/http/DiskBasedCache;->getDefault()Lmiui/net/http/DiskBasedCache;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    new-instance v0, Lmiui/net/http/BaseRetryStrategy;

    invoke-direct {v0}, Lmiui/net/http/BaseRetryStrategy;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    return-void
.end method

.method private addCacheHeaders(Lmiui/net/http/Cache$Entry;)V
    .locals 4

    iget-object v0, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "If-None-Match"

    invoke-virtual {p0, v1, v0}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lmiui/net/http/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0, p1}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private addRequestHeaders(Ljava/util/Map;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static convertHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private executeGet(Ljava/lang/String;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/net/URL;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget v3, v0, Lmiui/net/http/HttpSession;->mTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v3, v0, Lmiui/net/http/HttpSession;->mTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, v0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, v0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v3, 0x130

    if-ne v7, v3, :cond_1

    new-instance v0, Lmiui/net/http/DefaultHttpResponse;

    const/16 v9, 0xc8

    iget-object v10, v1, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v11, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v12, v1, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v14, v1, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v15, v1, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const/16 v1, 0xc8

    if-lt v7, v1, :cond_5

    const/16 v1, 0x12b

    if-gt v7, v1, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lmiui/net/http/HttpSession;->convertHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    const-string v6, "content-range"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v6, Lmiui/net/http/HttpSession$CountingInputStream;

    move-object v8, v6

    move-wide v10, v3

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lmiui/net/http/HttpSession$CountingInputStream;-><init>(Ljava/io/InputStream;JLjava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v12, v1

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gzip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v5, ""

    move-object v9, v1

    move-object v13, v5

    goto :goto_2

    :cond_3
    move-object v13, v1

    goto :goto_1

    :cond_4
    move-object v13, v5

    :goto_1
    move-object v9, v6

    :goto_2
    new-instance v1, Lmiui/net/http/DefaultHttpResponse;

    move-object v6, v1

    move-object v8, v14

    move-wide v10, v3

    invoke-direct/range {v6 .. v13}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lmiui/net/http/HttpSession;->putCacheEntry(Ljava/lang/String;Lmiui/net/http/DefaultHttpResponse;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HttpSession"

    invoke-static {v2, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private executeGet(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;
    .locals 9

    invoke-static {p1, p2}, Lmiui/net/http/HttpSession;->getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lmiui/net/http/HttpSession;->getCacheEntry(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance p0, Lmiui/net/http/DefaultHttpResponse;

    const/16 v2, 0xc8

    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v4, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v7, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v8, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-wide p1, p2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-interface {p3, p1, p2, p1, p2}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    :cond_0
    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    const-wide/16 v0, -0x1

    invoke-interface {p3, v0, v1, v0, v1}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lmiui/net/http/HttpSession;->addCacheHeaders(Lmiui/net/http/Cache$Entry;)V

    :cond_3
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    :goto_0
    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0}, Lmiui/net/http/RetryStrategy;->getCurrentTimeout()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/net/http/HttpSession;->setTimeout(I)V

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lmiui/net/http/HttpSession;->executeGet(Ljava/lang/String;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    throw v1

    :catch_1
    move-exception v1

    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    throw v1
.end method

.method private getCacheEntry(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiui/net/http/Cache;->get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lmiui/net/http/HttpSession;
    .locals 1

    new-instance v0, Lmiui/net/http/HttpSession;

    invoke-direct {v0}, Lmiui/net/http/HttpSession;-><init>()V

    return-object v0
.end method

.method private static getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private putCacheEntry(Ljava/lang/String;Lmiui/net/http/DefaultHttpResponse;)V
    .locals 2

    iget-object p0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lmiui/net/http/HttpHeaderParser;->parseCacheHeaders(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1, v0}, Lmiui/net/http/Cache;->put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v0, v0, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {p2, p0, v0, v1}, Lmiui/net/http/DefaultHttpResponse;->setContent(Ljava/io/InputStream;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearCacheContent()V
    .locals 0

    iget-object p0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiui/net/http/Cache;->clear()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public download(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 4

    invoke-direct {p0, p3}, Lmiui/net/http/HttpSession;->addRequestHeaders(Ljava/util/Map;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiui/net/http/HttpSession;->mClientParams:Ljava/lang/String;

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "RANGE"

    invoke-virtual {p0, v2, p3}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4, p5}, Lmiui/net/http/HttpSession;->executeGet(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p3

    const-string p4, "content-range"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "bytes "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Ljava/io/RandomAccessFile;

    const-string p4, "rw"

    invoke-direct {p3, p1, p4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    :goto_0
    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_2

    const/4 p5, 0x0

    invoke-virtual {p3, p1, p5, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_2

    :cond_3
    :try_start_2
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p3}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-static {p2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->release()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p3, p2

    :goto_2
    invoke-static {p2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->release()V

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0

    invoke-direct {p0, p2}, Lmiui/net/http/HttpSession;->addRequestHeaders(Ljava/util/Map;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiui/net/http/HttpSession;->mClientParams:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmiui/net/http/HttpSession;->executeGet(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public removeCacheContent(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiui/net/http/Cache;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setCache(Lmiui/net/http/Cache;)V
    .locals 1

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    :cond_0
    return-void
.end method

.method public setRetryStrategy(Lmiui/net/http/RetryStrategy;)V
    .locals 0

    iput-object p1, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lmiui/net/http/HttpSession;->mTimeout:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
