.class public Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;
.super Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;
.source "CancellationGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/CancellationGroup$Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;-><init>(Lcom/android/internal/inputmethod/CancellationGroup;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic await(ILjava/util/concurrent/TimeUnit;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->await(ILjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mValueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mHasValue:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mValue:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getValue() is allowed only if hasValue() returns true"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public bridge synthetic hasValue()Z
    .registers 2

    invoke-super {p0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->hasValue()Z

    move-result v0

    return v0
.end method

.method onComplete(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mValueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mHasValue:Z

    if-nez v1, :cond_11

    iput-object p1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mValue:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->mHasValue:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1a

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->onComplete()V

    return-void

    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "onComplete() cannot be called multiple times"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v1
.end method
