.class public Lcom/bumptech/glide/load/a/a/c;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/a/c$a;,
        Lcom/bumptech/glide/load/a/a/c$b;
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
.field private static final TAG:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final le:Landroid/net/Uri;

.field private final me:Lcom/bumptech/glide/load/a/a/e;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/e;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/a/a/c;->le:Landroid/net/Uri;

    iput-object p2, p0, Lcom/bumptech/glide/load/a/a/c;->me:Lcom/bumptech/glide/load/a/a/e;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;
    .locals 3

    invoke-static {p0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->V()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/a/a/e;

    invoke-static {p0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/c;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->Gf()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lcom/bumptech/glide/load/a/a/e;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/a/a/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Landroid/content/ContentResolver;)V

    new-instance p0, Lcom/bumptech/glide/load/a/a/c;

    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/load/a/a/c;-><init>(Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/e;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/a/c;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/a/a/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/a/a/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/a/c;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/a/a/c$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/a/a/c$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/a/d;)Lcom/bumptech/glide/load/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method private ck()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/a/a/c;->me:Lcom/bumptech/glide/load/a/a/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/a/c;->le:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/a/a/e;->h(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/a/a/c;->me:Lcom/bumptech/glide/load/a/a/e;

    iget-object p0, p0, Lcom/bumptech/glide/load/a/a/c;->le:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Lcom/bumptech/glide/load/a/a/e;->g(Landroid/net/Uri;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eq p0, v1, :cond_1

    new-instance v1, Lcom/bumptech/glide/load/a/h;

    invoke-direct {v1, v0, p0}, Lcom/bumptech/glide/load/a/h;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :cond_1
    return-object v0
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
    .locals 1
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

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/a/a/c;->ck()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/a/a/c;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/bumptech/glide/load/a/a/c;->inputStream:Ljava/io/InputStream;

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string v0, "MediaStoreThumbFetcher"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Failed to find thumbnail file"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/a/d$a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/a/a/c;->inputStream:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public r()Lcom/bumptech/glide/load/DataSource;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method
