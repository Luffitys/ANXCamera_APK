.class public Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;->build(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object p0

    return-object p0
.end method

.method public build(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/data/DataRewinder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method
