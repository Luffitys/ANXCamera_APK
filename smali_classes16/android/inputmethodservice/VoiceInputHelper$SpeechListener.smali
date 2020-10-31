.class Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpeechListener"
.end annotation


# instance fields
.field hasResult:Z

.field imsWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 4

    const-string/jumbo v0, "onBeginningOfSpeech"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e01ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    :cond_20
    const/4 v0, 0x1

    # setter for: Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z
    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->access$202(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    return-void
.end method

.method public onEndOfSpeech()V
    .registers 3

    const-string/jumbo v0, "onEndOfSpeech..."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    :cond_14
    const/4 v0, 0x0

    # setter for: Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z
    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->access$202(Z)Z

    return-void
.end method

.method public onError(I)V
    .registers 6

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1f

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1c

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1c

    iget-object v2, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110e01b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_1c
    const-string v0, ""

    goto :goto_2d

    :cond_1f
    iget-object v2, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110e01b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/inputmethodservice/VoiceInputHelper;->getErrorStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    if-eqz v1, :cond_73

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    iget-boolean v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    if-nez v1, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_73

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;Z)V

    :cond_73
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "onEvent"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPartialResults, matched size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_29

    :cond_37
    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-interface {v2, v3}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    :cond_53
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 9

    const-string/jumbo v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResults, matched size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    move-object v1, v3

    goto :goto_3e

    :cond_3d
    goto :goto_29

    :cond_3e
    :goto_3e
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_86

    iget-object v2, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/InputMethodService;

    goto :goto_51

    :cond_50
    move-object v2, v3

    :goto_51
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    :cond_57
    const/4 v4, 0x1

    if-eqz v3, :cond_81

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v5

    if-eqz v5, :cond_67

    # getter for: Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    :cond_67
    invoke-interface {v3, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commitText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    goto :goto_86

    :cond_81
    const-string v5, "input connection is null"

    invoke-static {v4, v5}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    :cond_86
    :goto_86
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 2

    return-void
.end method
