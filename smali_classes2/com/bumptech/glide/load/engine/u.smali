.class Lcom/bumptech/glide/load/engine/u;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/A;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/A<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final Kf:Z

.field private Lf:I

.field private key:Lcom/bumptech/glide/load/c;

.field private listener:Lcom/bumptech/glide/load/engine/u$a;

.field private final resource:Lcom/bumptech/glide/load/engine/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final yf:Z

.field private za:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/A;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/engine/A;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/u;->resource:Lcom/bumptech/glide/load/engine/A;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/u;->yf:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/u;->Kf:Z

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/u;->key:Lcom/bumptech/glide/load/c;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/u;->listener:Lcom/bumptech/glide/load/engine/u$a;

    return-void
.end method

.method acquire()V
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/u;->za:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/u;->Lf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/u;->Lf:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Must call acquire on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot acquire a recycled resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/u;->resource:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/u;->resource:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->getSize()I

    move-result p0

    return p0
.end method

.method public recycle()V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/u;->Lf:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/u;->za:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/u;->za:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/u;->Kf:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/u;->resource:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->recycle()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot recycle a resource that has already been recycled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot recycle a resource while it is still acquired"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method release()V
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/u;->Lf:I

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/load/engine/u;->Lf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/u;->Lf:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/u;->listener:Lcom/bumptech/glide/load/engine/u$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->key:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/engine/u$a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Must call release on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method tg()Lcom/bumptech/glide/load/engine/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/u;->resource:Lcom/bumptech/glide/load/engine/A;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/u;->yf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->listener:Lcom/bumptech/glide/load/engine/u$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/u;->key:Lcom/bumptech/glide/load/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/u;->Lf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/u;->za:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/u;->resource:Lcom/bumptech/glide/load/engine/A;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method ug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/u;->yf:Z

    return p0
.end method

.method public z()Ljava/lang/Class;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/u;->resource:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->z()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
