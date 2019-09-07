.class final Lcom/bumptech/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    }
.end annotation


# static fields
.field private static final se:I = 0x1


# instance fields
.field private final Sb:Z

.field final activeEngineResources:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private listener:Lcom/bumptech/glide/load/engine/u$a;

.field private final pa:Landroid/os/Handler;

.field private pe:Ljava/lang/ref/ReferenceQueue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;>;"
        }
    .end annotation
.end field

.field private qe:Ljava/lang/Thread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile re:Z


# direct methods
.method constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/a;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/engine/a;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->pa:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->Sb:Z

    return-void
.end method

.method private dk()Ljava/lang/ref/ReferenceQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->pe:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->pe:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bumptech/glide/load/engine/b;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    const-string v2, "glide-active-resources"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->qe:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->qe:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->pe:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .locals 4
    .param p1    # Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/bumptech/glide/util/l;->Ih()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->yf:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/A;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/engine/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/bumptech/glide/load/engine/u;-><init>(Lcom/bumptech/glide/load/engine/A;ZZ)V

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/u$a;

    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/load/engine/u;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u$a;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/u$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/c;

    invoke-interface {p0, p1, v1}, Lcom/bumptech/glide/load/engine/u$a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/bumptech/glide/load/engine/u$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/u$a;

    return-void
.end method

.method b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/u;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/u;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->a(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    :cond_1
    return-object v0
.end method

.method b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->dk()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->Sb:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V

    :cond_0
    return-void
.end method

.method bg()V
    .locals 3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->re:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->pe:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->pa:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;->y()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method d(Lcom/bumptech/glide/load/c;)V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V

    :cond_0
    return-void
.end method

.method setDequeuedResourceCallback(Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    return-void
.end method

.method shutdown()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->re:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->qe:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->qe:Ljava/lang/Thread;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->qe:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to join in time"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
