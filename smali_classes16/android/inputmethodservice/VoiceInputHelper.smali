.class public Landroid/inputmethodservice/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;,
        Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;,
        Landroid/inputmethodservice/VoiceInputHelper$SettingsObserver;
    }
.end annotation


# static fields
.field public static final API_KEY:Ljava/lang/String; = "GKGRAg3Rim3Ku6_ZLM77dwjADiVKLrhtva7D8A-9now"

.field public static final CLIENT_ID:Ljava/lang/String; = "2882303761517744214"

.field private static final DEBUG:Z = true

.field private static final DETECTION_PREFIX:Ljava/lang/String; = "..."

.field private static final DETECTION_SHOW_MAX_LEN:I = 0xe

.field public static final MI_BRAIN_ASR_SERVICE:Ljava/lang/String; = "com.xiaomi.mibrain.speech.asr.AsrService"

.field public static final MI_BRAIN_PKG:Ljava/lang/String; = "com.xiaomi.mibrain.speech"

.field public static final PERMISSION_RECORD_AUDIO:Ljava/lang/String; = "android.permission.RECORD_AUDIO"

.field public static final SIGN_SECRET:Ljava/lang/String; = "iQGcaANtifIKTw3bRdXOmzpxx9h1jegkIlMsQt2ly6T8udJcLw7VYy7PuyCcE59tuatzhCwzZUMoR1qHa992jw"

.field private static final TAG:Ljava/lang/String; = "VoiceInputHelper"

.field private static blacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAudioFocusChangeLister:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private static sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

.field private static sIsEnabled:Z

.field private static sIsInSpeech:Z

.field private static sIsSpeechRecognizerReady:Z

.field private static sRandom:Ljava/util/Random;

.field private static sSettingsObserver:Landroid/inputmethodservice/VoiceInputHelper$SettingsObserver;

.field private static sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private static supportedImes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sRandom:Ljava/util/Random;

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSettingsObserver:Landroid/inputmethodservice/VoiceInputHelper$SettingsObserver;

    new-instance v0, Landroid/inputmethodservice/VoiceInputHelper$1;

    invoke-direct {v0}, Landroid/inputmethodservice/VoiceInputHelper$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sAudioFocusChangeLister:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Landroid/inputmethodservice/VoiceInputHelper$2;

    invoke-direct {v0}, Landroid/inputmethodservice/VoiceInputHelper$2;-><init>()V

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->blacklist:Ljava/util/ArrayList;

    new-instance v0, Landroid/inputmethodservice/VoiceInputHelper$3;

    invoke-direct {v0}, Landroid/inputmethodservice/VoiceInputHelper$3;-><init>()V

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->supportedImes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/VoiceInputHelper;->sIsEnabled:Z

    return p0
.end method

.method static synthetic access$100()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    return p0
.end method

.method public static destroy()V
    .registers 1

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    const-string v0, "destroy...success."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    goto :goto_18

    :cond_13
    const-string v0, "destroy...sSpeechRecognizer already is null."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public static enforceAudioPermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static enforceMiSpeechSupport(Landroid/content/Context;)Z
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.mibrain.speech"

    const-string v2, "com.xiaomi.mibrain.speech.asr.AsrService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enforceMiSpeechSupport, service size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_36

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_36

    const/4 v2, 0x1

    :cond_36
    return v2
.end method

