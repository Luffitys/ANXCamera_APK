.class final Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;
.source "AbstractRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyAsyncPendingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
        "TS;TI;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRequest:Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->mRequest:Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->mRequest:Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;

    iget-object v2, v0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;->run(Landroid/os/IInterface;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_15
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->finish()Z

    goto :goto_36

    :catchall_13
    move-exception v1

    goto :goto_37

    :catch_15
    move-exception v1

    :try_start_16
    sget-object v2, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception handling async request ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_13

    nop

    goto :goto_f

    :goto_36
    return-void

    :goto_37
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->finish()Z

    throw v1
.end method
