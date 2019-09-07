.class Lcom/bumptech/glide/load/engine/n;
.super Lcom/bumptech/glide/load/engine/o;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;)Z
    .locals 0

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->hq:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p0, :cond_1

    :cond_0
    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    if-ne p2, p0, :cond_2

    :cond_1
    sget-object p0, Lcom/bumptech/glide/load/EncodeStrategy;->nq:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne p3, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ng()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public og()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
