.class public Landroid/os/perfdebug/ViewRootMonitor;
.super Ljava/lang/Object;
.source "ViewRootMonitor.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DRAW_MODE_HARDWARE:I = 0x1

.field public static final DRAW_MODE_SOFTWARE:I = 0x2

.field public static final DRAW_MODE_SURFACE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ViewRootMonitor"

.field private static final THRESHOLD_SLOW_TRAVERSALS_MS:I = 0x12c


# instance fields
.field private mDrawMode:I

.field private mGlobalLayoutBeginTime:J

.field private mGlobalLayoutEndTime:J

.field private mLayoutBeginTime:J

.field private mLayoutEndTime:J

.field private mMeasureBeginTime:J

.field private mMeasureEndTime:J

.field private mPerformDrawBeginTime:J

.field private mPerformDrawEndTime:J

.field private mPreDrawBeginTime:J

.field private mPreDrawEndTime:J

.field private mTraversalsBeginTime:J

.field private mViewDrawBeginTime:J

.field private mViewDrawEndTime:J

.field private mViewTreeDrawBeginTime:J

.field private mViewTreeDrawEndTime:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mDrawMode:I

    return-void
.end method

.method private drawModeToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mDrawMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const-string v0, ""

    return-object v0

    :cond_e
    const-string v0, "AS"

    return-object v0

    :cond_11
    const-string v0, "SW"

    return-object v0

    :cond_14
    const-string v0, "HWUI"

    return-object v0
.end method


# virtual methods
.method public monitorGlobalLayoutBegin()V
    .registers 4

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x8

    const-string v2, "dispatchOnGlobalLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mGlobalLayoutEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mGlobalLayoutBeginTime:J

    :cond_15
    return-void
.end method

.method public monitorGlobalLayoutEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mGlobalLayoutEndTime:J

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_11
    return-void
.end method

.method public monitorPerformDrawBegin()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPerformDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPerformDrawBeginTime:J

    :cond_e
    return-void
.end method

.method public monitorPerformDrawEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPerformDrawEndTime:J

    :cond_c
    return-void
.end method

.method public monitorPerformLayoutBegin()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mLayoutEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mLayoutBeginTime:J

    :cond_e
    return-void
.end method

.method public monitorPerformLayoutEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mLayoutEndTime:J

    :cond_c
    return-void
.end method

.method public monitorPerformMeasureBegin()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mMeasureEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mMeasureBeginTime:J

    :cond_e
    return-void
.end method

.method public monitorPerformMeasureEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mMeasureEndTime:J

    :cond_c
    return-void
.end method

.method public monitorTraversalsBegin()V
    .registers 4

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mTraversalsBeginTime:J

    const-wide/16 v0, 0x8

    const-string v2, "doTraversals"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_13
    return-void
.end method

.method public monitorTraversalsEnd()V
    .registers 8

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/ViewRootMonitor;->mTraversalsBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gtz v2, :cond_19

    return-void

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " traversals : time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms vsyncFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/perfdebug/VsyncFrame;->getInstance()Landroid/os/perfdebug/VsyncFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/perfdebug/VsyncFrame;->getCurFrame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " measure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitor;->mMeasureEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitor;->mMeasureBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms layout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitor;->mLayoutEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitor;->mLayoutBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms draw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPerformDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPerformDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/perfdebug/ViewRootMonitor;->drawModeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dispatchOnGlobalLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitor;->mGlobalLayoutEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitor;->mGlobalLayoutBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ViewTree#OnPreDraw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPreDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPreDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ViewTree#OnDraw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewTreeDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewTreeDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms viewDraw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewRootMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    return-void
.end method

.method public monitorViewDrawBegin()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewDrawBeginTime:J

    :cond_e
    return-void
.end method

.method public monitorViewDrawEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewDrawEndTime:J

    :cond_c
    return-void
.end method

.method public monitorViewTreeDrawBegin()V
    .registers 4

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x8

    const-string v2, "ViewTree#OnDraw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewTreeDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewTreeDrawBeginTime:J

    :cond_15
    return-void
.end method

.method public monitorViewTreeDrawEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mViewTreeDrawEndTime:J

    :cond_11
    return-void
.end method

.method public monitorViewTreePreDrawBegin()V
    .registers 4

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x8

    const-string v2, "ViewTree#OnPreDraw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPreDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPreDrawBeginTime:J

    :cond_15
    return-void
.end method

.method public monitorViewTreePreDrawEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitor;->mPreDrawEndTime:J

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_11
    return-void
.end method

.method public setDrawMode(I)V
    .registers 2

    iput p1, p0, Landroid/os/perfdebug/ViewRootMonitor;->mDrawMode:I

    return-void
.end method
