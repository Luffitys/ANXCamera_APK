.class final Lcom/bumptech/glide/load/engine/z;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/A;
.implements Lcom/bumptech/glide/util/a/d$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/A<",
        "TZ;>;",
        "Lcom/bumptech/glide/util/a/d$c;"
    }
.end annotation


# static fields
.field private static final Rf:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/z<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private Qf:Lcom/bumptech/glide/load/engine/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final Re:Lcom/bumptech/glide/util/a/g;

.field private isLocked:Z

.field private za:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/engine/y;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/y;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/a/d;->b(ILcom/bumptech/glide/util/a/d$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/z;->Rf:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/util/a/g;->newInstance()Lcom/bumptech/glide/util/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/z;->Re:Lcom/bumptech/glide/util/a/g;

    return-void
.end method

.method static f(Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/z;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/z<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/engine/z;->Rf:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/z;

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/z;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/z;->i(Lcom/bumptech/glide/load/engine/A;)V

    return-object v0
.end method

.method private i(Lcom/bumptech/glide/load/engine/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/z;->za:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/z;->isLocked:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/z;->Qf:Lcom/bumptech/glide/load/engine/A;

    return-void
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/z;->Qf:Lcom/bumptech/glide/load/engine/A;

    sget-object v0, Lcom/bumptech/glide/load/engine/z;->Rf:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/z;->Qf:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/z;->Qf:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->getSize()I

    move-result p0

    return p0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/a/g;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/z;->Re:Lcom/bumptech/glide/util/a/g;

    return-object p0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/z;->za:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/z;->isLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->Qf:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/A;->recycle()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/z;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z;->Re:Lcom/bumptech/glide/util/a/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/g;->Mh()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/z;->isLocked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/z;->isLocked:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/z;->za:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/z;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/z;->Qf:Lcom/bumptech/glide/load/engine/A;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/A;->z()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
