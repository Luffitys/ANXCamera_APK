.class Landroid/speech/tts/EventLogger;
.super Landroid/speech/tts/AbstractEventLogger;
.source "EventLogger.java"


# instance fields
.field private final mRequest:Landroid/speech/tts/SynthesisRequest;


# direct methods
.method constructor <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Landroid/speech/tts/AbstractEventLogger;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    return-void
.end method

.method private getLocaleString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUtteranceLength()I
    .registers 3

    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_e
    return v1
.end method


# virtual methods
.method protected logFailure(I)V
    .registers 10

    const/4 v0, -0x2

    if-eq p1, v0, :cond_20

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v2, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v3, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v4

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v6

    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v7

    invoke-static/range {v1 .. v7}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    :cond_20
    return-void
.end method

.method protected logSuccess(JJJ)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v2, v0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v3, v0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v4

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v6}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v6

    iget-object v7, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v7}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide v12, p1

    invoke-static/range {v1 .. v13}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    return-void
.end method
