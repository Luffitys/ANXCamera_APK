.class public Lcom/bumptech/glide/load/a/k;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/k$a;,
        Lcom/bumptech/glide/load/a/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/a/k$b;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HttpUrlFetcher"

.field private static final Wd:I = 0x5

.field private static final Xd:I = -0x1


# instance fields
.field private final Td:Lcom/bumptech/glide/load/model/l;

.field private final Ud:Lcom/bumptech/glide/load/a/k$b;

.field private volatile Vd:Z

.field private stream:Ljava/io/InputStream;

.field private final timeout:I

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/a/k$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/k$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/a/k;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/a/k$b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/l;I)V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/a/k;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/a/k$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/a/k;-><init>(Lcom/bumptech/glide/load/model/l;ILcom/bumptech/glide/load/a/k$b;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/model/l;ILcom/bumptech/glide/load/a/k$b;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/a/k;->Td:Lcom/bumptech/glide/load/model/l;

    iput p2, p0, Lcom/bumptech/glide/load/a/k;->timeout:I

    iput-object p3, p0, Lcom/bumptech/glide/load/a/k;->Ud:Lcom/bumptech/glide/load/a/k$b;

    return-void
.end method

.method private static N(I)Z
    .locals 1

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static O(I)Z
    .locals 1

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/util/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/a/k;->stream:Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "HttpUrlFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got non empty content encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/a/k;->stream:Ljava/io/InputStream;

    :goto_0
    iget-object p0, p0, Lcom/bumptech/glide/load/a/k;->stream:Ljava/io/InputStream;

    return-object p0
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ge p2, v0, :cond_8

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/bumptech/glide/load/HttpException;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->Ud:Lcom/bumptech/glide/load/a/k$b;

    invoke-interface {p3, p1}, Lcom/bumptech/glide/load/a/k$b;->c(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/bumptech/glide/load/a/k;->timeout:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/bumptech/glide/load/a/k;->timeout:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/load/a/k;->stream:Ljava/io/InputStream;

    iget-boolean p3, p0, Lcom/bumptech/glide/load/a/k;->Vd:Z

    if-eqz p3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    invoke-static {p3}, Lcom/bumptech/glide/load/a/k;->N(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/a/k;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p3}, Lcom/bumptech/glide/load/a/k;->O(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p3, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/a/k;->cleanup()V

    add-int/2addr p2, v1

    invoke-direct {p0, v0, p2, p1, p4}, Lcom/bumptech/glide/load/a/k;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/bumptech/glide/load/HttpException;

    const-string p1, "Received empty or null redirect url"

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 p1, -0x1

    if-ne p3, p1, :cond_7

    new-instance p0, Lcom/bumptech/glide/load/HttpException;

    invoke-direct {p0, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    throw p0

    :cond_7
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    iget-object p0, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_8
    new-instance p0, Lcom/bumptech/glide/load/HttpException;

    const-string p1, "Too many (> 5) redirects!"

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public M()Ljava/lang/Class;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V
    .locals 8
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const-string p1, "Finished http url fetcher fetch in "

    const-string v0, "HttpUrlFetcher"

    invoke-static {}, Lcom/bumptech/glide/util/e;->Gh()J

    move-result-wide v1

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/a/k;->Td:Lcom/bumptech/glide/load/model/l;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/model/l;->toURL()Ljava/net/URL;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bumptech/glide/load/a/k;->Td:Lcom/bumptech/glide/load/model/l;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/model/l;->getHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/bumptech/glide/load/a/k;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v4, 0x3

    :try_start_1
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Failed to load data for url"

    invoke-static {v0, v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :goto_1
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw p0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/a/k;->Vd:Z

    return-void
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/a/k;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/k;->urlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public r()Lcom/bumptech/glide/load/DataSource;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method
