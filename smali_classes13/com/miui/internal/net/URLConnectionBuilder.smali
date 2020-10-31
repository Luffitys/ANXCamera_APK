.class public abstract Lcom/miui/internal/net/URLConnectionBuilder;
.super Ljava/lang/Object;
.source "URLConnectionBuilder.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "URLConnectionBuilder"


# instance fields
.field protected urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/internal/net/URLConnectionBuilder;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public build()Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public setConnectTimeout(I)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method public setDoInput(Z)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p0
.end method

.method public setDoInputOutput(Z)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/net/URLConnectionBuilder;->setDoInput(Z)Lcom/miui/internal/net/URLConnectionBuilder;

    invoke-virtual {p0, v0}, Lcom/miui/internal/net/URLConnectionBuilder;->setDoOutput(Z)Lcom/miui/internal/net/URLConnectionBuilder;

    return-object p0
.end method

.method public setDoOutput(Z)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p0
.end method

.method public setHeadParams(Ljava/util/Map;)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/internal/net/URLConnectionBuilder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_20
    return-object p0
.end method

.method public setReadTimeout(I)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public setRequestMethod(Ljava/lang/String;)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/net/URLConnectionBuilder;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeout(I)Lcom/miui/internal/net/URLConnectionBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/net/URLConnectionBuilder;->setConnectTimeout(I)Lcom/miui/internal/net/URLConnectionBuilder;

    invoke-virtual {p0, p1}, Lcom/miui/internal/net/URLConnectionBuilder;->setReadTimeout(I)Lcom/miui/internal/net/URLConnectionBuilder;

    return-object p0
.end method
