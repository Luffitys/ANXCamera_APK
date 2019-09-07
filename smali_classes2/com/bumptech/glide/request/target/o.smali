.class public interface abstract Lcom/bumptech/glide/request/target/o;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/bumptech/glide/manager/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/manager/j;"
    }
.end annotation


# static fields
.field public static final yr:I = -0x80000000


# virtual methods
.method public abstract a(Lcom/bumptech/glide/request/target/n;)V
    .param p1    # Lcom/bumptech/glide/request/target/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/a/f<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract b(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/bumptech/glide/request/target/n;)V
    .param p1    # Lcom/bumptech/glide/request/target/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract c(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract d(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f(Lcom/bumptech/glide/request/c;)V
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getRequest()Lcom/bumptech/glide/request/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
