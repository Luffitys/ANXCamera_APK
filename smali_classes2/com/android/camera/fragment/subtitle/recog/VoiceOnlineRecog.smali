.class public Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.super Ljava/lang/Object;
.source "VoiceOnlineRecog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;
    }
.end annotation


# static fields
.field private static final FINAL_RESULT_TYPE:Ljava/lang/String; = "0"

.field private static final HOSTURL:Ljava/lang/String; = "wss://xiaomi-ist-api.xfyun.cn/v2/ist"

.field private static final TAG:Ljava/lang/String; = "VoiceOnlineRecog"


# instance fields
.field private final SAMPLE_RATE:I

.field public final StatusContinueFrame:I

.field public final StatusFirstFrame:I

.field public final StatusLastFrame:I

.field private context:Landroid/content/Context;

.field private currentStatus:I

.field protected handler:Landroid/os/Handler;

.field private isDisConnect:Z

.field private isPauseRecording:Z

.field private isStopRecording:Z

.field public final json:Lcom/google/gson/Gson;

.field private mCanStartRecord:Z

.field private mEdTime:Ljava/lang/String;

.field private mNeedRemoveTime:J

.field private mPauseRecordingTime:J

.field private mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

.field private mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

.field private mResumeRecordingTime:J

.field private mStTime:Ljava/lang/String;

.field private mStartRecordingTime:J

.field private recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

.field private srtBuilder:Ljava/lang/StringBuilder;

.field private srtRowNum:I

.field private type:Ljava/lang/String;

.field private webSocket:Lokhttp3/WebSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->SAMPLE_RATE:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusFirstFrame:I

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusContinueFrame:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusLastFrame:I

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->json:Lcom/google/gson/Gson;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->showSubtitleContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1708(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;)Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    return-wide v0
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const-string v1, "cn"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "st"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    const-string v0, "bg"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    const-string v0, "ed"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    const-string p0, "rt"

    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "ws"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "cw"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    sub-long/2addr v0, p0

    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "HH:mm:ss,SSS"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "GMT+00:00"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initWebSocket()V
    .locals 3

    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->getAccessAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->getAccessAppSecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss://xiaomi-ist-api.xfyun.cn/v2/ist"

    invoke-static {v2, v0, v1}, Lcom/android/camera/fragment/subtitle/recog/AuthUtils;->assembleRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v2, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-void
.end method

.method private showSubtitleContent(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getSubtitleContent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public pauseRecording()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public resumeRecording()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    iget-wide v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public startRecording()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->initWebSocket()V

    new-instance v0, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    const/16 v1, 0x3e80

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->startRecording(Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDisConnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceOnlineRecog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isDisConnect:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    if-eqz v1, :cond_1

    const-string v1, "stop recorder onstop"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->stopRecord(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    :cond_1
    return-void
.end method
