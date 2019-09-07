.class public Lcom/bumptech/glide/load/engine/a/n;
.super Lcom/bumptech/glide/util/f;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/f<",
        "Lcom/bumptech/glide/load/c;",
        "Lcom/bumptech/glide/load/engine/A<",
        "*>;>;",
        "Lcom/bumptech/glide/load/engine/a/o;"
    }
.end annotation


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/a/o$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/A;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/util/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/A;

    return-object p0
.end method

.method public bridge synthetic a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/util/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/A;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/o$a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/a/o$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/n;->listener:Lcom/bumptech/glide/load/engine/a/o$a;

    return-void
.end method

.method protected b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/A;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/n;->listener:Lcom/bumptech/glide/load/engine/a/o$a;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Lcom/bumptech/glide/load/engine/a/o$a;->b(Lcom/bumptech/glide/load/engine/A;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/c;

    check-cast p2, Lcom/bumptech/glide/load/engine/A;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/n;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/A;)V

    return-void
.end method

.method protected h(Lcom/bumptech/glide/load/engine/A;)I
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/bumptech/glide/util/f;->r(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/A;->getSize()I

    move-result p0

    return p0
.end method

.method protected bridge synthetic r(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/engine/A;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/a/n;->h(Lcom/bumptech/glide/load/engine/A;)I

    move-result p0

    return p0
.end method

.method public trimMemory(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/util/f;->G()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/util/f;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/f;->h(J)V

    :cond_2
    :goto_0
    return-void
.end method
