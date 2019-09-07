.class Lcom/bumptech/glide/load/engine/DecodeJob$c;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Le:Lcom/bumptech/glide/load/engine/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/z<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private encoder:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private key:Lcom/bumptech/glide/load/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/engine/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/i<",
            "TX;>;",
            "Lcom/bumptech/glide/load/engine/z<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->key:Lcom/bumptech/glide/load/c;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->encoder:Lcom/bumptech/glide/load/i;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->Le:Lcom/bumptech/glide/load/engine/z;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/engine/DecodeJob$d;Lcom/bumptech/glide/load/g;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$d;->n()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->key:Lcom/bumptech/glide/load/c;

    new-instance v1, Lcom/bumptech/glide/load/engine/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->encoder:Lcom/bumptech/glide/load/i;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->Le:Lcom/bumptech/glide/load/engine/z;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/a;Ljava/lang/Object;Lcom/bumptech/glide/load/g;)V

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/engine/a/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/a/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->Le:Lcom/bumptech/glide/load/engine/z;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/z;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->Le:Lcom/bumptech/glide/load/engine/z;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/z;->unlock()V

    throw p1
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->key:Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->encoder:Lcom/bumptech/glide/load/i;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->Le:Lcom/bumptech/glide/load/engine/z;

    return-void
.end method

.method kg()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$c;->Le:Lcom/bumptech/glide/load/engine/z;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
