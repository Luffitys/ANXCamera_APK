.class public abstract Lcom/android/internal/infra/AbstractRemoteService;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;,
        Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field protected static final LAST_PRIVATE_MSG:I = 0x2

.field private static final MSG_BIND:I = 0x1

.field private static final MSG_UNBIND:I = 0x2

.field public static final PERMANENT_BOUND_TIMEOUT_MS:J


# instance fields
.field private mBinding:Z

.field private final mBindingFlags:I

.field private mCompleted:Z

.field protected final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field protected final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mNextUnbind:J

.field protected mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field protected final mTag:Ljava/lang/String;

.field private final mUnfinishedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field public final mVerbose:Z

.field private final mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V
    .registers 11
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$1;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    iput-boolean p8, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    iput-object p3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    iput p7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBinding:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/infra/AbstractRemoteService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBinding:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/infra/AbstractRemoteService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    return-void
.end method

.method private cancelScheduledUnbind()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private checkIfDestroyed()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not handling operation as service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return v0
.end method

.method private handleBinderDied()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    move-object v0, p0

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;->onServiceDied(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBindFailure()V

    return-void
.end method

.method private handleDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnDestroy()V

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return-void
.end method

.method private handleEnsureBound()V
    .registers 9

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBinding:Z

    if-eqz v0, :cond_b

    goto :goto_60

    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureBound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBinding:Z

    const v0, 0x4000001

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    or-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v6, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5f

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " using flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBinding:Z

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    if-nez v2, :cond_5f

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    :cond_5f
    return-void

    :cond_60
    :goto_60
    return-void
.end method

.method private handleEnsureUnbound()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBinding:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureUnbound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBinding:Z

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    :cond_30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind()V

    :cond_10
    return-void
.end method

.method private handleIsBound()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private handleOnConnectedStateChangedInternal(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChanged(Z)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequests()V

    :cond_8
    return-void
.end method

.method private handleUnbind()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    return-void
.end method

.method public static synthetic lambda$6FcEKfZ-7TXLg6dcCU8EMuMNAy4(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public static synthetic lambda$9IBVTCLLZgndvH7fu1P14PW1_1o(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleDestroy()V

    return-void
.end method

.method public static synthetic lambda$MDW40b8CzodE5xRowI9wDEyXEnw(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleUnbind()V

    return-void
.end method

.method public static synthetic lambda$YSUzqqi1Pbrg2dlwMGMtKWbGXck(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    return-void
.end method

.method public static synthetic lambda$ocrHd68Md9x6FfAzVQ6w8MAjFqY(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method private scheduleUnbind(Z)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_26

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not scheduling unbind when value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void

    :cond_26
    if-nez p1, :cond_2a

    const-wide/16 v0, 0x0

    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbinding in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$MDW40b8CzodE5xRowI9wDEyXEnw;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$MDW40b8CzodE5xRowI9wDEyXEnw;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$ocrHd68Md9x6FfAzVQ6w8MAjFqY;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$ocrHd68Md9x6FfAzVQ6w8MAjFqY;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$9IBVTCLLZgndvH7fu1P14PW1_1o;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$9IBVTCLLZgndvH7fu1P14PW1_1o;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 13

    const-string v0, "  "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "numUnfinishedRequests="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "bound="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v2

    if-eqz v1, :cond_c1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_bc

    const-string v4, " (unbind in : "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-wide v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, ")"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_c1

    :cond_bc
    const-string v4, " (permanently bound)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_c1
    :goto_c1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "mBindingFlags="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "idleTimeout="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v7, v2, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v7, "s\n"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string/jumbo v8, "requestTimeout="

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :try_start_f9
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getRemoteRequestMillis()J

    move-result-wide v8

    div-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_109
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f9 .. :try_end_109} :catch_10a

    goto :goto_111

    :catch_10a
    move-exception v4

    const-string/jumbo v5, "not supported\n"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_111
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$6FcEKfZ-7TXLg6dcCU8EMuMNAy4;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$6FcEKfZ-7TXLg6dcCU8EMuMNAy4;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getRemoteRequestMillis()J
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getServiceInterface()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    return-object v0
.end method

.method protected abstract getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation
.end method

.method protected abstract getTimeoutIdleBindMillis()J
.end method

.method abstract handleBindFailure()V
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .registers 2

    return-void
.end method

.method protected abstract handleOnDestroy()V
.end method

.method protected final handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_61

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    if-eqz v0, :cond_b

    goto :goto_61

    :cond_b
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequest(): queuing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    goto :goto_60

    :cond_32
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->run()V

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    :cond_60
    :goto_60
    return-void

    :cond_61
    :goto_61
    return-void
.end method

.method abstract handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation
.end method

.method abstract handlePendingRequests()V
.end method

.method public final isDestroyed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return v0
.end method

.method protected scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/internal/infra/-$$Lambda$EbzSql2RHkXox5Myj8A-7kLC4_A;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$EbzSql2RHkXox5Myj8A-7kLC4_A;

    invoke-static {v2, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected scheduleBind()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "scheduleBind(): already scheduled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$YSUzqqi1Pbrg2dlwMGMtKWbGXck;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$YSUzqqi1Pbrg2dlwMGMtKWbGXck;

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/infra/-$$Lambda$7-CJJfrUZBVuXZyYFEWBNh8Mky8;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$7-CJJfrUZBVuXZyYFEWBNh8Mky8;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected scheduleUnbind()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_2d

    const-string v1, " (bound)"

    goto :goto_2f

    :cond_2d
    const-string v1, " (unbound)"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz v1, :cond_39

    const-string v1, " (destroyed)"

    goto :goto_3b

    :cond_39
    const-string v1, ""

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
