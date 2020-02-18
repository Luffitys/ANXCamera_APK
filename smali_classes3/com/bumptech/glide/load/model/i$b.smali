.class public Lcom/bumptech/glide/load/model/i$b;
.super Lcom/bumptech/glide/load/model/i$a;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/i$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/model/j;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/j;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/i$a;-><init>(Lcom/bumptech/glide/load/model/i$d;)V

    return-void
.end method
