.class public Lcom/bumptech/glide/load/model/i$e;
.super Lcom/bumptech/glide/load/model/i$a;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/i$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/model/k;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/k;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/i$a;-><init>(Lcom/bumptech/glide/load/model/i$d;)V

    return-void
.end method
