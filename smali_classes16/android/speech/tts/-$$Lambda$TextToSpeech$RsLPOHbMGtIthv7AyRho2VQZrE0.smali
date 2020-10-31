.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$RsLPOHbMGtIthv7AyRho2VQZrE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic f$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic f$1:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RsLPOHbMGtIthv7AyRho2VQZrE0;->f$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RsLPOHbMGtIthv7AyRho2VQZrE0;->f$1:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RsLPOHbMGtIthv7AyRho2VQZrE0;->f$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RsLPOHbMGtIthv7AyRho2VQZrE0;->f$1:Ljava/util/Locale;

    invoke-virtual {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;->lambda$setLanguage$8$TextToSpeech(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
