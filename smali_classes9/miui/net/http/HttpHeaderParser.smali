.class Lmiui/net/http/HttpHeaderParser;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "date"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lmiui/net/http/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const-string v3, "cache-control"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_7

    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v10, v3

    move-wide v11, v4

    :goto_1
    if-ge v8, v10, :cond_6

    aget-object v13, v3, v8

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "no-cache"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "no-store"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_3

    :cond_1
    const-string v14, "max-age="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v14, 0x8

    :try_start_0
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    const-string v14, "must-revalidate"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "proxy-revalidate"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    move-wide v11, v4

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-object v9

    :cond_6
    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    move-wide v11, v4

    :goto_4
    const-string v3, "expires"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-static {v3}, Lmiui/net/http/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_5

    :cond_8
    move-wide v13, v4

    :goto_5
    const-string v3, "etag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    move-object v2, v9

    :goto_6
    if-eqz v8, :cond_a

    const-wide/16 v3, 0x3e8

    mul-long/2addr v11, v3

    add-long/2addr v0, v11

    goto :goto_7

    :cond_a
    cmp-long v3, v6, v4

    if-lez v3, :cond_b

    cmp-long v3, v13, v6

    if-ltz v3, :cond_b

    sub-long/2addr v13, v6

    add-long/2addr v0, v13

    :goto_7
    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v3, Lmiui/net/http/Cache$Entry;

    invoke-direct {v3}, Lmiui/net/http/Cache$Entry;-><init>()V

    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getContentLength()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/Cache$Entry;->length:J

    iput-object v2, v3, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iput-wide v0, v3, Lmiui/net/http/Cache$Entry;->softTtl:J

    iput-wide v0, v3, Lmiui/net/http/Cache$Entry;->ttl:J

    iput-wide v6, v3, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-interface {p0}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    iput-object p0, v3, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v3

    :cond_b
    return-object v9
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lmiui/net/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
