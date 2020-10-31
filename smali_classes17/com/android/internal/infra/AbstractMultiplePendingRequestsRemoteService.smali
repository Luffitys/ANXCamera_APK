.class public abstract Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.super Lcom/android/internal/infra/AbstractRemoteService;
.source "AbstractMultiplePendingRequestsRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;"
    }
.end annotation


# instance fields
.field private final mInitialCapacity:I

.field protected mPendingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V
    .registers 10
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
            "IZI)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/infra/AbstractRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    iput p9, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "initialCapacity="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    const/4 v0, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_24
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "pendingRequests="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method final handleBindFailure()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending requests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_3b

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v2}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    invoke-virtual {v2}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->finish()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    :cond_3e
    return-void
.end method

.method protected handleOnDestroy()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending requests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_38

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v2}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    :cond_3b
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

    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    :cond_d
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queued "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requests; last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method handlePendingRequests()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending requests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_38

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v2}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/ArrayList;

    :cond_3b
    return-void
.end method
