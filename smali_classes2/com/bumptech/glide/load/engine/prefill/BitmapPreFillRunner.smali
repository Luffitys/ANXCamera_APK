.class final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$a;
    }
.end annotation


# static fields
.field static final Ah:J

.field static final INITIAL_BACKOFF_MS:J = 0x28L

.field static final MAX_DURATION_MS:J = 0x20L

.field static final TAG:Ljava/lang/String; = "PreFillRunner"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final yh:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field static final zh:I = 0x4


# instance fields
.field private final Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final Cb:Lcom/bumptech/glide/load/engine/a/o;

.field private Vd:Z

.field private final handler:Landroid/os/Handler;

.field private final uh:Lcom/bumptech/glide/load/engine/prefill/b;

.field private final vh:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field private final wh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/engine/prefill/c;",
            ">;"
        }
    .end annotation
.end field

.field private xh:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->yh:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Ah:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/prefill/b;)V
    .locals 6

    sget-object v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->yh:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/prefill/b;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/prefill/b;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->wh:Ljava/util/Set;

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->xh:J

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->uh:Lcom/bumptech/glide/load/engine/prefill/b;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->vh:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    return-void
.end method

.method private I()J
    .locals 6

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->xh:J

    const-wide/16 v2, 0x4

    mul-long/2addr v2, v0

    sget-wide v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Ah:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->xh:J

    return-wide v0
.end method

.method private i(J)Z
    .locals 2

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->vh:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x20

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private xk()J
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/o;->getMaxSize()J

    move-result-wide v0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/a/o;->J()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method allocate()Z
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->vh:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->uh:Lcom/bumptech/glide/load/engine/prefill/b;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/b;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->i(J)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->uh:Lcom/bumptech/glide/load/engine/prefill/b;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/b;->remove()Lcom/bumptech/glide/load/engine/prefill/c;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->wh:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->wh:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/bumptech/glide/util/l;->j(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->xk()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    new-instance v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$a;-><init>()V

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-static {v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/resource/bitmap/f;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Lcom/bumptech/glide/load/engine/a/o;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-interface {v5, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a(Landroid/graphics/Bitmap;)V

    :goto_2
    const/4 v3, 0x3

    const-string v5, "PreFillRunner"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Vd:Z

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->uh:Lcom/bumptech/glide/load/engine/prefill/b;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/b;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Vd:Z

    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->allocate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->I()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
