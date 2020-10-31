.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$-uDA9GI4eb2MQUEii8nt8nERxiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic f$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$-uDA9GI4eb2MQUEii8nt8nERxiY;->f$0:Landroid/speech/tts/TextToSpeech;

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$-uDA9GI4eb2MQUEii8nt8nERxiY;->f$0:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$shutdown$0$TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
