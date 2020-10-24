.class public final Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 0

    new-instance p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    return-object p0
.end method
