.class public final Lcom/bumptech/glide/load/resource/bitmap/h;
.super Lcom/bumptech/glide/n;
.source "BitmapTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/n<",
        "Lcom/bumptech/glide/load/resource/bitmap/h;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/n;-><init>()V

    return-void
.end method

.method public static Yf()Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/h;->Xf()Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/a/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/h;->a(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/request/a/c;)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/h;->a(Lcom/bumptech/glide/request/a/c;)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/h;

    return-object p0
.end method

.method public static d(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/h;->c(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method

.method public static n(I)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/h;->m(I)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Xf()Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/h;->a(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a/c$a;->build()Lcom/bumptech/glide/request/a/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/h;->c(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/a/c;)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/h;->c(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/b;-><init>(Lcom/bumptech/glide/request/a/g;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/h;

    return-object p0
.end method

.method public m(I)Lcom/bumptech/glide/load/resource/bitmap/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/c$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/c$a;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/h;->a(Lcom/bumptech/glide/request/a/c$a;)Lcom/bumptech/glide/load/resource/bitmap/h;

    move-result-object p0

    return-object p0
.end method
