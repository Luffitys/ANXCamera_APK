.class public final Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;
.super Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;
.source "CancellationGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/CancellationGroup$Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Int"
.end annotation


# instance fields
.field private mValue:I


# direct methods
.method private constructor <init>(Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;-><init>(Lcom/android/internal/inputmethod/CancellationGroup;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/inputmethod/CancellationGroup;Lcom/android/internal/inputmethod/CancellationGroup$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;-><init>(Lcom/android/internal/inputmethod/CancellationGroup;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic await(ILjava/util/concurrent/TimeUnit;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->await(ILjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public getValue()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mValueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mHasValue:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mValue:I

    monitor-exit v0

    return v1

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

.method onComplete(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mValueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mHasValue:Z

    if-nez v1, :cond_11

    iput p1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mValue:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->mHasValue:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1a

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->onComplete()V

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
