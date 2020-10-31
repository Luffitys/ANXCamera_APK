.class public Lcom/android/internal/os/LooperStats$ExportedEntry;
.super Ljava/lang/Object;
.source "LooperStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LooperStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedEntry"
.end annotation


# instance fields
.field public final cpuUsageMicros:J

.field public final delayMillis:J

.field public final exceptionCount:J

.field public final handlerClassName:Ljava/lang/String;

.field public final isInteractive:Z

.field public final maxCpuUsageMicros:J

.field public final maxDelayMillis:J

.field public final maxLatencyMicros:J

.field public final messageCount:J

.field public final messageName:Ljava/lang/String;

.field public final recordedDelayMessageCount:J

.field public final recordedMessageCount:J

.field public final threadName:Ljava/lang/String;

.field public final totalLatencyMicros:J

.field public final workSourceUid:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/LooperStats$Entry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/internal/os/LooperStats$Entry;->workSourceUid:I

    iput v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    goto :goto_2e

    :cond_28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    :goto_2e
    iget-boolean v0, p1, Lcom/android/internal/os/LooperStats$Entry;->isInteractive:Z

    iput-boolean v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    iget-object v0, p1, Lcom/android/internal/os/LooperStats$Entry;->messageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->recordedMessageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->exceptionCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->totalLatencyMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->maxLatencyMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->cpuUsageMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->maxCpuUsageMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->delayMillis:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->maxDelayMillis:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    iget-wide v0, p1, Lcom/android/internal/os/LooperStats$Entry;->recordedDelayMessageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    return-void
.end method
