.class Lcom/android/internal/inputmethod/ResultCallbacks$2;
.super Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;
.source "ResultCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;)Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$atomicRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/inputmethod/ResultCallbacks$2;->val$atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/ResultCallbacks$2;->val$atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    # invokes: Lcom/android/internal/inputmethod/ResultCallbacks;->unwrap(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->access$000(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
