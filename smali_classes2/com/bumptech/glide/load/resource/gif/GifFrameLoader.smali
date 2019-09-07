.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$b;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;
    }
.end annotation


# instance fields
.field private final Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final Pj:Lcom/bumptech/glide/b/a;

.field private Qj:Z

.field private Rj:Z

.field private Sj:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private Tj:Z

.field private Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private Vf:Lcom/bumptech/glide/load/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private Vj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field final da:Lcom/bumptech/glide/m;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private final handler:Landroid/os/Handler;

.field private isRunning:Z

.field private next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/b/a;",
            "II",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->Cf()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->i(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->i(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/j;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/m;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/m;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/m;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->da:Lcom/bumptech/glide/m;

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$b;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Sj:Lcom/bumptech/glide/j;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static Ik()Lcom/bumptech/glide/load/c;
    .locals 3

    new-instance v0, Lcom/bumptech/glide/e/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/e/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private Jk()V
    .locals 5

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Qj:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Rj:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->s()V

    iput-boolean v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Rj:Z

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Qj:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->I()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->advance()V

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {v4}, Lcom/bumptech/glide/b/a;->v()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Sj:Lcom/bumptech/glide/j;

    invoke-static {}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Ik()Lcom/bumptech/glide/load/c;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/request/f;->h(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->load(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/request/target/o;)Lcom/bumptech/glide/request/target/o;

    :cond_4
    :goto_1
    return-void
.end method

.method private Kk()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private static b(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/m;",
            "II)",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/m;->Kf()Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/o;->NONE:Lcom/bumptech/glide/load/engine/o;

    invoke-static {v0}, Lcom/bumptech/glide/request/f;->b(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->s(Z)Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/f;->q(Z)Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/f;->l(II)Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method

.method private getFrameSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Gg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Gg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Gg()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/util/l;->g(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method

.method private start()V
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Tj:Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Jk()V

    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    return-void
.end method


# virtual methods
.method Gg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->tg()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0
.end method

.method Hg()V
    .locals 3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Rj:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->da:Lcom/bumptech/glide/m;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_0
    return-void
.end method

.method Z()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method a(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/j;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Vf:Lcom/bumptech/glide/load/j;

    invoke-static {p2}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Sj:Lcom/bumptech/glide/j;

    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/f;->c(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Sj:Lcom/bumptech/glide/j;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Tj:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->start()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot subscribe twice in a row"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method b(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    :cond_0
    return-void
.end method

.method ba()Lcom/bumptech/glide/load/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Vf:Lcom/bumptech/glide/load/j;

    return-object p0
.end method

.method clear()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Kk()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->da:Lcom/bumptech/glide/m;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->da:Lcom/bumptech/glide/m;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->da:Lcom/bumptech/glide/m;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Tj:Z

    return-void
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {p0}, Lcom/bumptech/glide/b/a;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method getCurrentIndex()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method getFrameCount()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {p0}, Lcom/bumptech/glide/b/a;->getFrameCount()I

    move-result p0

    return p0
.end method

.method getHeight()I
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Gg()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method getLoopCount()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {p0}, Lcom/bumptech/glide/b/a;->F()I

    move-result p0

    return p0
.end method

.method getSize()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Pj:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->x()I

    move-result v0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method getWidth()I
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Gg()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Vj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;->m()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Qj:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Tj:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Uj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->tg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Kk()V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;

    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$a;->m()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Jk()V

    return-void
.end method

.method setOnEveryFrameReadyListener(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->Vj:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    return-void
.end method
