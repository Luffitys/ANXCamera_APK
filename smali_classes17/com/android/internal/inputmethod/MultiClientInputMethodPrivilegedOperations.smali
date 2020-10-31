.class public Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;
.super Ljava/lang/Object;
.source "MultiClientInputMethodPrivilegedOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiClientInputMethodPrivilegedOperations"


# instance fields
.field private final mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;-><init>(Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$1;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    return-void
.end method


# virtual methods
.method public acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public createInputMethodWindowToken(I)Landroid/os/IBinder;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    :try_start_a
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->createInputMethodWindowToken(I)Landroid/os/IBinder;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public deleteInputMethodWindowToken(Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->deleteInputMethodWindowToken(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->dispose()V

    return-void
.end method

.method public isUidAllowedOnDisplay(II)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    :try_start_a
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->isUidAllowedOnDisplay(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v1

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reportImeWindowTarget(IILandroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->reportImeWindowTarget(IILandroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public set(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->set(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V

    return-void
.end method

.method public setActive(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->setActive(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
