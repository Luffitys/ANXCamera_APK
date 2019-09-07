.class public Lcom/bumptech/glide/load/engine/a/p;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/o;


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/a/o$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 0

    return-void
.end method

.method public J()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/A;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/p;->listener:Lcom/bumptech/glide/load/engine/a/o$a;

    invoke-interface {p0, p2}, Lcom/bumptech/glide/load/engine/a/o$a;->b(Lcom/bumptech/glide/load/engine/A;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/o$a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/a/o$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/p;->listener:Lcom/bumptech/glide/load/engine/a/o$a;

    return-void
.end method

.method public getMaxSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public trimMemory(I)V
    .locals 0

    return-void
.end method
