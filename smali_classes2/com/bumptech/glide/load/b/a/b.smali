.class public Lcom/bumptech/glide/load/b/a/b;
.super Ljava/lang/Object;
.source "BytesResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/A;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/A<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/b;->bytes:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/b;->get()[B

    move-result-object p0

    return-object p0
.end method

.method public get()[B
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/b/a/b;->bytes:[B

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/b/a/b;->bytes:[B

    array-length p0, p0

    return p0
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method public z()Ljava/lang/Class;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "[B>;"
        }
    .end annotation

    const-class p0, [B

    return-object p0
.end method
