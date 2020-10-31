.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$6gq2_hmHwhnAAw1VHrcD_6tHMw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic f$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic f$1:Landroid/speech/tts/Voice;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$6gq2_hmHwhnAAw1VHrcD_6tHMw8;->f$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$6gq2_hmHwhnAAw1VHrcD_6tHMw8;->f$1:Landroid/speech/tts/Voice;

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$6gq2_hmHwhnAAw1VHrcD_6tHMw8;->f$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$6gq2_hmHwhnAAw1VHrcD_6tHMw8;->f$1:Landroid/speech/tts/Voice;

    invoke-virtual {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;->lambda$setVoice$12$TextToSpeech(Landroid/speech/tts/Voice;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
