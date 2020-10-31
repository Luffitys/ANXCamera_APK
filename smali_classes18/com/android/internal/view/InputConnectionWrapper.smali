.class public Lcom/android/internal/view/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "InputConnectionWrapper"


# instance fields
.field private final mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private final mInputMethodService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field private final mMissingMethods:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;ILcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;",
            "Lcom/android/internal/view/IInputContext;",
            "I",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iput p3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    iput-object p4, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method

.method private static getResultOrNull(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x7d0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->await(ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_13
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->logInternal(Ljava/lang/String;ZLjava/lang/Object;)V

    return-object v1
.end method

.method private static getResultOrZero(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;Ljava/lang/String;)I
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x7d0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->await(ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;->getValue()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/internal/view/InputConnectionWrapper;->logInternal(Ljava/lang/String;ZLjava/lang/Object;)V

    return v1
.end method

.method private isMethodMissing(I)Z
    .registers 3

    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static logInternal(Ljava/lang/String;ZLjava/lang/Object;)V
    .registers 6

    const-string v0, "InputConnectionWrapper"

    if-eqz p1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " didn\'t respond in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msec. Returning default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was canceled before complete. Returning default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method

.method private notifyUserActionIfNecessary()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Landroid/inputmethodservice/AbstractInputMethodService;->notifyUserActionIfNecessary()V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public closeConnection()V
    .registers 1

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    const/4 v0, 0x1

    return v0

    :catch_10
    move-exception v0

    return v1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService;

    if-nez v0, :cond_22

    return v1

    :cond_22
    invoke-virtual {v0, p1, p0}, Landroid/inputmethodservice/AbstractInputMethodService;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    :cond_25
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->createCompletableInt()Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;

    move-result-object v0

    :try_start_2b
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;)Lcom/android/internal/inputmethod/IIntResultCallback$Stub;

    move-result-object v3

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/android/internal/view/IInputContext;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/inputmethod/IIntResultCallback;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_3f

    nop

    const-string v2, "commitContent()"

    invoke-static {v0, v2}, Lcom/android/internal/view/InputConnectionWrapper;->getResultOrZero(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1

    :catch_3f
    move-exception v2

    return v1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V

    invoke-direct {p0}, Lcom/android/internal/view/InputConnectionWrapper;->notifyUserActionIfNecessary()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    const/4 v0, 0x1

    return v0

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public deleteSurroundingText(II)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .registers 5

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingTextInCodePoints(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    const/4 v0, 0x1

    return v0

    :catch_11
    move-exception v0

    return v1
.end method

.method public endBatchEdit()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public finishComposingText()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getCursorCapsMode(I)I
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->createCompletableInt()Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;

    move-result-object v0

    :try_start_10
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;)Lcom/android/internal/inputmethod/IIntResultCallback$Stub;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(ILcom/android/internal/inputmethod/IIntResultCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_21

    nop

    const-string v1, "getCursorCapsMode()"

    invoke-static {v0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->getResultOrZero(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;Ljava/lang/String;)I

    move-result v1

    return v1

    :catch_21
    move-exception v2

    return v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 7

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->createCompletableExtractedText()Lcom/android/internal/inputmethod/CancellationGroup$Completable$ExtractedText;

    move-result-object v0

    :try_start_10
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$ExtractedText;)Lcom/android/internal/inputmethod/IExtractedTextResultCallback$Stub;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/inputmethod/IExtractedTextResultCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_23

    nop

    const-string v1, "getExtractedText()"

    invoke-static {v0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->getResultOrNull(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    return-object v1

    :catch_23
    move-exception v2

    return-object v1
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return-object v1

    :cond_12
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->createCompletableCharSequence()Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;

    move-result-object v0

    :try_start_18
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;)Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/view/IInputContext;->getSelectedText(ILcom/android/internal/inputmethod/ICharSequenceResultCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_2b

    nop

    const-string v1, "getSelectedText()"

    invoke-static {v0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->getResultOrNull(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    :catch_2b
    move-exception v2

    return-object v1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 7

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->createCompletableCharSequence()Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;

    move-result-object v0

    :try_start_10
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;)Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IILcom/android/internal/inputmethod/ICharSequenceResultCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_23

    nop

    const-string v1, "getTextAfterCursor()"

    invoke-static {v0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->getResultOrNull(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    :catch_23
    move-exception v2

    return-object v1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 7

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->createCompletableCharSequence()Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;

    move-result-object v0

    :try_start_10
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;)Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IILcom/android/internal/inputmethod/ICharSequenceResultCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_23

    nop

    const-string v1, "getTextBeforeCursor()"

    invoke-static {v0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->getResultOrNull(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Values;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    :catch_23
    move-exception v2

    return-object v1
.end method

.method public performContextMenuAction(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public performEditorAction(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->createCompletableInt()Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;

    move-result-object v0

    :try_start_19
    iget-object v2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {v0}, Lcom/android/internal/inputmethod/ResultCallbacks;->of(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;)Lcom/android/internal/inputmethod/IIntResultCallback$Stub;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/view/IInputContext;->requestUpdateCursorAnchorInfo(ILcom/android/internal/inputmethod/IIntResultCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_2d

    nop

    const-string v2, "requestUpdateCursorAnchorInfo()"

    invoke-static {v0, v2}, Lcom/android/internal/view/InputConnectionWrapper;->getResultOrZero(Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1

    :catch_2d
    move-exception v2

    return v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V

    invoke-direct {p0}, Lcom/android/internal/view/InputConnectionWrapper;->notifyUserActionIfNecessary()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    const/4 v0, 0x1

    return v0

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setComposingRegion(II)Z
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    const/4 v0, 0x1

    return v0

    :catch_10
    move-exception v0

    return v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V

    invoke-direct {p0}, Lcom/android/internal/view/InputConnectionWrapper;->notifyUserActionIfNecessary()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    const/4 v0, 0x1

    return v0

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setSelection(II)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputConnectionWrapper{idHash=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMissingMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    invoke-static {v1}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
