.class public Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/ByteArrayLoader;

    new-instance v0, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;-><init>(Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;)V

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/model/ByteArrayLoader;-><init>(Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
