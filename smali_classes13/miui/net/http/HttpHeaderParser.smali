.class Lmiui/net/http/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;
    .registers 21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v10

    const-string v11, "date"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1e

    invoke-static {v11}, Lmiui/net/http/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v3

    :cond_1e
    const-string v12, "cache-control"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v11, :cond_7f

    const/4 v13, 0x1

    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    const/4 v0, 0x0

    move-wide/from16 v16, v7

    move v7, v0

    :goto_36
    if-ge v7, v15, :cond_7c

    aget-object v0, v14, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v0, "no-cache"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "no-store"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_7b

    :cond_4f
    const-string v0, "max-age="

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x8

    :try_start_59
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_61} :catch_64

    move-wide/from16 v16, v18

    :goto_63
    goto :goto_78

    :catch_64
    move-exception v0

    goto :goto_63

    :cond_66
    const-string v0, "must-revalidate"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "proxy-revalidate"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_76
    const-wide/16 v16, 0x0

    :cond_78
    :goto_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_7b
    :goto_7b
    return-object v12

    :cond_7c
    move v0, v13

    move-wide/from16 v7, v16

    :cond_7f
    const-string v13, "expires"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_8e

    invoke-static {v11}, Lmiui/net/http/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v5

    :cond_8e
    const-string v13, "etag"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_9a

    move-object v9, v11

    :cond_9a
    if-eqz v0, :cond_a1

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v7

    add-long/2addr v13, v1

    goto :goto_ae

    :cond_a1
    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-lez v13, :cond_d7

    cmp-long v13, v5, v3

    if-ltz v13, :cond_d7

    sub-long v13, v5, v3

    add-long/2addr v13, v1

    :goto_ae
    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v15

    if-eqz v15, :cond_d6

    new-instance v12, Lmiui/net/http/Cache$Entry;

    invoke-direct {v12}, Lmiui/net/http/Cache$Entry;-><init>()V

    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v15

    iput-object v15, v12, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    move-wide v15, v1

    move v2, v0

    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getContentLength()J

    move-result-wide v0

    iput-wide v0, v12, Lmiui/net/http/Cache$Entry;->length:J

    iput-object v9, v12, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iput-wide v13, v12, Lmiui/net/http/Cache$Entry;->softTtl:J

    iput-wide v13, v12, Lmiui/net/http/Cache$Entry;->ttl:J

    iput-wide v3, v12, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-interface/range {p0 .. p0}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v12, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v12

    :cond_d6
    return-object v12

    :cond_d7
    move-wide v15, v1

    move v2, v0

    return-object v12
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .registers 4

    :try_start_0
    invoke-static {p0}, Lmiui/net/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method
