.class public Lcom/bumptech/glide/load/resource/bitmap/r;
.super Ljava/lang/Object;
.source "DrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final ij:Z

.field private final wa:Lcom/bumptech/glide/load/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/j;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->wa:Lcom/bumptech/glide/load/j;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->ij:Z

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/A<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/A<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/u;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Eg()Lcom/bumptech/glide/load/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/r;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/r;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->wa:Lcom/bumptech/glide/load/j;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/bitmap/r;->wa:Lcom/bumptech/glide/load/j;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->wa:Lcom/bumptech/glide/load/j;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/A;II)Lcom/bumptech/glide/load/engine/A;
    .locals 2
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
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/A<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->Cf()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    move-result-object v0

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/q;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/engine/A;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->ij:Z

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to convert "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to a Bitmap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->wa:Lcom/bumptech/glide/load/j;

    invoke-interface {v1, p1, v0, p3, p4}, Lcom/bumptech/glide/load/j;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/A;II)Lcom/bumptech/glide/load/engine/A;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/A;->recycle()V

    return-object p2

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/r;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->wa:Lcom/bumptech/glide/load/j;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
