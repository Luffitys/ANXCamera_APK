.class public interface abstract Lcom/android/camera/tts/TTSEngine;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getStream()I
.end method

.method public abstract initialize(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isSpeaking()Z
.end method

.method public abstract setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
.end method

.method public abstract stop()V
.end method
