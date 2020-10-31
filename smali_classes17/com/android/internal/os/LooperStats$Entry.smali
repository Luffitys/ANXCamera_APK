.class Lcom/android/internal/os/LooperStats$Entry;
.super Ljava/lang/Object;
.source "LooperStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LooperStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public cpuUsageMicro:J

.field public delayMillis:J

.field public exceptionCount:J

.field public final handler:Landroid/os/Handler;

.field public final isInteractive:Z

.field public maxCpuUsageMicro:J

.field public maxDelayMillis:J

.field public maxLatencyMicro:J

.field public messageCount:J

.field public final messageName:Ljava/lang/String;

.field public recordedDelayMessageCount:J

.field public recordedMessageCount:J

.field public totalLatencyMicro:J

.field public final workSourceUid:I


# direct methods
.method constructor <init>(Landroid/os/Message;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/os/Message;->workSourceUid:I

    iput v0, p0, Lcom/android/internal/os/LooperStats$Entry;->workSourceUid:I

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$Entry;->messageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/os/LooperStats$Entry;->isInteractive:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/LooperStats$Entry;->workSourceUid:I

    iput-object p1, p0, Lcom/android/internal/os/LooperStats$Entry;->messageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/LooperStats$Entry;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/LooperStats$Entry;->isInteractive:Z

    return-void
.end method

.method static idFor(Landroid/os/Message;Z)I
    .registers 5

    const/4 v0, 0x7

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Message;->workSourceUid:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    if-eqz p1, :cond_2f

    const/16 v2, 0x4cf

    goto :goto_31

    :cond_2f
    const/16 v2, 0x4d5

    :goto_31
    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_48

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_48
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Message;->what:I

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->messageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->recordedMessageCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->exceptionCount:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->totalLatencyMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->maxLatencyMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->cpuUsageMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->maxCpuUsageMicro:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->delayMillis:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->maxDelayMillis:J

    iput-wide v0, p0, Lcom/android/internal/os/LooperStats$Entry;->recordedDelayMessageCount:J

    return-void
.end method
