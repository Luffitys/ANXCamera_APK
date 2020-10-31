.class public Landroid/os/perfdebug/ChoreographerMonitor;
.super Ljava/lang/Object;
.source "ChoreographerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;
    }
.end annotation


# static fields
.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ChoreographerMonitor"


# instance fields
.field private mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorBeginTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "input"

    const-string v1, "animation"

    const-string v2, "insets_animation"

    const-string/jumbo v3, "traversal"

    const-string v4, "commit"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/perfdebug/ChoreographerMonitor;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/perfdebug/ChoreographerMonitor;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public monitorCallbackExecuteBegin(ILjava/lang/Object;J)V
    .registers 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewDraw()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-wide/16 v1, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/perfdebug/ChoreographerMonitor;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2b
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    iget-object v3, p0, Landroid/os/perfdebug/ChoreographerMonitor;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;

    invoke-direct {v4, p1, v0, v1, v2}, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    return-void
.end method

.method public monitorCallbackExecuteEnd()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method

.method public monitorDoFrameBegin()V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ChoreographerMonitor;->mMonitorBeginTime:J

    :cond_c
    return-void
.end method

.method public monitorDoFrameEnd()V
    .registers 8

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/ChoreographerMonitor;->mMonitorBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-lez v2, :cond_7c

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " choreDoFrame : time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms vsyncFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/perfdebug/VsyncFrame;->getInstance()Landroid/os/perfdebug/VsyncFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/perfdebug/VsyncFrame;->getCurFrame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/perfdebug/ChoreographerMonitor;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;

    const-string v5, " (title="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/perfdebug/ChoreographerMonitor;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    iget v6, v4, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;->callbackType:I

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;->action:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " latency="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;->latencyMillis:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChoreographerMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    iget-object v2, p0, Landroid/os/perfdebug/ChoreographerMonitor;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_81
    return-void
.end method
