.class final Lcom/bumptech/glide/load/engine/d;
.super Ljava/lang/Object;
.source "DataCacheKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# instance fields
.field private final signature:Lcom/bumptech/glide/load/c;

.field private final we:Lcom/bumptech/glide/load/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/d;->we:Lcom/bumptech/glide/load/c;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/d;->signature:Lcom/bumptech/glide/load/c;

    return-void
.end method


# virtual methods
.method cg()Lcom/bumptech/glide/load/c;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/d;->we:Lcom/bumptech/glide/load/c;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/engine/d;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->we:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/d;->we:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/d;->signature:Lcom/bumptech/glide/load/c;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/d;->signature:Lcom/bumptech/glide/load/c;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->we:Lcom/bumptech/glide/load/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/d;->signature:Lcom/bumptech/glide/load/c;

    invoke-interface {p0}, Lcom/bumptech/glide/load/c;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/d;->we:Lcom/bumptech/glide/load/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/d;->signature:Lcom/bumptech/glide/load/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->we:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/d;->signature:Lcom/bumptech/glide/load/c;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
