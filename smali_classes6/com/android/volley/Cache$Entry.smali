.class public Lcom/android/volley/Cache$Entry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public allResponseHeaders:Ljava/util/List;

.field public data:[B

.field public etag:Ljava/lang/String;

.field public lastModified:J

.field public responseHeaders:Ljava/util/Map;

.field public serverDate:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/volley/Cache$Entry;->ttl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public refreshNeeded()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/volley/Cache$Entry;->softTtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
