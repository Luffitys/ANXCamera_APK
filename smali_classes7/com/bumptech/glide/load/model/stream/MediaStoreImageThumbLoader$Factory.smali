.class public Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
