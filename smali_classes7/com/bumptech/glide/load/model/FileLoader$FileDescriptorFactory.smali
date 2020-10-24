.class public Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;
.super Lcom/bumptech/glide/load/model/FileLoader$Factory;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/FileLoader$Factory;-><init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    return-void
.end method
