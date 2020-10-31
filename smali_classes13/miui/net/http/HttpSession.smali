.class public Lmiui/net/http/HttpSession;
.super Ljava/lang/Object;
.source "HttpSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/HttpSession$CountingInputStream;,
        Lmiui/net/http/HttpSession$ProgressListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final TAG:Ljava/lang/String; = "HttpSession"


# instance fields
.field private mCache:Lmiui/net/http/Cache;

.field private final mClientHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClientParams:Ljava/lang/String;

.field private mRetryStrategy:Lmiui/net/http/RetryStrategy;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

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
    .registers 6

    iget-object v0, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    const-string v1, "If-None-Match"

    invoke-virtual {p0, v1, v0}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-wide v0, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lmiui/net/http/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "If-Modified-Since"

    invoke-virtual {p0, v1, v0}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private addRequestHeaders(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_2e
    return-void
.end method

.method private static convertHeaders(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_38

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

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

    if-eqz v2, :cond_37

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    goto :goto_f

    :cond_38
    return-object v0
.end method

.method private executeGet(Ljava/lang/String;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/net/URL;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget v5, v1, Lmiui/net/http/HttpSession;->mTimeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v5, v1, Lmiui/net/http/HttpSession;->mTimeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v5, v1, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    if-eqz v5, :cond_53

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_53

    iget-object v5, v1, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_53
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v7, 0x130

    if-ne v5, v7, :cond_73

    new-instance v7, Lmiui/net/http/DefaultHttpResponse;

    const/16 v9, 0xc8

    iget-object v10, v2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v11, v2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v12, v2, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v14, v2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v15, v2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    move-object v8, v7

    invoke-direct/range {v8 .. v15}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_f8

    :cond_73
    const/16 v7, 0xc8

    if-lt v5, v7, :cond_f9

    const/16 v7, 0x12b

    if-gt v5, v7, :cond_f9

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v14, v7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lmiui/net/http/HttpSession;->convertHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    const-string v8, "content-range"

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lmiui/net/http/HttpSession$CountingInputStream;

    move-object/from16 v8, v20

    move-object/from16 v9, v17

    move-wide v10, v14

    move-object/from16 v12, v19

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lmiui/net/http/HttpSession$CountingInputStream;-><init>(Ljava/io/InputStream;JLjava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V

    move-object/from16 v3, v20

    if-eqz v7, :cond_b0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    :cond_b0
    if-eqz v16, :cond_c9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v9

    const-string v16, ""

    move-object/from16 v8, v16

    goto :goto_cb

    :cond_c9
    move-object/from16 v8, v16

    :cond_cb
    :goto_cb
    new-instance v20, Lmiui/net/http/DefaultHttpResponse;

    move-object/from16 v9, v20

    move v10, v5

    move-object/from16 v11, v18

    move-object v12, v3

    move-wide/from16 v21, v14

    move-wide/from16 v13, v21

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    :try_start_dd
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lmiui/net/http/HttpSession;->putCacheEntry(Ljava/lang/String;Lmiui/net/http/DefaultHttpResponse;)V
    :try_end_ec
    .catch Ljava/net/URISyntaxException; {:try_start_dd .. :try_end_ec} :catch_ed

    goto :goto_f7

    :catch_ed
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "HttpSession"

    invoke-static {v11, v10}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f7
    move-object v0, v9

    :goto_f8
    return-object v0

    :cond_f9
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private executeGet(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lmiui/net/http/HttpSession;->getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/net/http/HttpSession;->getCacheEntry(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-wide v2, v1, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    new-instance v2, Lmiui/net/http/DefaultHttpResponse;

    const/16 v4, 0xc8

    iget-object v5, v1, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v6, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v7, v1, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v9, v1, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v10, v1, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lmiui/net/http/DefaultHttpResponse;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2f

    iget-wide v3, v1, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v5, v1, Lmiui/net/http/Cache$Entry;->length:J

    invoke-interface {p3, v3, v4, v5, v6}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    :cond_2f
    return-object v2

    :cond_30
    if-eqz p3, :cond_37

    const-wide/16 v2, -0x1

    invoke-interface {p3, v2, v3, v2, v3}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    :cond_37
    if-eqz v1, :cond_3c

    invoke-direct {p0, v1}, Lmiui/net/http/HttpSession;->addCacheHeaders(Lmiui/net/http/Cache$Entry;)V

    :cond_3c
    iget-object v2, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    const-string v3, "Accept-Encoding"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    const-string v4, "gzip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget-object v2, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    :goto_4f
    if-eqz v2, :cond_58

    :try_start_51
    invoke-interface {v2}, Lmiui/net/http/RetryStrategy;->getCurrentTimeout()I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/net/http/HttpSession;->setTimeout(I)V

    :cond_58
    invoke-direct {p0, p1, v1, p3}, Lmiui/net/http/HttpSession;->executeGet(Ljava/lang/String;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v3
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5c} :catch_68
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_5c} :catch_5d

    return-object v3

    :catch_5d
    move-exception v3

    if-eqz v2, :cond_67

    invoke-interface {v2, v3}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_67

    goto :goto_71

    :cond_67
    throw v3

    :catch_68
    move-exception v3

    if-eqz v2, :cond_72

    invoke-interface {v2, v3}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_72

    :goto_71
    goto :goto_4f

    :cond_72
    throw v3
.end method

.method private getCacheEntry(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;
    .registers 5

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/net/http/Cache;->get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object v2

    return-object v2
.end method

.method public static getDefault()Lmiui/net/http/HttpSession;
    .registers 1

    new-instance v0, Lmiui/net/http/HttpSession;

    invoke-direct {v0}, Lmiui/net/http/HttpSession;-><init>()V

    return-object v0
.end method

.method private static getUrlWithQueryString(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3f

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3f

    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3f
    :goto_3f
    return-object p0
.end method

.method private putCacheEntry(Ljava/lang/String;Lmiui/net/http/DefaultHttpResponse;)V
    .registers 8

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p2}, Lmiui/net/http/HttpHeaderParser;->parseCacheHeaders(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1, v1}, Lmiui/net/http/Cache;->put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v3, v1, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {p2, v2, v3, v4}, Lmiui/net/http/DefaultHttpResponse;->setContent(Ljava/io/InputStream;J)V

    :cond_18
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mClientHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearCacheContent()V
    .registers 2

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/net/http/Cache;->clear()V

    :cond_7
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public download(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lmiui/net/http/HttpSession;->addRequestHeaders(Ljava/util/Map;)V

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/http/HttpSession;->mClientParams:Ljava/lang/String;

    :cond_b
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    invoke-virtual {p0, v3, v2}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4, p5}, Lmiui/net/http/HttpSession;->executeGet(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_38
    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "content-range"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_81

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v6

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v6, 0x1000

    new-array v6, v6, [B

    :goto_6c
    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_7d

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_6c

    :cond_7d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_91

    :cond_81
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v4}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catchall {:try_start_38 .. :try_end_91} :catchall_9c

    :goto_91
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->release()V

    nop

    return-void

    :catchall_9c
    move-exception v5

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->release()V

    throw v5
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lmiui/net/http/HttpSession;->addRequestHeaders(Ljava/util/Map;)V

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/http/HttpSession;->mClientParams:Ljava/lang/String;

    :cond_b
    invoke-direct {p0, p1, p3, p4}, Lmiui/net/http/HttpSession;->executeGet(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/DefaultHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeCacheContent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiui/net/http/Cache;->remove(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCache(Lmiui/net/http/Cache;)V
    .registers 3

    iget-object v0, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    if-eq v0, p1, :cond_6

    iput-object p1, p0, Lmiui/net/http/HttpSession;->mCache:Lmiui/net/http/Cache;

    :cond_6
    return-void
.end method

.method public setRetryStrategy(Lmiui/net/http/RetryStrategy;)V
    .registers 2

    iput-object p1, p0, Lmiui/net/http/HttpSession;->mRetryStrategy:Lmiui/net/http/RetryStrategy;

    return-void
.end method

.method public setTimeout(I)V
    .registers 2

    iput p1, p0, Lmiui/net/http/HttpSession;->mTimeout:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
