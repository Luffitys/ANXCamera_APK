.class public Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;,
        Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/h<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/load/resource/gif/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final Lj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

.field private static final Mj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

.field private static final TAG:Ljava/lang/String; = "BufferGifDecoder"


# instance fields
.field private final Jj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

.field private final Kj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

.field private final context:Landroid/content/Context;

.field private final ne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lcom/bumptech/glide/load/resource/gif/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Lj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Mj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Registry;->Gf()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->Cf()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    move-result-object v1

    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/c;->V()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/b;",
            ")V"
        }
    .end annotation

    sget-object v5, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Mj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    sget-object v6, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Lj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/b;",
            "Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;",
            "Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->ne:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Kj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    new-instance p1, Lcom/bumptech/glide/load/resource/gif/a;

    invoke-direct {p1, p3, p4}, Lcom/bumptech/glide/load/resource/gif/a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Jj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/b/c;II)I
    .locals 4

    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->getHeight()I

    move-result v0

    div-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->getWidth()I

    move-result v1

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downsampling GIF, sampleSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target dimens: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->getWidth()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/b/d;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/resource/gif/d;
    .locals 16
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Decoded GIF from stream in "

    const-string v2, "BufferGifDecoder"

    invoke-static {}, Lcom/bumptech/glide/util/e;->Gh()J

    move-result-wide v3

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/b/d;->ag()Lcom/bumptech/glide/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/b/c;->getNumFrames()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_5

    invoke-virtual {v6}, Lcom/bumptech/glide/b/c;->getStatus()I

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v7, Lcom/bumptech/glide/load/resource/gif/g;->Yi:Lcom/bumptech/glide/load/f;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lcom/bumptech/glide/load/DecodeFormat;->mq:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v7, v9, :cond_1

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v14, p3

    move-object v9, v7

    move/from16 v7, p2

    invoke-static {v6, v7, v14}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->a(Lcom/bumptech/glide/b/c;II)I

    move-result v10

    iget-object v11, v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Kj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    iget-object v12, v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/a;

    move-object/from16 v13, p1

    invoke-virtual {v11, v12, v6, v13, v10}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;->a(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)Lcom/bumptech/glide/b/a;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/bumptech/glide/b/a;->a(Landroid/graphics/Bitmap$Config;)V

    invoke-interface {v11}, Lcom/bumptech/glide/b/a;->advance()V

    invoke-interface {v11}, Lcom/bumptech/glide/b/a;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v8

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/bumptech/glide/load/b/b;->get()Lcom/bumptech/glide/load/b/b;

    move-result-object v12

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/b;

    iget-object v10, v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->context:Landroid/content/Context;

    move-object v9, v6

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/j;IILandroid/graphics/Bitmap;)V

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/d;

    invoke-direct {v0, v6}, Lcom/bumptech/glide/load/resource/gif/d;-><init>(Lcom/bumptech/glide/load/resource/gif/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v8

    :catchall_0
    move-exception v0

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/e;->g(J)D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/resource/gif/d;
    .locals 7
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Jj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->d(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/b/d;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/b/d;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/resource/gif/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Jj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->a(Lcom/bumptech/glide/b/d;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->Jj:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->a(Lcom/bumptech/glide/b/d;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/g;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/g;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/g;)Z
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/gif/g;->Wj:Lcom/bumptech/glide/load/f;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->ne:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/b;->a(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->oq:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/engine/A;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/resource/gif/d;

    move-result-object p0

    return-object p0
.end method
