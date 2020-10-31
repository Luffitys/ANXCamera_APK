.class Landroid/os/MessageMonitor$MessageMonitorInfo;
.super Ljava/lang/Object;
.source "MessageMonitor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageMonitorInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/MessageMonitor$MessageMonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field callbackName:Ljava/lang/String;

.field curProcState:I

.field dispatchBinderDelay:J

.field dispatchBlkioDelay:J

.field dispatchCurrentTime:J

.field dispatchReclaimDelay:J

.field dispatchRunnableTime:J

.field dispatchRunningTime:J

.field dispatchSlowPath:J

.field dispatchSwapinDelay:J

.field dispatchTime:J

.field finishBinderDelay:J

.field finishBlkioDelay:J

.field finishReclaimDelay:J

.field finishRunnableTime:J

.field finishRunningTime:J

.field finishSlowPath:J

.field finishSwapinDelay:J

.field finishTime:J

.field protected mSeq:J

.field msgWhat:I

.field planCurrentTime:J

.field planTime:J

.field targetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/MessageMonitor$MessageMonitorInfo$1;

    invoke-direct {v0}, Landroid/os/MessageMonitor$MessageMonitorInfo$1;-><init>()V

    sput-object v0, Landroid/os/MessageMonitor$MessageMonitorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->curProcState:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->curProcState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planCurrentTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    return-void
.end method


# virtual methods
.method createMonitorDigest()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getBinderDelay()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishBinderDelay:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchBinderDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getBlkioDelay()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishBlkioDelay:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchBlkioDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLatencyMillis()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchTime:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getMessageSummary(Landroid/os/Message;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method getMonitorDigest()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method getMonitorMessage()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method getReclaimDelay()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishReclaimDelay:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchReclaimDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getRunnableTime()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishRunnableTime:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchRunnableTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getRunningTime()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishRunningTime:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchRunningTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getShortTime()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_31

    move-wide v3, v0

    :cond_31
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getSlowPathTime()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishSlowPath:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchSlowPath:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getSwapinDelay()J
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishSwapinDelay:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchSwapinDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getTookTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getTookTimeAfterDispatch()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getTotalMillis()J
    .registers 5

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getWallMillis()J
    .registers 5

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method init(Landroid/os/Message;J)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planCurrentTime:J

    goto :goto_22

    :cond_13
    iput-wide p2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planCurrentTime:J

    :goto_22
    return-void
.end method

.method isFinished()Z
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method markDispatch(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    const-string v1, ""

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_12

    :cond_8
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->targetName:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_19

    goto :goto_23

    :cond_19
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_23
    iput-object v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->msgWhat:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchCurrentTime:J

    const/4 v0, 0x7

    new-array v0, v0, [J

    invoke-static {v0}, Landroid/os/MessageMonitor;->nGetThreadDelay([J)V

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchBlkioDelay:J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchSwapinDelay:J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchReclaimDelay:J

    const/4 v1, 0x3

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchRunningTime:J

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchRunnableTime:J

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchBinderDelay:J

    const/4 v1, 0x6

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchSlowPath:J

    return-void
.end method

.method markFinish(Landroid/os/Message;)V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    const/4 v0, 0x7

    new-array v0, v0, [J

    invoke-static {v0}, Landroid/os/MessageMonitor;->nGetThreadDelay([J)V

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishBlkioDelay:J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishSwapinDelay:J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishReclaimDelay:J

    const/4 v1, 0x3

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishRunningTime:J

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishRunnableTime:J

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishBinderDelay:J

    const/4 v1, 0x6

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishSlowPath:J

    return-void
.end method

.method reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planCurrentTime:J

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchTime:J

    iput-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->targetName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->msgWhat:I

    return-void
.end method

.method toShortString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->mSeq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string/jumbo v2, "ms "

    if-lez v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "running="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runnable="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_93

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "io="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_b7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "swapin="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_db

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reclaim="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_db
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBinderDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_fe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binder="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBinderDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fe
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSlowPathTime()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_122

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "slowpath="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSlowPathTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_122
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_145

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "late="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->targetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_190

    :cond_17a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->msgWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-string/jumbo v0, "ms"

    const-string v1, ""

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->targetName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->mSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planCurrentTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " plan="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planCurrentTime:J

    invoke-static {v7, v8}, Landroid/os/MessageMonitor;->formatCurrentTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " late="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_176

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " running="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_c7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " runnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunnableTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c7
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_ea

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " io="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBlkioDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ea
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_10d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " swapin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSwapinDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10d
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_130

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " reclaim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getReclaimDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_130
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBinderDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_153

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " binder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getBinderDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_153
    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSlowPathTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_176

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " slowpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getSlowPathTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " h="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ab

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " c="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c1

    :cond_1ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " w="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->msgWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c1
    :goto_1c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c5} :catch_1c7

    move-object v1, v0

    goto :goto_1e2

    :catch_1c7
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageString failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MessageMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e2
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planCurrentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
