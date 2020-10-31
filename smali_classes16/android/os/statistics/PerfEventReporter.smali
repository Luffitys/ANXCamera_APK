.class public Landroid/os/statistics/PerfEventReporter;
.super Ljava/lang/Object;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;,
        Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;
    }
.end annotation


# static fields
.field private static final DEBUGGING:Z = false

.field private static final MAX_RETRY_WRITE_COUNT:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->waitForPerfEventArrived(I)V

    return-void
.end method

.method static synthetic access$100([Landroid/os/statistics/FilteringPerfEvent;)I
    .registers 2

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->fetchProcUserspacePerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([Landroid/os/statistics/FilteringPerfEvent;)I
    .registers 2

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->fetchProcKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result v0

    return v0
.end method

.method private static native fetchProcKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method private static native fetchProcUserspacePerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method public static native getEarliestBeginUptimeMillisOfExecutingRootEvents()J
.end method

.method private static native nativeReport(ILandroid/os/statistics/PerfEvent;)V
.end method

.method public static report(Landroid/os/statistics/PerfEvent;)V
    .registers 2

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v0, p0}, Landroid/os/statistics/PerfEventReporter;->nativeReport(ILandroid/os/statistics/PerfEvent;)V

    return-void
.end method

.method static start()V
    .registers 1

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSystemServer()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x708

    goto :goto_12

    :cond_10
    const/16 v0, 0x258

    :goto_12
    invoke-static {v0}, Landroid/os/statistics/FilteringPerfEventCache;->setCapacity(I)V

    invoke-static {}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->start()V

    invoke-static {}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->start()V

    return-void
.end method

.method private static native waitForPerfEventArrived(I)V
.end method
