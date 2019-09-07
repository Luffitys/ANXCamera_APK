.class public Lcom/bumptech/glide/load/b/d/d;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/d/e<",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/engine/A;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            ">;",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/engine/A<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lcom/bumptech/glide/load/b/a/b;

    invoke-static {p0}, Lcom/bumptech/glide/util/a;->e(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/b/a/b;-><init>([B)V

    return-object p1
.end method
