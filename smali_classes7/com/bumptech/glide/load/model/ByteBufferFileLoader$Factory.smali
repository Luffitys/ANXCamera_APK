.class public Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;
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
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/bumptech/glide/load/model/ByteBufferFileLoader;

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader;-><init>()V

    return-object p0
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
