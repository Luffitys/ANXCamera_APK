.class public Lcom/airbnb/lottie/OooooOO;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static OooO0o0:Ljava/util/concurrent/Executor;


# instance fields
.field private final OooO00o:Ljava/util/Set;

.field private final OooO0O0:Ljava/util/Set;

.field private final OooO0OO:Landroid/os/Handler;

.field private volatile OooO0Oo:Lcom/airbnb/lottie/Ooooo00;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/OooooOO;->OooO0o0:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/OooooOO;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO00o:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0O0:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0OO:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/OooooOO;->OooOO0o(Lcom/airbnb/lottie/Ooooo00;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/OooooOO;->OooOO0o(Lcom/airbnb/lottie/Ooooo00;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/airbnb/lottie/OooooOO;->OooO0o0:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/airbnb/lottie/OooooO0;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/OooooO0;-><init>(Lcom/airbnb/lottie/OooooOO;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized OooO(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/OooooOO;->OooO00o:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/OoooOOo;

    invoke-interface {v1, p1}, Lcom/airbnb/lottie/OoooOOo;->OooO00o(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic OooO00o(Lcom/airbnb/lottie/OooooOO;)Lcom/airbnb/lottie/Ooooo00;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    return-object p0
.end method

.method static synthetic OooO0O0(Lcom/airbnb/lottie/OooooOO;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/OooooOO;->OooO(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic OooO0OO(Lcom/airbnb/lottie/OooooOO;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/OooooOO;->OooO0oO(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic OooO0Oo(Lcom/airbnb/lottie/OooooOO;Lcom/airbnb/lottie/Ooooo00;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/OooooOO;->OooOO0o(Lcom/airbnb/lottie/Ooooo00;)V

    return-void
.end method

.method private declared-synchronized OooO0oO(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/OooooOO;->OooO0O0:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Lottie encountered an error but no failure listener was added:"

    invoke-static {v0, p1}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/OoooOOo;

    invoke-interface {v1, p1}, Lcom/airbnb/lottie/OoooOOo;->OooO00o(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private OooO0oo()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0OO:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/lottie/Ooooo0o;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/Ooooo0o;-><init>(Lcom/airbnb/lottie/OooooOO;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private OooOO0o(Lcom/airbnb/lottie/Ooooo00;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/Ooooo00;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p0}, Lcom/airbnb/lottie/OooooOO;->OooO0oo()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A task may only be set once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized OooO0o(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Ooooo00;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Ooooo00;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/OoooOOo;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO00o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0o0(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Ooooo00;->OooO00o()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0Oo:Lcom/airbnb/lottie/Ooooo00;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Ooooo00;->OooO00o()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/OoooOOo;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0O0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOO0(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO0O0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOO0O(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/OooooOO;->OooO00o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
