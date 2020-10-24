.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# instance fields
.field private final duration:I

.field private final isCrossFadeEnabled:Z

.field private resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    iput-boolean p2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    return-void
.end method

.method private getResourceTransition()Lcom/bumptech/glide/request/transition/Transition;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    iget v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;-><init>(IZ)V

    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    return-object p0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .locals 0

    sget-object p2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->get()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->getResourceTransition()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p0

    :goto_0
    return-object p0
.end method
