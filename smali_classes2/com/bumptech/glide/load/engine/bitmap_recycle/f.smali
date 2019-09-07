.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/f;
.super Ljava/lang/Object;
.source "ByteArrayAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/a<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteArrayPool"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;->e([B)I

    move-result p0

    return p0
.end method

.method public e([B)I
    .locals 0

    array-length p0, p1

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ByteArrayPool"

    return-object p0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;->newArray(I)[B

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[B
    .locals 0

    new-array p0, p1, [B

    return-object p0
.end method
