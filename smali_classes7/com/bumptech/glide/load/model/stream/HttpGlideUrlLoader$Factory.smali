.class public Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelCache;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
