.class public Landroid/util/TimingsTraceLog;
.super Ljava/lang/Object;
.source "TimingsTraceLog.java"


# static fields
.field private static final DEBUG_BOOT_TIME:Z

.field private static final MAX_NESTED_CALLS:I = 0xa


# instance fields
.field private mCurrentLevel:I

.field private final mMaxNestedCalls:I

.field private final mStartNames:[Ljava/lang/String;

.field private final mStartTimes:[J

.field private final mTag:Ljava/lang/String;

.field private final mThreadId:J

.field private final mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;JI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iput-object p1, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    iput p4, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lez p4, :cond_21

    new-array v0, p4, [Ljava/lang/String;

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    new-array v0, p4, [J

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    goto :goto_26

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    :goto_26
    return-void
.end method

.method private assertSameThread()V
    .registers 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    return-void

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance of TimingsTraceLog can only be called from the thread it was created on (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), but was from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getUnfinishedTracesForDebug()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    if-eqz v0, :cond_22

    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_9

    goto :goto_22

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_13
    iget v2, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gt v1, v2, :cond_21

    iget-object v2, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public logDuration(Ljava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " took to complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public traceBegin(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lt v1, v2, :cond_3c

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not tracing duration of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' because already reached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " levels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iget-object v1, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    return-void
.end method

.method public traceEnd()V
    .registers 8

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_1a

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "traceEnd called more times than traceBegin"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    iget-object v1, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    iget v4, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aget-wide v5, v3, v4

    sub-long/2addr v1, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    return-void
.end method
