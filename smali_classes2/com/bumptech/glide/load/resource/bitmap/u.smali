.class public final Lcom/bumptech/glide/load/resource/bitmap/u;
.super Ljava/lang/Object;
.source "LazyBitmapDrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/A;
.implements Lcom/bumptech/glide/load/engine/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/A<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lcom/bumptech/glide/load/engine/v;"
    }
.end annotation


# instance fields
.field private final pj:Lcom/bumptech/glide/load/engine/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/A<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/A;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/engine/A<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->resources:Landroid/content/res/Resources;

    invoke-static {p2}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/bumptech/glide/load/engine/A;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->pj:Lcom/bumptech/glide/load/engine/A;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/engine/A<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/A<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/A;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/resource/bitmap/u;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->Cf()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/resource/bitmap/f;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/u;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/u;

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/resource/bitmap/u;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/resource/bitmap/f;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/u;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/u;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->resources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->pj:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/u;->get()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->pj:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->getSize()I

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->pj:Lcom/bumptech/glide/load/engine/A;

    instance-of v0, p0, Lcom/bumptech/glide/load/engine/v;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bumptech/glide/load/engine/v;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/v;->initialize()V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->pj:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->recycle()V

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
