.class Landroid/hardware/soundtrigger/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aidl2apiAudioCapabilities(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    return v0
.end method

.method public static aidl2apiAudioFormat(Landroid/media/audio/common/AudioConfig;)Landroid/media/AudioFormat;
    .registers 3

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/audio/common/AudioConfig;->sampleRateHz:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    iget v1, p0, Landroid/media/audio/common/AudioConfig;->channelMask:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiChannelInMask(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    iget v1, p0, Landroid/media/audio/common/AudioConfig;->format:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiEncoding(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public static aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;)Landroid/media/AudioFormat;
    .registers 2

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormat(Landroid/media/audio/common/AudioConfig;)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public static aidl2apiChannelInMask(I)I
    .registers 1

    return p0
.end method

.method public static aidl2apiConfidenceLevel(Landroid/media/soundtrigger_middleware/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .registers 4

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    iget v1, p0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->userId:I

    iget v2, p0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v0
.end method

.method public static aidl2apiEncoding(I)I
    .registers 2

    const/high16 v0, 0xa000000

    if-eq p0, v0, :cond_44

    const v0, 0xa000001

    if-eq p0, v0, :cond_41

    packed-switch p0, :pswitch_data_46

    sparse-switch p0, :sswitch_data_58

    packed-switch p0, :pswitch_data_8a

    const/4 v0, 0x0

    return v0

    :pswitch_14
    const/16 v0, 0x13

    return v0

    :sswitch_17
    const/16 v0, 0x11

    return v0

    :sswitch_1a
    const/16 v0, 0xe

    return v0

    :sswitch_1d
    const/16 v0, 0xd

    return v0

    :sswitch_20
    const/16 v0, 0x8

    return v0

    :sswitch_23
    const/4 v0, 0x7

    return v0

    :sswitch_25
    const/4 v0, 0x5

    return v0

    :sswitch_27
    const/16 v0, 0x10

    return v0

    :sswitch_2a
    const/16 v0, 0xf

    return v0

    :sswitch_2d
    const/16 v0, 0xc

    return v0

    :sswitch_30
    const/16 v0, 0xb

    return v0

    :sswitch_33
    const/16 v0, 0xa

    return v0

    :sswitch_36
    const/16 v0, 0x9

    return v0

    :pswitch_39
    const/4 v0, 0x4

    return v0

    :pswitch_3b
    const/4 v0, 0x3

    return v0

    :pswitch_3d
    const/4 v0, 0x2

    return v0

    :pswitch_3f
    const/4 v0, 0x1

    return v0

    :cond_41
    const/16 v0, 0x12

    return v0

    :cond_44
    const/4 v0, 0x6

    return v0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch

    :sswitch_data_58
    .sparse-switch
        0x1000000 -> :sswitch_36
        0x4000002 -> :sswitch_33
        0x4000010 -> :sswitch_30
        0x4000100 -> :sswitch_2d
        0x4000200 -> :sswitch_2a
        0x4000300 -> :sswitch_27
        0x9000000 -> :sswitch_25
        0xb000000 -> :sswitch_23
        0xc000000 -> :sswitch_20
        0xd000000 -> :sswitch_1d
        0xe000000 -> :sswitch_1a
        0x22000000 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x24000000
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public static aidl2apiModelParameterRange(Landroid/media/soundtrigger_middleware/ModelParameterRange;)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    iget v1, p0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->minInclusive:I

    iget v2, p0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->maxInclusive:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;-><init>(II)V

    return-object v0
.end method

.method public static aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    new-instance v19, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-object/from16 v2, v19

    iget v3, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    iget-object v4, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->implementor:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->description:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->uuid:Ljava/lang/String;

    iget v7, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->version:I

    iget-object v8, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->supportedModelArch:Ljava/lang/String;

    iget v9, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxSoundModels:I

    iget v10, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxKeyPhrases:I

    iget v11, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxUsers:I

    iget v12, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->recognitionModes:I

    invoke-static {v12}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v12

    iget-boolean v13, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->captureTransition:Z

    iget v14, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxBufferMs:I

    iget-boolean v15, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->concurrentCapture:Z

    iget v0, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->powerConsumptionMw:I

    move/from16 v16, v0

    iget-boolean v0, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->triggerInEvent:Z

    move/from16 v17, v0

    iget v0, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->audioCapabilities:I

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioCapabilities(I)I

    move-result v18

    invoke-direct/range {v2 .. v18}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    return-object v19
.end method

.method public static aidl2apiPhraseRecognitionEvent(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 16

    iget-object v0, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    array-length v0, v0

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    iget-object v2, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget-object v1, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;)Landroid/media/AudioFormat;

    move-result-object v12

    new-instance v13, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget v2, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget-boolean v4, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureAvailable:Z

    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget v5, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget v6, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureDelayMs:I

    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget v7, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->capturePreambleMs:I

    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget-boolean v8, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->triggerInData:Z

    iget-object v1, p1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget-object v10, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    move-object v1, v13

    move v3, p0

    move-object v9, v12

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V

    return-object v13
.end method

.method public static aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .registers 6

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v0, v0

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiConfidenceLevel(Landroid/media/soundtrigger_middleware/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->id:I

    iget v3, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v3

    iget v4, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    return-object v1
.end method

.method public static aidl2apiRecognitionEvent(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 14

    iget-object v0, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;)Landroid/media/AudioFormat;

    move-result-object v0

    new-instance v11, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    iget v2, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    iget-boolean v4, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureAvailable:Z

    iget v5, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    iget v6, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureDelayMs:I

    iget v7, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->capturePreambleMs:I

    iget-boolean v8, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->triggerInData:Z

    iget-object v10, p1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    move-object v1, v11

    move v3, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v10}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    return-object v11
.end method

.method public static aidl2apiRecognitionModes(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    return v0
.end method

.method public static api2aidlAudioCapabilities(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    return v0
.end method

.method public static api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    .registers 3

    new-instance v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/ConfidenceLevel;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->userId:I

    return-object v0
.end method

.method public static api2aidlGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Landroid/media/soundtrigger_middleware/SoundModel;
    .registers 2

    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger_middleware/SoundModel;

    move-result-object v0

    return-object v0
.end method

.method public static api2aidlModelParameter(I)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger_middleware/Phrase;
    .registers 4

    new-instance v0, Landroid/media/soundtrigger_middleware/Phrase;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/Phrase;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/Phrase;->id:I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/Phrase;->recognitionModes:I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/Phrase;->users:[I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/Phrase;->locale:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/Phrase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    .registers 5

    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->id:I

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    const/4 v1, 0x0

    :goto_1d
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_31

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method public static api2aidlPhraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    .registers 5

    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseSoundModel;-><init>()V

    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger_middleware/SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->common:Landroid/media/soundtrigger_middleware/SoundModel;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/Phrase;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger_middleware/Phrase;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    return-object v0
.end method

.method public static api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger_middleware/RecognitionConfig;
    .registers 5

    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionConfig;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionConfig;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->captureRequested:Z

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->data:[B

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->audioCapabilities:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlAudioCapabilities(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->audioCapabilities:I

    return-object v0
.end method

.method public static api2aidlRecognitionModes(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    return v0
.end method

.method public static api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger_middleware/SoundModel;
    .registers 4

    new-instance v0, Landroid/media/soundtrigger_middleware/SoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/SoundModel;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundModel;->type:I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundModel;->uuid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v1

    const-string v2, "SoundTrigger SoundModel"

    invoke-static {v1, v2}, Landroid/hardware/soundtrigger/ConversionUtil;->byteArrayToSharedMemory([BLjava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundModel;->data:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v1

    array-length v1, v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundModel;->dataSize:I

    return-object v0
.end method

.method public static api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static byteArrayToSharedMemory([BLjava/lang/String;)Ljava/io/FileDescriptor;
    .registers 5

    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    if-eqz p1, :cond_9

    move-object v0, p1

    goto :goto_b

    :cond_9
    :try_start_9
    const-string v0, ""

    :goto_b
    array-length v1, p0

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_1e
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
