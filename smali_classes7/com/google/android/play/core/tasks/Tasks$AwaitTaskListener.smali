.class Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/tasks/Tasks$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method await()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method awaitTimeout(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
