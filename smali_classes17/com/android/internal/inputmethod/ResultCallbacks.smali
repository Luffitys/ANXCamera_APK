.class public final Lcom/android/internal/inputmethod/ResultCallbacks;
.super Ljava/lang/Object;
.source "ResultCallbacks.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/inputmethod/ResultCallbacks;->unwrap(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;)Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/internal/inputmethod/ResultCallbacks$2;

    invoke-direct {v1, v0}, Lcom/android/internal/inputmethod/ResultCallbacks$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v1
.end method

.method public static of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$ExtractedText;)Lcom/android/internal/inputmethod/IExtractedTextResultCallback$Stub;
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/internal/inputmethod/ResultCallbacks$3;

    invoke-direct {v1, v0}, Lcom/android/internal/inputmethod/ResultCallbacks$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v1
.end method

.method public static of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;)Lcom/android/internal/inputmethod/IIntResultCallback$Stub;
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/internal/inputmethod/ResultCallbacks$1;

    invoke-direct {v1, v0}, Lcom/android/internal/inputmethod/ResultCallbacks$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v1
.end method

.method private static unwrap(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    return-object v0
.end method
