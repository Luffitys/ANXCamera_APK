.class final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpsHolder"
.end annotation


# instance fields
.field private mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;-><init>()V

    return-void
.end method

.method private static getCallerMethodName()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_f

    const-string v1, "<bottom of call stack>"

    return-object v1

    :cond_f
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-nez v0, :cond_1f

    const-string v0, "InputMethodPrivilegedOperations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getCallerMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is ignored. Call it within attachToken() and InputMethodService.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IInputMethodPrivilegedOperations must be set at most once. privOps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
