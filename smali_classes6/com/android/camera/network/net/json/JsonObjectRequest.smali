.class public Lcom/android/camera/network/net/json/JsonObjectRequest;
.super Lcom/android/volley/Request;
.source ""

# interfaces
.implements Lcom/android/camera/network/net/base/Cacheable;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private volatile mData:[B

.field private mHeaders:Ljava/util/Map;

.field private volatile mIsFromCache:Z

.field private mListener:Lcom/android/volley/Response$Listener;

.field private mParams:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mParams:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mData:[B

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mIsFromCache:Z

    iput-object p1, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mCacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mListener:Lcom/android/volley/Response$Listener;

    return-void
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object p0, v2, v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/json/JsonObjectRequest;->deliverResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected deliverResponse(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mCacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mData:[B

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isFromCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mIsFromCache:Z

    return p0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 3

    :try_start_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v1, "From-Cache"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mIsFromCache:Z

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object v0, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mData:[B

    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/android/camera/network/net/json/JsonObjectRequest;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/volley/ParseError;

    invoke-direct {p1, p0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/android/volley/ParseError;

    invoke-direct {p1, p0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/net/json/JsonObjectRequest;->mParams:Ljava/util/Map;

    return-void
.end method
