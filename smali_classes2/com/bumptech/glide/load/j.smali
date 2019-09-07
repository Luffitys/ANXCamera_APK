.class public interface abstract Lcom/bumptech/glide/load/j;
.super Ljava/lang/Object;
.source "Transformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c;"
    }
.end annotation


# virtual methods
.method public abstract transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/A;II)Lcom/bumptech/glide/load/engine/A;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/A<",
            "TT;>;II)",
            "Lcom/bumptech/glide/load/engine/A<",
            "TT;>;"
        }
    .end annotation
.end method
