.class public final Lcom/bumptech/glide/request/a;
.super Ljava/lang/Object;
.source "ErrorRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/d;
.implements Lcom/bumptech/glide/request/c;


# instance fields
.field private error:Lcom/bumptech/glide/request/c;

.field private final parent:Lcom/bumptech/glide/request/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private primary:Lcom/bumptech/glide/request/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/d;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->parent:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method private Lk()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->parent:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Mk()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->parent:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->c(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Nk()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->parent:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->d(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Ok()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->parent:Lcom/bumptech/glide/request/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/bumptech/glide/request/d;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j(Lcom/bumptech/glide/request/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    iput-object p2, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/request/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/request/a;

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    iget-object p1, p1, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b(Lcom/bumptech/glide/request/c;)V
    .locals 0

    iget-object p1, p0, Lcom/bumptech/glide/request/a;->parent:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/request/c;)V

    :cond_0
    return-void
.end method

.method public begin()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->begin()V

    :cond_0
    return-void
.end method

.method public c(Lcom/bumptech/glide/request/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->Mk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->j(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->clear()V

    :cond_0
    return-void
.end method

.method public d(Lcom/bumptech/glide/request/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->Nk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->j(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e(Lcom/bumptech/glide/request/c;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->begin()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->parent:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->e(Lcom/bumptech/glide/request/c;)V

    :cond_2
    return-void
.end method

.method public g(Lcom/bumptech/glide/request/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->Lk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->j(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    :goto_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    :goto_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isComplete()Z

    move-result p0

    return p0
.end method

.method public isFailed()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    :goto_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isPaused()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    :goto_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->Ok()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    :goto_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->l()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->pause()V

    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->primary:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->recycle()V

    iget-object p0, p0, Lcom/bumptech/glide/request/a;->error:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->recycle()V

    return-void
.end method
