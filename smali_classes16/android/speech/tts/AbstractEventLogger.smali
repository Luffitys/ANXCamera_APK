.class abstract Landroid/speech/tts/AbstractEventLogger;
.super Ljava/lang/Object;
.source "AbstractEventLogger.java"


# instance fields
.field protected final mCallerPid:I

.field protected final mCallerUid:I

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private mLogWritten:Z

.field protected mPlaybackStartTime:J

.field protected final mReceivedTime:J

.field private volatile mRequestProcessingStartTime:J

.field protected final mServiceApp:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    iput p1, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    iput p2, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    iput-object p3, p0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    return-void
.end method


# virtual methods
.method protected abstract logFailure(I)V
.end method

.method protected abstract logSuccess(JJJ)V
.end method

.method public onAudioDataWritten()V
    .registers 5

    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    :cond_e
    return-void
.end method

.method public onCompleted(I)V
    .registers 18

    move-object/from16 v7, p0

    iget-boolean v0, v7, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    if-nez p1, :cond_3a

    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3a

    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    goto :goto_3a

    :cond_1f
    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    iget-wide v2, v7, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    sub-long v10, v0, v2

    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    iget-wide v2, v7, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v12, v0, v2

    iget-wide v0, v7, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    iget-wide v2, v7, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v14, v0, v2

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/speech/tts/AbstractEventLogger;->logSuccess(JJJ)V

    return-void

    :cond_3a
    :goto_3a
    invoke-virtual/range {p0 .. p1}, Landroid/speech/tts/AbstractEventLogger;->logFailure(I)V

    return-void
.end method

.method public onEngineComplete()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    return-void
.end method

.method public onEngineDataReceived()V
    .registers 5

    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    :cond_e
    return-void
.end method

.method public onRequestProcessingStart()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    return-void
.end method
