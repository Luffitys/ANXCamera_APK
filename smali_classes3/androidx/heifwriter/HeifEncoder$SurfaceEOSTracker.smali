.class Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG_EOS:Z


# instance fields
.field final mCopyTiles:Z

.field mEncoderEOSTimeUs:J

.field mInputEOSTimeNs:J

.field mLastEncoderTimeUs:J

.field mLastInputTimeNs:J

.field mLastOutputTimeUs:J

.field mSignaled:Z

.field final synthetic this$0:Landroidx/heifwriter/HeifEncoder;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifEncoder;Z)V
    .locals 2

    iput-object p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->this$0:Landroidx/heifwriter/HeifEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastInputTimeNs:J

    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastEncoderTimeUs:J

    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastOutputTimeUs:J

    iput-boolean p2, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mCopyTiles:Z

    return-void
.end method

.method private doSignalEOSLocked()V
    .locals 2

    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->this$0:Landroidx/heifwriter/HeifEncoder;

    iget-object v0, v0, Landroidx/heifwriter/HeifEncoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker$1;

    invoke-direct {v1, p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker$1;-><init>(Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mSignaled:Z

    return-void
.end method

.method private updateEOSLocked()V
    .locals 6

    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mSignaled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v4, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastInputTimeNs:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastEncoderTimeUs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->doSignalEOSLocked()V

    return-void

    :cond_1
    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    :cond_2
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-wide v2, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastOutputTimeUs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->doSignalEOSLocked()V

    :cond_3
    return-void
.end method


# virtual methods
.method declared-synchronized updateInputEOSTime(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mCopyTiles:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateEOSLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateLastInputAndEncoderTime(JJ)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iput-wide p3, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastEncoderTimeUs:J

    :cond_2
    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastInputTimeNs:J

    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateEOSLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateLastOutputTime(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastOutputTimeUs:J

    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateEOSLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
