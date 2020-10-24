.class public Lcom/android/camera/tts/TTSHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static DBG:Z = false

.field private static final DEFAULT_SHUTDOWN_DELAY_MILLIS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "TTSHelper"

.field private static final UTTERANCE_ID_SEPARATOR:C = ';'


# instance fields
.field private currentBatchId:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInitStatus:I

.field private final mListeners:Ljava/util/Map;

.field private final mMaybeShutdownRunnable:Ljava/lang/Runnable;

.field private final mNoOpAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mPendingRequest:Lcom/android/camera/tts/TTSHelper$SpeechRequest;

.field private final mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mShutdownDelayMillis:J

.field private mTTSEngine:Lcom/android/camera/tts/TTSEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TTSHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/tts/TTSHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/camera/tts/AndroidTTSEngine;

    invoke-direct {v0}, Lcom/android/camera/tts/AndroidTTSEngine;-><init>()V

    const-wide/32 v1, 0xea60

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/tts/TTSHelper;-><init>(Landroid/content/Context;Lcom/android/camera/tts/TTSEngine;J)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/camera/tts/TTSEngine;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/camera/tts/OooO0o;->OooO00o:Lcom/android/camera/tts/OooO0o;

    iput-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mNoOpAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mListeners:Ljava/util/Map;

    new-instance v0, Lcom/android/camera/tts/TTSHelper$1;

    invoke-direct {v0, p0}, Lcom/android/camera/tts/TTSHelper$1;-><init>(Lcom/android/camera/tts/TTSHelper;)V

    iput-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mMaybeShutdownRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/tts/TTSHelper$2;

    invoke-direct {v0, p0}, Lcom/android/camera/tts/TTSHelper$2;-><init>(Lcom/android/camera/tts/TTSHelper;)V

    iput-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    iput-wide p3, p0, Lcom/android/camera/tts/TTSHelper;->mShutdownDelayMillis:J

    const/4 p1, -0x2

    iput p1, p0, Lcom/android/camera/tts/TTSHelper;->mInitStatus:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/tts/TTSHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/tts/TTSHelper;->handleInitCompleted(I)V

    return-void
.end method

.method static synthetic OooO0O0(I)V
    .locals 0

    return-void
.end method

