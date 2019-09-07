.class final Lcom/bumptech/glide/util/a/d$b;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Landroid/support/v4/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Lcom/bumptech/glide/util/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/a/d$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final fm:Lcom/bumptech/glide/util/a/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/a/d$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/d$a;Lcom/bumptech/glide/util/a/d$d;)V
    .locals 0
    .param p1    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/util/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/util/a/d$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "TT;>;",
            "Lcom/bumptech/glide/util/a/d$a<",
            "TT;>;",
            "Lcom/bumptech/glide/util/a/d$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/util/a/d$b;->pool:Landroid/support/v4/util/Pools$Pool;

    iput-object p2, p0, Lcom/bumptech/glide/util/a/d$b;->factory:Lcom/bumptech/glide/util/a/d$a;

    iput-object p3, p0, Lcom/bumptech/glide/util/a/d$b;->fm:Lcom/bumptech/glide/util/a/d$d;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/a/d$b;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/util/a/d$b;->factory:Lcom/bumptech/glide/util/a/d$a;

    invoke-interface {p0}, Lcom/bumptech/glide/util/a/d$a;->create()Ljava/lang/Object;

    move-result-object v0

    const/4 p0, 0x2

    const-string v1, "FactoryPools"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of p0, v0, Lcom/bumptech/glide/util/a/d$c;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Lcom/bumptech/glide/util/a/d$c;

    invoke-interface {p0}, Lcom/bumptech/glide/util/a/d$c;->getVerifier()Lcom/bumptech/glide/util/a/g;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/util/a/g;->u(Z)V

    :cond_1
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/util/a/d$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/util/a/d$c;

    invoke-interface {v0}, Lcom/bumptech/glide/util/a/d$c;->getVerifier()Lcom/bumptech/glide/util/a/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/a/g;->u(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/util/a/d$b;->fm:Lcom/bumptech/glide/util/a/d$d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/util/a/d$d;->reset(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/bumptech/glide/util/a/d$b;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