.method public static formatText(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    move-object v1, p0

    :goto_2c
    move-object v0, v1

    :cond_2d
    return-object v0
.end method

.method public static getErrorStr(I)Ljava/lang/String;
    .registers 2

    const-string v0, "UNKNOWN"

    packed-switch p0, :pswitch_data_22

    goto :goto_21

    :pswitch_6
    const-string v0, "ERROR_INSUFFICIENT_PERMISSIONS"

    goto :goto_21

    :pswitch_9
    const-string v0, "ERROR_RECOGNIZER_BUSY"

    goto :goto_21

    :pswitch_c
    const-string v0, "ERROR_NO_MATCH"

    goto :goto_21

    :pswitch_f
    const-string v0, "ERROR_SPEECH_TIMEOUT"

    goto :goto_21

    :pswitch_12
    const-string v0, "ERROR_CLIENT"

    goto :goto_21

    :pswitch_15
    const-string v0, "ERROR_SERVER"

    goto :goto_21

    :pswitch_18
    const-string v0, "ERROR_AUDIO"

    goto :goto_21

    :pswitch_1b
    const-string v0, "ERROR_NETWORK"

    goto :goto_21

    :pswitch_1e
    const-string v0, "ERROR_NETWORK_TIMEOUT"

    nop

    :goto_21
    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V

    return-void
.end method

.method public static initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V
    .registers 7

    const-string v0, "initSpeech....start"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-static {p0}, Landroid/inputmethodservice/VoiceInputHelper;->enforceAudioPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    const-string v0, "No permission:android.permission.RECORD_AUDIO"

    invoke-static {v1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void

    :cond_15
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->destroy()V

    invoke-static {p0}, Landroid/inputmethodservice/VoiceInputHelper;->enforceMiSpeechSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.mibrain.speech"

    const-string v3, "com.xiaomi.mibrain.speech.asr.AsrService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    const-string v0, "Mi brain supported."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v2, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;

    invoke-direct {v2, p0, p1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    sput-boolean v1, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    sput-object p2, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    const-string v0, "initSpeech...success."

    invoke-static {v1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void

    :cond_46
    const-string v0, "Mi brain UN-supported."

    invoke-static {v1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void
.end method

.method public static isSpeechRecognizerReady()Z
    .registers 1

    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void
.end method

.method public static log(ZLjava/lang/String;)V
    .registers 4

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Niel..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInputHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setCallback(Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V
    .registers 1

    sput-object p0, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    return-void
.end method

.method public static setIsInSpeech(Z)V
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    return-void
.end method

.method public static showSpeechBar(Landroid/view/inputmethod/EditorInfo;ZLjava/lang/String;)Z
    .registers 9

    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->isSpeechRecognizerReady()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    const-string v0, "SpeechRecognizer is NOT ready!"

    invoke-static {v2, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return v1

    :cond_13
    if-nez p1, :cond_c9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_c9

    if-nez p0, :cond_1d

    goto/16 :goto_c9

    :cond_1d
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", textVariation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-eq v3, v4, :cond_c2

    and-int/lit16 v3, v0, 0x90

    const/16 v4, 0x90

    if-eq v3, v4, :cond_c2

    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_52

    goto :goto_c2

    :cond_52
    sget-object v3, Landroid/inputmethodservice/VoiceInputHelper;->supportedImes:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME not supported, pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return v1

    :cond_6f
    sget-object v3, Landroid/inputmethodservice/VoiceInputHelper;->blacklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSpeechBar...hit blacklist, pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return v1

    :cond_a1
    goto :goto_75

    :cond_a2
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Masked imeOptions="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c1

    :cond_c0
    move v1, v2

    :cond_c1
    return v1

    :cond_c2
    :goto_c2
    const-string/jumbo v2, "showSpeechBar...password!"

    invoke-static {v2}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return v1

    :cond_c9
    :goto_c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFullScreenMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isInternationalBuild="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", editorInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_eb

    const-string/jumbo v2, "null"

    goto :goto_ec

    :cond_eb
    move-object v2, p0

    :goto_ec
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return v1
.end method

.method public static startListening(Landroid/content/Context;)V
    .registers 7

    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_89

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[START]voice recognizer...pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sget-object v3, Landroid/inputmethodservice/VoiceInputHelper;->sAudioFocusChangeLister:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    if-eq v3, v1, :cond_47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to request audio focus, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    :cond_47
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_59

    const-string v5, "calling_package"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_59
    const-string v5, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string/jumbo v5, "useVad"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "client_id"

    const-string v5, "2882303761517744214"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "api_key"

    const-string v5, "GKGRAg3Rim3Ku6_ZLM77dwjADiVKLrhtva7D8A-9now"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sign_secret"

    const-string v5, "iQGcaANtifIKTw3bRdXOmzpxx9h1jegkIlMsQt2ly6T8udJcLw7VYy7PuyCcE59tuatzhCwzZUMoR1qHa992jw"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "miref"

    const-string v5, "com.miui.im_voice"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v4}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_9f

    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[START]failed, sIsSpeechRecognizerReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    :goto_9f
    return-void
.end method

.method public static stopListening(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    if-nez v0, :cond_a

    const-string v0, "[STOP]ignore, engine already stopped by itself automatically."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget-object v2, Landroid/inputmethodservice/VoiceInputHelper;->sAudioFocusChangeLister:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    if-eq v2, v1, :cond_2b

    const-string v3, "Fail to recover the audio focus"

    invoke-static {v1, v3}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    :cond_2b
    const-string v1, "[STOP]voice recognizer..."

    invoke-static {v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    goto :goto_47

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[STOP]ignore, sIsSpeechRecognizerReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    :goto_47
    return-void
.end method
