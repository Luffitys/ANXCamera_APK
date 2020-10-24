.class public interface abstract Lcom/xiaomi/asr/engine/WVPListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onAbortEnrollmentComplete()V
.end method

.method public abstract onAudioData([B)V
.end method

.method public abstract onCommitEnrollmentComplete()V
.end method

.method public abstract onConflictAudio()V
.end method

.method public abstract onDebug(Ljava/lang/String;)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onEnergyLevelAvailable(FZ)V
.end method

.method public abstract onEnrollAudioBufferAvailable([BZ)V
.end method

.method public abstract onEnrollmentComplete(ZZFI)V
.end method

.method public abstract onGenerateModel(ZLjava/lang/String;)V
.end method

.method public abstract onGrammarUpdated(Z)V
.end method

.method public abstract onInit(Z)V
.end method

.method public abstract onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V
.end method

.method public abstract onRelease()V
.end method

.method public abstract onStartAudio()V
.end method

.method public abstract onStartOfSpeech()V
.end method

.method public abstract onStopAudio()V
.end method