.method static synthetic OooO0OO(Lcom/android/camera/tts/TTSHelper$Listener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/camera/tts/TTSHelper$Listener;->onTTSStopped(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/tts/TTSHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/tts/TTSHelper;)Lcom/android/camera/tts/TTSHelper$SpeechRequest;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->mPendingRequest:Lcom/android/camera/tts/TTSHelper$SpeechRequest;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/tts/TTSHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/tts/TTSHelper;->shutdownEngine()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/tts/TTSHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/tts/TTSHelper;->mShutdownDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/tts/TTSHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/tts/TTSHelper;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/tts/TTSHelper;->parse(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/tts/TTSHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->currentBatchId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/tts/TTSHelper;)Lcom/android/camera/tts/TTSEngine;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/tts/TTSHelper;Lcom/android/camera/tts/TTSHelper$Listener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/tts/TTSHelper;->onTtsStopped(Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    return-void
.end method

.method private handleInitCompleted(I)V
    .locals 2

    sget-boolean v0, Lcom/android/camera/tts/TTSHelper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildRecognizeDataHolder completed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/camera/tts/TTSHelper;->mInitStatus:I

    iget-object p1, p0, Lcom/android/camera/tts/TTSHelper;->mPendingRequest:Lcom/android/camera/tts/TTSHelper$SpeechRequest;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mTextToSpeak:Ljava/util/List;

    iget-object p1, p1, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/tts/TTSHelper;->playInternal(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/camera/tts/TTSHelper;->mPendingRequest:Lcom/android/camera/tts/TTSHelper$SpeechRequest;

    :cond_1
    return-void
.end method

.method private initMaybeAndKeepAlive()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/tts/TTSHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TTSHelper"

    const-string v1, "Initializing TTS Engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/camera/tts/OooO0o0;

    invoke-direct {v2, p0}, Lcom/android/camera/tts/OooO0o0;-><init>(Lcom/android/camera/tts/TTSHelper;)V

    invoke-interface {v0, v1, v2}, Lcom/android/camera/tts/TTSEngine;->initialize(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper;->mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-interface {v0, v1}, Lcom/android/camera/tts/TTSEngine;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper;->mMaybeShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper;->mMaybeShutdownRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/camera/tts/TTSHelper;->mShutdownDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onTtsStopped(Lcom/android/camera/tts/TTSHelper$Listener;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper;->mNoOpAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/tts/OooO0oO;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/tts/OooO0oO;-><init>(Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static parse(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private playInternal(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;Landroid/os/Bundle;)V
    .locals 8

    iget v0, p0, Lcom/android/camera/tts/TTSHelper;->mInitStatus:I

    const/4 v1, -0x1

    const-string v2, "TTSHelper"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "TTS setup failed!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, v3}, Lcom/android/camera/tts/TTSHelper;->onTtsStopped(Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->stop()V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/tts/TTSHelper;->currentBatchId:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/tts/TTSHelper;->currentBatchId:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x3b

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "%s%c%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/camera/tts/TTSHelper;->DBG:Z

    if-eqz v5, :cond_1

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v4, v5, v3

    const-string v6, "Queueing tts: \'%s\' [%s]"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {v5, v1, v3, p3, v4}, Lcom/android/camera/tts/TTSEngine;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {p1}, Lcom/android/camera/tts/TTSEngine;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper;->currentBatchId:Ljava/lang/String;

    const-string p1, "Queuing text failed!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, v3}, Lcom/android/camera/tts/TTSHelper;->onTtsStopped(Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/tts/TTSHelper;->mListeners:Ljava/util/Map;

    iget-object p3, p0, Lcom/android/camera/tts/TTSHelper;->currentBatchId:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/tts/TTSHelper$BatchListener;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/tts/TTSHelper$BatchListener;-><init>(Lcom/android/camera/tts/TTSHelper;Lcom/android/camera/tts/TTSHelper$Listener;)V

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private shutdownEngine()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/tts/TTSHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TTSHelper"

    const-string v1, "Shutting down TTS Engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->stop()V

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->shutdown()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/camera/tts/TTSHelper;->mInitStatus:I

    :cond_1
    return-void
.end method

.method public static speakingTextInTalkbackMode(Lcom/android/camera/tts/TTSHelper;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "volume"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p0}, Lcom/android/camera/tts/TTSHelper;->requestStop()V

    new-instance v1, Lcom/android/camera/tts/TTSHelper$3;

    invoke-direct {v1}, Lcom/android/camera/tts/TTSHelper$3;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/tts/TTSHelper;->requestPlay(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/tts/TTSHelper;->shutdownEngine()V

    return-void
.end method

.method public getStream()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {p0}, Lcom/android/camera/tts/TTSEngine;->getStream()I

    move-result p0

    return p0
.end method

.method public isSpeaking()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {p0}, Lcom/android/camera/tts/TTSEngine;->isSpeaking()Z

    move-result p0

    return p0
.end method

.method public requestPlay(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper;->mNoOpAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p0}, Lcom/android/camera/tts/TTSHelper;->getStream()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lcom/android/camera/tts/TTSHelper$Listener;->onAudioFocusFailed()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/tts/TTSHelper;->initMaybeAndKeepAlive()V

    iget v0, p0, Lcom/android/camera/tts/TTSHelper;->mInitStatus:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iget-object p3, p0, Lcom/android/camera/tts/TTSHelper;->mPendingRequest:Lcom/android/camera/tts/TTSHelper$SpeechRequest;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/camera/tts/TTSHelper;->onTtsStopped(Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    :cond_1
    new-instance p3, Lcom/android/camera/tts/TTSHelper$SpeechRequest;

    invoke-direct {p3, p1, p2}, Lcom/android/camera/tts/TTSHelper$SpeechRequest;-><init>(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;)V

    iput-object p3, p0, Lcom/android/camera/tts/TTSHelper;->mPendingRequest:Lcom/android/camera/tts/TTSHelper$SpeechRequest;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/tts/TTSHelper;->playInternal(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty/null textToSpeak"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper;->mTTSEngine:Lcom/android/camera/tts/TTSEngine;

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/tts/TTSHelper;->currentBatchId:Ljava/lang/String;

    return-void
.end method
