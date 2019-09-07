.class Lcom/bumptech/glide/util/a/g$b;
.super Lcom/bumptech/glide/util/a/g;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private volatile Me:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/a/g;-><init>(Lcom/bumptech/glide/util/a/f;)V

    return-void
.end method


# virtual methods
.method public Mh()V
    .locals 1

    iget-boolean p0, p0, Lcom/bumptech/glide/util/a/g$b;->Me:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already released"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bumptech/glide/util/a/g$b;->Me:Z

    return-void
.end method
