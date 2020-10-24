.class public final Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;
.super Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Ljava/io/InputStream;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
