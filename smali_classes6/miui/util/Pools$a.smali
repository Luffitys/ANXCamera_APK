.class abstract Lmiui/util/Pools$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cG:Ljava/lang/Object;

.field private final mManager:Lmiui/util/Pools$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Manager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mSize:I

.field private nS:Lmiui/util/Pools$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/util/Pools$Manager;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiui/util/h;

    invoke-direct {v0, p0}, Lmiui/util/h;-><init>(Lmiui/util/Pools$a;)V

    iput-object v0, p0, Lmiui/util/Pools$a;->cG:Ljava/lang/Object;

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    if-lt p2, v0, :cond_31

    .line 3
    iput-object p1, p0, Lmiui/util/Pools$a;->mManager:Lmiui/util/Pools$Manager;

    .line 4
    iput p2, p0, Lmiui/util/Pools$a;->mSize:I

    .line 5
    iget-object p1, p0, Lmiui/util/Pools$a;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {p1}, Lmiui/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p2}, Lmiui/util/Pools$a;->b(Ljava/lang/Class;I)Lmiui/util/Pools$b;

    move-result-object p2

    iput-object p2, p0, Lmiui/util/Pools$a;->nS:Lmiui/util/Pools$b;

    .line 8
    invoke-virtual {p0, p1}, Lmiui/util/Pools$a;->doRelease(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "manager create instance cannot return null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_31
    iget-object p1, p0, Lmiui/util/Pools$a;->cG:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lmiui/util/Pools$a;->mSize:I

    .line 11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "manager cannot be null and size cannot less then 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method abstract a(Lmiui/util/Pools$b;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$b<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public acquire()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiui/util/Pools$a;->doAcquire()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method abstract b(Ljava/lang/Class;I)Lmiui/util/Pools$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiui/util/Pools$b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/util/Pools$a;->nS:Lmiui/util/Pools$b;

    if-eqz v0, :cond_c

    .line 2
    iget v1, p0, Lmiui/util/Pools$a;->mSize:I

    invoke-virtual {p0, v0, v1}, Lmiui/util/Pools$a;->a(Lmiui/util/Pools$b;I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiui/util/Pools$a;->nS:Lmiui/util/Pools$b;

    :cond_c
    return-void
.end method

.method protected final doAcquire()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiui/util/Pools$a;->nS:Lmiui/util/Pools$b;

    if-eqz v0, :cond_21

    .line 2
    invoke-interface {v0}, Lmiui/util/Pools$b;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 3
    iget-object v0, p0, Lmiui/util/Pools$a;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {v0}, Lmiui/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 4
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "manager create instance cannot return null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1b
    :goto_1b
    iget-object p0, p0, Lmiui/util/Pools$a;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {p0, v0}, Lmiui/util/Pools$Manager;->onAcquire(Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot acquire object after close()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final doRelease(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiui/util/Pools$a;->nS:Lmiui/util/Pools$b;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lmiui/util/Pools$a;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {v0, p1}, Lmiui/util/Pools$Manager;->onRelease(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lmiui/util/Pools$a;->nS:Lmiui/util/Pools$b;

    invoke-interface {v0, p1}, Lmiui/util/Pools$b;->put(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4
    iget-object p0, p0, Lmiui/util/Pools$a;->mManager:Lmiui/util/Pools$Manager;

    invoke-virtual {p0, p1}, Lmiui/util/Pools$Manager;->onDestroy(Ljava/lang/Object;)V

    :cond_19
    return-void

    .line 5
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot release object after close()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/util/Pools$a;->nS:Lmiui/util/Pools$b;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget p0, p0, Lmiui/util/Pools$a;->mSize:I

    :goto_8
    return p0
.end method

.method public release(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lmiui/util/Pools$a;->doRelease(Ljava/lang/Object;)V

    return-void
.end method
