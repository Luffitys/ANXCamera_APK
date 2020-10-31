.class public Landroid/os/perfdebug/ViewMonitor;
.super Ljava/lang/Object;
.source "ViewMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewMonitor"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markDrawBegin(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static markDrawEnd()V
    .registers 2

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method

.method public static markLayoutBegin(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewLayout()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static markLayoutEnd()V
    .registers 2

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewLayout()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method

.method public static markMeasureBegin(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewMeasure()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "measure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static markMeasureEnd()V
    .registers 2

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewMeasure()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method

.method public static markOnDrawBegin(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDraw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static markOnDrawEnd()V
    .registers 2

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method
