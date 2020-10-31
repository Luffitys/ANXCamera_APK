.class public abstract Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;
.super Lcom/android/internal/infra/AbstractRemoteService;
.source "AbstractSinglePendingRequestRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;"
    }
.end annotation


# instance fields
.field protected mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/infra/AbstractRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "hasPendingRequest="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method handleBindFailure()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mVerbose:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending failure to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    :cond_28
    return-void
.end method

.method protected handleOnDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    :cond_a
    return-void
.end method

.method handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mVerbose:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequestWhileUnBound(): cancelling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    :cond_2d
    iput-object p1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    return-void
.end method

.method handlePendingRequests()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    :cond_c
    return-void
.end method
