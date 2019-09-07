.class public final Lcom/bumptech/glide/load/engine/b/b;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/b$a;,
        Lcom/bumptech/glide/load/engine/b/b$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlideExecutor"

.field private static final hh:Ljava/lang/String; = "source"

.field private static final jh:Ljava/lang/String; = "disk-cache"

.field private static final kh:I = 0x1

.field private static final lh:Ljava/lang/String; = "source-unlimited"

.field private static final mh:Ljava/lang/String; = "animation"

.field private static final nh:J

.field private static final oh:I = 0x4

.field private static volatile qh:I


# instance fields
.field private final delegate:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/b/b;->nh:J

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static Ag()Lcom/bumptech/glide/load/engine/b/b;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/b/b$b;->DEFAULT:Lcom/bumptech/glide/load/engine/b/b$b;

    const/4 v1, 0x1

    const-string v2, "disk-cache"

    invoke-static {v1, v2, v0}, Lcom/bumptech/glide/load/engine/b/b;->a(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static Bg()Lcom/bumptech/glide/load/engine/b/b;
    .locals 3

    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->yg()I

    move-result v0

    sget-object v1, Lcom/bumptech/glide/load/engine/b/b$b;->DEFAULT:Lcom/bumptech/glide/load/engine/b/b$b;

    const-string v2, "source"

    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/load/engine/b/b;->b(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static Cg()Lcom/bumptech/glide/load/engine/b/b;
    .locals 10

    new-instance v0, Lcom/bumptech/glide/load/engine/b/b;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/engine/b/b;->nh:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/b$a;

    sget-object v1, Lcom/bumptech/glide/load/engine/b/b$b;->DEFAULT:Lcom/bumptech/glide/load/engine/b/b$b;

    const-string v2, "source-unlimited"

    const/4 v3, 0x0

    invoke-direct {v8, v2, v1, v3}, Lcom/bumptech/glide/load/engine/b/b$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/b;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a(ILcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;
    .locals 10

    new-instance v0, Lcom/bumptech/glide/load/engine/b/b;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/engine/b/b;->nh:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/b$a;

    const-string v1, "animation"

    const/4 v2, 0x1

    invoke-direct {v8, v1, p1, v2}, Lcom/bumptech/glide/load/engine/b/b$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;Z)V

    const/4 v2, 0x0

    move-object v1, v9

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/b;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;
    .locals 10

    new-instance v0, Lcom/bumptech/glide/load/engine/b/b;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/b$a;

    const/4 v1, 0x1

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/engine/b/b$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/b;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "disk-cache"

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/engine/b/b;->a(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static b(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;
    .locals 10

    new-instance v0, Lcom/bumptech/glide/load/engine/b/b;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/b$a;

    const/4 v1, 0x0

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/engine/b/b$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/b;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static b(Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->yg()I

    move-result v0

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/engine/b/b;->b(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static yg()I
    .locals 2

    sget v0, Lcom/bumptech/glide/load/engine/b/b;->qh:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {}, Lcom/bumptech/glide/load/engine/b/g;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/engine/b/b;->qh:I

    :cond_0
    sget v0, Lcom/bumptech/glide/load/engine/b/b;->qh:I

    return v0
.end method

.method public static zg()Lcom/bumptech/glide/load/engine/b/b;
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->yg()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/bumptech/glide/load/engine/b/b$b;->DEFAULT:Lcom/bumptech/glide/load/engine/b/b$b;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/b/b;->a(ILcom/bumptech/glide/load/engine/b/b$b;)Lcom/bumptech/glide/load/engine/b/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isShutdown()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    return p0
.end method

.method public isTerminated()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    return p0
.end method

.method public shutdown()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/b/b;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
