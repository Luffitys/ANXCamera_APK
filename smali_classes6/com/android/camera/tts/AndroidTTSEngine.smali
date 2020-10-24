.class Lcom/android/camera/tts/AndroidTTSEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/tts/TTSEngine;


# instance fields
.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStream()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public initialize(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSpeaking()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/AndroidTTSEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method
