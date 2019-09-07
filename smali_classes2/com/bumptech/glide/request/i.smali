.class public Lcom/bumptech/glide/request/i;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/d;
.implements Lcom/bumptech/glide/request/c;


# instance fields
.field private isRunning:Z

.field private final parent:Lcom/bumptech/glide/request/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private thumb:Lcom/bumptech/glide/request/c;

.field private ul:Lcom/bumptech/glide/request/c;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/i;-><init>(Lcom/bumptech/glide/request/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/d;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/i;->parent:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method private Lk()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->parent:Lcom/bumptech/glide/request/d;

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

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->parent:Lcom/bumptech/glide/request/d;

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

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->parent:Lcom/bumptech/glide/request/d;

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

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->parent:Lcom/bumptech/glide/request/d;

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


# virtual methods
.method public a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    iput-object p2, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/request/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/bumptech/glide/request/i;

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public b(Lcom/bumptech/glide/request/c;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->parent:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/request/c;)V

    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->isComplete()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->clear()V

    :cond_2
    return-void
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/i;->isRunning:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->begin()V

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/i;->isRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->begin()V

    :cond_1
    return-void
.end method

.method public c(Lcom/bumptech/glide/request/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->Mk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/i;->k()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/i;->isRunning:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->clear()V

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->clear()V

    return-void
.end method

.method public d(Lcom/bumptech/glide/request/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->Nk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->l()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e(Lcom/bumptech/glide/request/c;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->parent:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->e(Lcom/bumptech/glide/request/c;)V

    :cond_1
    return-void
.end method

.method public g(Lcom/bumptech/glide/request/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->Lk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isComplete()Z

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

.method public isFailed()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isFailed()Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isPaused()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->isRunning()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->Ok()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/i;->l()Z

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

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->l()Z

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

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/i;->isRunning:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->pause()V

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->pause()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->ul:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->recycle()V

    iget-object p0, p0, Lcom/bumptech/glide/request/i;->thumb:Lcom/bumptech/glide/request/c;

    invoke-interface {p0}, Lcom/bumptech/glide/request/c;->recycle()V

    return-void
.end method
