.class public interface abstract Lcom/bumptech/glide/load/engine/a/o;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/o$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/A;
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
.end method

.method public abstract a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;
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
.end method

.method public abstract a(F)V
.end method

.method public abstract a(Lcom/bumptech/glide/load/engine/a/o$a;)V
    .param p1    # Lcom/bumptech/glide/load/engine/a/o$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract aa()V
.end method

.method public abstract da()J
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract trimMemory(I)V
.end method
