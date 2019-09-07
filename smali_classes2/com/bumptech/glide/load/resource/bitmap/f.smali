.class public Lcom/bumptech/glide/load/resource/bitmap/f;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/A;
.implements Lcom/bumptech/glide/load/engine/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/A<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/bumptech/glide/load/engine/v;"
    }
.end annotation


# instance fields
.field private final Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/f;->bitmap:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/f;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/resource/bitmap/f;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/f;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/f;->get()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/f;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/bumptech/glide/util/l;->j(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/f;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/f;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/f;->bitmap:Landroid/graphics/Bitmap;

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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method
