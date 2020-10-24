.class final Lcom/bumptech/glide/load/engine/LockedResource$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/LockedResource;
    .locals 0

    new-instance p0, Lcom/bumptech/glide/load/engine/LockedResource;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/LockedResource;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/LockedResource$1;->create()Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object p0

    return-object p0
.end method
