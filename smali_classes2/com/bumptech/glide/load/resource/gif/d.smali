.class public Lcom/bumptech/glide/load/resource/gif/d;
.super Lcom/bumptech/glide/load/b/b/b;
.source "GifDrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/b/b<",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        ">;",
        "Lcom/bumptech/glide/load/engine/v;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/b/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/b/b/b;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getSize()I

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/b/b/b;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->Z()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/b;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/b;->stop()V

    iget-object p0, p0, Lcom/bumptech/glide/load/b/b/b;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->recycle()V

    return-void
.end method

.method public z()Ljava/lang/Class;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/bumptech/glide/load/resource/gif/b;

    return-object p0
.end method
