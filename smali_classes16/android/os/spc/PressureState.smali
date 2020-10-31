.class public Landroid/os/spc/PressureState;
.super Ljava/lang/Object;
.source "PressureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/spc/PressureState$PressureListener;,
        Landroid/os/spc/PressureState$State;
    }
.end annotation


# static fields
.field public static final NS_PER_MS:J = 0xf4240L


# instance fields
.field private mCurState:Landroid/os/spc/PressureState$State;

.field private mEventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/spc/PSIEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/os/spc/PressureState$PressureListener;

.field private final mName:Ljava/lang/String;

.field private mPressureStallDurationMillis:J

.field private final mPressureThreshold:J

.field private final mQueueLock:Ljava/lang/Object;

.field private final mWindowNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    sget-object v0, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v0, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    iput-object p1, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/spc/PressureState;->mWindowNs:J

    iput-wide p4, p0, Landroid/os/spc/PressureState;->mPressureThreshold:J

    return-void
.end method

.method private pruneLatencyEvents(J)V
    .registers 11

    iget-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/spc/PSIEvent;

    iget-wide v2, p0, Landroid/os/spc/PressureState;->mWindowNs:J

    sub-long v2, p1, v2

    iget-wide v4, v1, Landroid/os/spc/PSIEvent;->timeNs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v4, v1, Landroid/os/spc/PSIEvent;->growthNs:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    :cond_33
    goto :goto_f

    :cond_34
    return-void
.end method

.method private updateCurrentState()V
    .registers 7

    sget-boolean v0, Landroid/os/spc/PSIMonitorSetting;->DEBUG:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-wide v2, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_WINDOW_NS:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s last %s ms mPressureStallDurationMillis:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPressureControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    iget-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v3, p0, Landroid/os/spc/PressureState;->mPressureThreshold:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3c

    sget-object v1, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    goto :goto_40

    :cond_3c
    sget-object v1, Landroid/os/spc/PressureState$State;->HIGH_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    :goto_40
    iget-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    if-eq v1, v0, :cond_4b

    iget-object v2, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    if-eqz v2, :cond_4b

    invoke-interface {v2, v1, v0}, Landroid/os/spc/PressureState$PressureListener;->onStateChanged(Landroid/os/spc/PressureState$State;Landroid/os/spc/PressureState$State;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public addPSIEvent(Landroid/os/spc/PSIEvent;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v3, p1, Landroid/os/spc/PSIEvent;->growthNs:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v1, p1, Landroid/os/spc/PSIEvent;->timeNs:J

    invoke-direct {p0, v1, v2}, Landroid/os/spc/PressureState;->pruneLatencyEvents(J)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    invoke-direct {p0}, Landroid/os/spc/PressureState;->updateCurrentState()V

    return-void

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public clearPSIEvents()V
    .registers 4

    iget-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-object v1, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-direct {p0}, Landroid/os/spc/PressureState;->updateCurrentState()V

    return-void

    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setListener(Landroid/os/spc/PressureState$PressureListener;)V
    .registers 2

    iput-object p1, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    return-void
.end method
