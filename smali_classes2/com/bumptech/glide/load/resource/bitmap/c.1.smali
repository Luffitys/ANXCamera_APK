.class public Lcom/bumptech/glide/load/resource/bitmap/c;
.super Lcom/bumptech/glide/load/b/b/b;
.source "BitmapDrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/b/b<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lcom/bumptech/glide/load/engine/v;"
    }
.end annotation


# instance fields
.field private final Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/b/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/b/b/b;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/util/l;->j(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/b/b/b;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iget-object p0, p0, Lcom/bumptech/glide/load/b/b/b;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a(Landroid/graphics/Bitmap;)V

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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method
