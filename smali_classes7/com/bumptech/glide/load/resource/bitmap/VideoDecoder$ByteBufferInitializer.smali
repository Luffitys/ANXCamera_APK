.class final Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialize(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->initialize(Landroid/media/MediaMetadataRetriever;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public initialize(Landroid/media/MediaMetadataRetriever;Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;

    invoke-direct {v0, p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method
