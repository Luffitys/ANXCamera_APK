.class public final Landroid/media/MediaTranscodeManager$TranscodingJob;
.super Ljava/lang/Object;
.source "MediaTranscodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranscodingJob"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;,
        Landroid/media/MediaTranscodeManager$TranscodingJob$Result;,
        Landroid/media/MediaTranscodeManager$TranscodingJob$Status;
    }
.end annotation


# static fields
.field public static final RESULT_CANCELED:I = 0x4

.field public static final RESULT_ERROR:I = 0x3

.field public static final RESULT_NONE:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x2

.field public static final STATUS_FINISHED:I = 0x3

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mID:J

.field private final mListener:Landroid/media/MediaTranscodeManager$OnTranscodingFinishedListener;

.field private mProgress:F

.field private mProgressChangedExecutor:Ljava/util/concurrent/Executor;

.field private mProgressChangedListener:Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;

.field private mResult:I

.field private mStatus:I

.field private final mStatusChangeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method private constructor <init>(JLjava/util/concurrent/Executor;Landroid/media/MediaTranscodeManager$OnTranscodingFinishedListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatusChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgress:F

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatus:I

    iput v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mResult:I

    iput-wide p1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mID:J

    iput-object p3, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mListener:Landroid/media/MediaTranscodeManager$OnTranscodingFinishedListener;

    return-void
.end method

.method synthetic constructor <init>(JLjava/util/concurrent/Executor;Landroid/media/MediaTranscodeManager$OnTranscodingFinishedListener;Landroid/media/MediaTranscodeManager$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaTranscodeManager$TranscodingJob;-><init>(JLjava/util/concurrent/Executor;Landroid/media/MediaTranscodeManager$OnTranscodingFinishedListener;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MediaTranscodeManager$TranscodingJob;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaTranscodeManager$TranscodingJob;->processJobEvent(II)V

    return-void
.end method

.method private processJobEvent(II)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTranscodeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_20
    invoke-direct {p0, p2}, Landroid/media/MediaTranscodeManager$TranscodingJob;->setJobFinished(I)V

    goto :goto_30

    :cond_24
    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/media/MediaTranscodeManager$TranscodingJob;->setJobProgress(F)V

    goto :goto_30

    :cond_2c
    invoke-direct {p0}, Landroid/media/MediaTranscodeManager$TranscodingJob;->setJobStarted()V

    nop

    :goto_30
    return-void
.end method

.method private setJobFinished(I)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatusChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    iput v2, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatus:I

    iput p1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mResult:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_23

    const/4 v0, 0x1

    :cond_10
    iget-object v1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatusChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/-$$Lambda$MediaTranscodeManager$TranscodingJob$QvWheBYah-rzcUxaPabT8c9A4r4;

    invoke-direct {v2, p0}, Landroid/media/-$$Lambda$MediaTranscodeManager$TranscodingJob$QvWheBYah-rzcUxaPabT8c9A4r4;-><init>(Landroid/media/MediaTranscodeManager$TranscodingJob;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_22
    return-void

    :catchall_23
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatusChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private setJobProgress(F)V
    .registers 5

    iput p1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgress:F

    iget-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgressChangedListener:Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgressChangedExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/-$$Lambda$MediaTranscodeManager$TranscodingJob$zBKUqcscKK9kg5Ya3kpdPZqyUQw;

    invoke-direct {v2, p0, v0}, Landroid/media/-$$Lambda$MediaTranscodeManager$TranscodingJob$zBKUqcscKK9kg5Ya3kpdPZqyUQw;-><init>(Landroid/media/MediaTranscodeManager$TranscodingJob;Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private setJobStarted()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatus:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/MediaTranscodeManager$TranscodingJob;->setJobFinished(I)V

    # getter for: Landroid/media/MediaTranscodeManager;->sMediaTranscodeManager:Landroid/media/MediaTranscodeManager;
    invoke-static {}, Landroid/media/MediaTranscodeManager;->access$400()Landroid/media/MediaTranscodeManager;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mID:J

    # invokes: Landroid/media/MediaTranscodeManager;->native_cancelTranscodingRequest(J)V
    invoke-static {v0, v1, v2}, Landroid/media/MediaTranscodeManager;->access$500(Landroid/media/MediaTranscodeManager;J)V

    return-void
.end method

.method public getProgress()F
    .registers 2

    iget v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgress:F

    return v0
.end method

.method public getResult()I
    .registers 2

    iget v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mResult:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mStatus:I

    return v0
.end method

.method public synthetic lambda$setJobFinished$1$MediaTranscodeManager$TranscodingJob()V
    .registers 2

    iget-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mListener:Landroid/media/MediaTranscodeManager$OnTranscodingFinishedListener;

    invoke-interface {v0, p0}, Landroid/media/MediaTranscodeManager$OnTranscodingFinishedListener;->onTranscodingFinished(Landroid/media/MediaTranscodeManager$TranscodingJob;)V

    return-void
.end method

.method public synthetic lambda$setJobProgress$0$MediaTranscodeManager$TranscodingJob(Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;)V
    .registers 3

    iget v0, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgress:F

    invoke-interface {p1, v0}, Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;->onProgressChanged(F)V

    return-void
.end method

.method public setOnProgressChangedListener(Ljava/util/concurrent/Executor;Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgressChangedExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/MediaTranscodeManager$TranscodingJob;->mProgressChangedListener:Landroid/media/MediaTranscodeManager$TranscodingJob$OnProgressChangedListener;

    return-void
.end method
