.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic f$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$3:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$3:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$RmMsygQ8Y8_w6j3mi5IAGOmSEIg;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->lambda$synthesizeToFile$16$TextToSpeech(Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
