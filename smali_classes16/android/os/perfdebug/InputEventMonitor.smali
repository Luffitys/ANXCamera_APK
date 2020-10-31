.class public Landroid/os/perfdebug/InputEventMonitor;
.super Ljava/lang/Object;
.source "InputEventMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventMonitor"


# instance fields
.field private mDispatchBeginTime:J

.field private mDispatchSeqNumber:I

.field private mKeyEventBeginTime:J

.field private mKeyPreImeEventBeginTime:J

.field private mPointEventBeginTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const-string v1, ""

    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1d

    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_1d
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_68

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_40

    const-string/jumbo v4, "motion"

    goto :goto_42

    :cond_40
    const-string v4, "key"

    :goto_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " seq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5b

    const-string v4, " code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    const-string v4, " action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_68
    const-string v2, ""

    return-object v2
.end method

.method public static markViewInterceptTouchEventBegin(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInterceptTouchEvent#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static markViewInterceptTouchEventEnd()V
    .registers 2

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method

.method public static markViewTouchEventBegin(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static markViewTouchEventEnd()V
    .registers 2

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method


# virtual methods
.method public monitorDispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitor;->mDispatchBeginTime:J

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Landroid/os/perfdebug/InputEventMonitor;->mDispatchSeqNumber:I

    :cond_12
    return-void
.end method

.method public monitorDispatchKeyEventBegin(Landroid/view/KeyEvent;)V
    .registers 6

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_24
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitor;->mKeyEventBeginTime:J

    :cond_30
    return-void
.end method

.method public monitorDispatchKeyEventEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitor;->mKeyEventBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1f

    return-void

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dispatchKeyEvent : time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". The pachage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " may be doing too much work on its dispatch key event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputEventMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method

.method public monitorDispatchKeyEventPreImeBegin(Landroid/view/KeyEvent;)V
    .registers 6

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEventPreIme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_24
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitor;->mKeyPreImeEventBeginTime:J

    :cond_30
    return-void
.end method

.method public monitorDispatchKeyEventPreImeEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitor;->mKeyPreImeEventBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1f

    return-void

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dispatchKeyEventPreIme : time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". The pachage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " may be doing too much work on its dispatch key pre-ime event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputEventMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method

.method public monitorDispatchPointerEventBegin(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchPointerEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_24
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitor;->mPointEventBeginTime:J

    :cond_30
    return-void
.end method

.method public monitorDispatchPointerEventEnd(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitor;->mPointEventBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1f

    return-void

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dispatchPointerEvent : time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". The pachage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " may be doing too much work on its dispatch pointer event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputEventMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method

.method public monitorFinishInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    iget v1, p0, Landroid/os/perfdebug/InputEventMonitor;->mDispatchSeqNumber:I

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitor;->mDispatchBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1d

    return-void

    :cond_1d
    invoke-direct {p0, p1}, Landroid/os/perfdebug/InputEventMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "PerfMonitor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " finishInputEvent : time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputEventMonitor"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void
.end method
