.class public Lcom/xiaomi/asr/engine/impl/VoicePrintManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final REGISTER_FEED_RESULT_NO_RESULT:I = 0x3

.field private static final REGISTER_FEED_RESULT_SUCCESS:I = 0x0

.field private static final SIZEOF_REGISTER_PCM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VoicePrintManager"


# instance fields
.field fileRecordWorker:Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;

.field private init:Z

.field private mCurrentRecordingPos:I

.field private mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

.field private mPcmSet:[[B

.field private mRecordSource:I

.field private mRecordWorker:Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;

.field private mSpeakerName:Ljava/lang/String;

.field private mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

.field private mVoicePrintModelFullPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    iput v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mCurrentRecordingPos:I

    const/4 v0, 0x5

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mPcmSet:[[B

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintModelFullPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mSpeakerName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mRecordSource:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->fileRecordWorker:Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->loadLibrary(Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    invoke-direct {p1}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mRecordSource:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mSpeakerName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;[B)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->calculateVolume([B)F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mCurrentRecordingPos:I

    return p0
.end method

.method static synthetic access$602(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mCurrentRecordingPos:I

    return p1
.end method

.method static synthetic access$700(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)[[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mPcmSet:[[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintModelFullPath:Ljava/lang/String;

    return-object p0
.end method

.method private calculateVolume([B)F
    .locals 7

    array-length p0, p1

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const v4, 0x8000

    if-lt v3, v4, :cond_1

    const v4, 0xffff

    sub-int v3, v4, v3

    :cond_1
    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    div-int/lit8 p0, p0, 0x2

    int-to-double p0, p0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_3

    move-wide p0, v0

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-float p0, p0

    return p0
.end method


# virtual methods
.method public abortEnrollment()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mRecordWorker:Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mRecordWorker:Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onAbortEnrollmentComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelEnrollment()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->abortEnrollment()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mCurrentRecordingPos:I

    return-void
.end method

.method public commitEnrollment()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onCommitEnrollmentComplete()V

    :cond_0
    return-void
.end method

.method public generateModel()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mCurrentRecordingPos:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;

    invoke-direct {v0, p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;-><init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)V

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->start()V

    :cond_0
    return-void
.end method

.method public getAllRegister()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintGetAllRegister()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintModelFullPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mSpeakerName:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintInit(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public recognizeVoice([BII)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintRecognition([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "error:not init"

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintDestroy()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    :cond_0
    return-void
.end method

.method public removeAllRegister()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintRemoveAll()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-void
.end method

.method public setRecordSource(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mRecordSource:I

    return-void
.end method

.method public startEnrollment(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;-><init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mRecordWorker:Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RecordWorker;->start()V

    :cond_0
    return-void
.end method

.method public startEnrollmentFileRecorded(Lcom/xiaomi/asr/engine/record/AudioSource;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;-><init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;Lcom/xiaomi/asr/engine/record/AudioSource;ILcom/xiaomi/asr/engine/impl/VoicePrintManager$1;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->fileRecordWorker:Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->start()V

    :cond_0
    return-void
.end method

.method public version()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->mVoicePrintInterface:Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
