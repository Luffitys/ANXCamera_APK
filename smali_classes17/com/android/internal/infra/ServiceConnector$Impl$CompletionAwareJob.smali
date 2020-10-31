.class Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
.super Lcom/android/internal/infra/AndroidFuture;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletionAwareJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TR;>;",
        "Lcom/android/internal/infra/ServiceConnector$Job<",
        "TII;TR;>;",
        "Ljava/util/function/BiConsumer<",
        "TR;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field mAsync:Z

.field private mDebugName:Ljava/lang/String;

.field mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TII;TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/infra/ServiceConnector$Impl;


# direct methods
.method constructor <init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getRequestTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    :cond_19
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/StackTraceElement;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/internal/infra/ServiceConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_9

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z

    :goto_9
    return-void
.end method

.method public cancel(Z)Z
    .registers 4

    if-eqz p1, :cond_a

    const-string v0, "ServiceConnector.Impl"

    const-string/jumbo v1, "mayInterruptIfRunning not supported - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    # getter for: Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->access$000(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-super {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    return v1
.end method

.method protected onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    # getter for: Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->access$100(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    # invokes: Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V
    invoke-static {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->access$200(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    :cond_14
    return-void
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " wrapped into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/internal/infra/AndroidFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
