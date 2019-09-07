.class Lcom/bumptech/glide/load/resource/bitmap/x$a;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final Zd:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

.field private final rj:Lcom/bumptech/glide/util/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lcom/bumptech/glide/util/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->Zd:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->rj:Lcom/bumptech/glide/util/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->rj:Lcom/bumptech/glide/util/c;

    invoke-virtual {p0}, Lcom/bumptech/glide/util/c;->getException()Ljava/io/IOException;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    throw p0

    :cond_1
    return-void
.end method

.method public t()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->Zd:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->Kj()V

    return-void
.end method
