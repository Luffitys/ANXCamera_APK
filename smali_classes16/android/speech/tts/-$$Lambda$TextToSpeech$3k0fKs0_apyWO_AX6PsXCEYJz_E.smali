.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$3k0fKs0_apyWO_AX6PsXCEYJz_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic f$0:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$3k0fKs0_apyWO_AX6PsXCEYJz_E;->f$0:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$3k0fKs0_apyWO_AX6PsXCEYJz_E;->f$0:Ljava/util/Locale;

    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$getFeatures$4(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
