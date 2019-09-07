.class public Lcom/bumptech/glide/load/model/a/b$a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/u<",
        "Lcom/bumptech/glide/load/model/l;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final ni:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "Lcom/bumptech/glide/load/model/l;",
            "Lcom/bumptech/glide/load/model/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/a/b$a;->ni:Lcom/bumptech/glide/load/model/ModelCache;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/model/x;)Lcom/bumptech/glide/load/model/t;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/x;",
            ")",
            "Lcom/bumptech/glide/load/model/t<",
            "Lcom/bumptech/glide/load/model/l;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/model/a/b;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/a/b$a;->ni:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/a/b;-><init>(Lcom/bumptech/glide/load/model/ModelCache;)V

    return-object p1
.end method
