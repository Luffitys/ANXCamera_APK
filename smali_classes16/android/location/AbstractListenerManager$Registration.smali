.class Landroid/location/AbstractListenerManager$Registration;
.super Ljava/lang/Object;
.source "AbstractListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/AbstractListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Registration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private mRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRequest;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Ljava/util/concurrent/Executor;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "invalid null listener/callback"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "invalid null executor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p2, p0, Landroid/location/AbstractListenerManager$Registration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/location/AbstractListenerManager$Registration;->mListener:Ljava/lang/Object;

    iput-object p1, p0, Landroid/location/AbstractListenerManager$Registration;->mRequest:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/location/AbstractListenerManager$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/location/AbstractListenerManager$Registration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-void
.end method

.method private accept(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/AbstractListenerManager$Registration;->mListener:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_9
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_11
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method static synthetic access$100(Landroid/location/AbstractListenerManager$Registration;)V
    .registers 1

    invoke-direct {p0}, Landroid/location/AbstractListenerManager$Registration;->unregister()V

    return-void
.end method

.method static synthetic access$200(Landroid/location/AbstractListenerManager$Registration;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/location/AbstractListenerManager$Registration;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private execute(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/AbstractListenerManager$Registration;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;->INSTANCE:Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$XpiThbVaDDpOnFWIkrt38Bf4yx0(Landroid/location/AbstractListenerManager$Registration;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/location/AbstractListenerManager$Registration;->accept(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private unregister()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/AbstractListenerManager$Registration;->mRequest:Ljava/lang/Object;

    iput-object v0, p0, Landroid/location/AbstractListenerManager$Registration;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRequest()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTRequest;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/AbstractListenerManager$Registration;->mRequest:Ljava/lang/Object;

    return-object v0
.end method
