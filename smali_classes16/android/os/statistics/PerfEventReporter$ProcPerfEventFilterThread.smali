.class Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;
.super Ljava/lang/Thread;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcPerfEventFilterThread"
.end annotation


# static fields
.field private static final MACRO_EVENT_TYPE_INDEX_OFFSET:I = -0xfff0

.field private static final sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;


# instance fields
.field private mEarliestBeginUptimeMillisOfExecutingRootEvents:J

.field private final mLock:Ljava/lang/Object;

.field private mNeedFilter:Z

.field private final mPerfEventObjectCache:[Landroid/os/statistics/PerfEvent;

.field private mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

.field private mPerfEventSocketFdNo:I

.field private mReceivedEffectiveEvents:Landroid/os/statistics/FilteringPerfEventList;

.field private mReceivedSuspectedEvents:Landroid/os/statistics/FilteringPerfEventList;

.field private mSendingParcel:Landroid/os/Parcel;

.field private mSendingParcelNativePtr:J

.field private myTid:I

.field private final perfEventFilter:Landroid/os/statistics/PerfEventFilter;

.field private final tempCompletedEvents:Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;

    invoke-direct {v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    const-string v0, "Binder:filter-perf-event"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFdNo:I

    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedEffectiveEvents:Landroid/os/statistics/FilteringPerfEventList;

    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedSuspectedEvents:Landroid/os/statistics/FilteringPerfEventList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mNeedFilter:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mLock:Ljava/lang/Object;

    sget v0, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    mul-int/lit8 v0, v0, 0x5

    new-instance v8, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    mul-int/lit8 v2, v1, 0x2

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v4

    const/4 v6, 0x0

    const/high16 v7, 0x10000

    move-object v1, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;-><init>(IIJII)V

    iput-object v8, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->tempCompletedEvents:Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    new-instance v1, Landroid/os/statistics/PerfEventFilter;

    sget v2, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/os/statistics/PerfEventFilter;-><init>(ZI)V

    iput-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    const/16 v1, 0x17

    new-array v1, v1, [Landroid/os/statistics/PerfEvent;

    iput-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventObjectCache:[Landroid/os/statistics/PerfEvent;

    return-void
.end method

.method public static getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;
    .registers 1

    sget-object v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;

    return-object v0
.end method

.method private loopOnce()V
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    iget-boolean v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mNeedFilter:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_8b

    if-nez v5, :cond_23

    :try_start_b
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    invoke-virtual {v5}, Landroid/os/statistics/PerfEventFilter;->hasPendingPerfEvents()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mLock:Ljava/lang/Object;

    sget v6, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_21

    :cond_1c
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_21} :catch_22
    .catchall {:try_start_b .. :try_end_21} :catchall_8b

    :goto_21
    goto :goto_23

    :catch_22
    move-exception v5

    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_8b

    iget-boolean v4, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mNeedFilter:Z

    const/4 v5, 0x0

    if-nez v4, :cond_36

    invoke-static {}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->hasPendingPerfEvents()Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_36

    :cond_34
    move v4, v5

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v4, 0x1

    :goto_37
    if-eqz v4, :cond_5a

    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3c
    iget-wide v7, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mEarliestBeginUptimeMillisOfExecutingRootEvents:J

    move-wide v0, v7

    iget-object v7, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedEffectiveEvents:Landroid/os/statistics/FilteringPerfEventList;

    move-object v2, v7

    iget-object v7, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedSuspectedEvents:Landroid/os/statistics/FilteringPerfEventList;

    move-object v3, v7

    new-instance v7, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v7}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v7, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedEffectiveEvents:Landroid/os/statistics/FilteringPerfEventList;

    new-instance v7, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v7}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v7, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedSuspectedEvents:Landroid/os/statistics/FilteringPerfEventList;

    iput-boolean v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mNeedFilter:Z

    monitor-exit v6

    goto :goto_5a

    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_57

    throw v5

    :cond_5a
    :goto_5a
    if-nez v4, :cond_5d

    return-void

    :cond_5d
    iget v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->myTid:I

    const/4 v6, -0x4

    invoke-static {v5, v6}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    invoke-virtual {v5, v2, v3}, Landroid/os/statistics/PerfEventFilter;->send(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->tempCompletedEvents:Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/statistics/PerfEventFilter;->filter(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;J)V

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->tempCompletedEvents:Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->perfEventCount:I

    if-lez v5, :cond_80

    invoke-direct {p0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->obtainPerfEventSocketFd()V

    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->reset()V

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->tempCompletedEvents:Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;

    invoke-direct {p0, v5}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sendPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    :cond_80
    iget v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->myTid:I

    const/16 v6, -0xa

    invoke-static {v5, v6}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    invoke-static {}, Landroid/os/statistics/FilteringPerfEventCache;->compact()V

    return-void

    :catchall_8b
    move-exception v5

    :try_start_8c
    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v5
.end method

.method private obtainPerfEvent(I)Landroid/os/statistics/PerfEvent;
    .registers 5

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_6

    move v0, p1

    goto :goto_a

    :cond_6
    const v0, -0xfff0

    add-int/2addr v0, p1

    :goto_a
    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventObjectCache:[Landroid/os/statistics/PerfEvent;

    aget-object v1, v1, v0

    if-nez v1, :cond_1a

    invoke-static {p1}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventObjectCache:[Landroid/os/statistics/PerfEvent;

    aput-object v1, v2, v0

    :cond_1a
    return-object v1
.end method

.method private obtainPerfEventSocketFd()V
    .registers 3

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3d

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-interface {v0}, Lcom/android/internal/app/IPerfShielder;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v1

    :goto_13
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_37

    :cond_2a
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFdNo:I

    goto :goto_3d

    :cond_37
    :goto_37
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    const/4 v1, -0x1

    iput v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFdNo:I

    :cond_3d
    :goto_3d
    return-void
.end method

.method private sendPerfEvent(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 7

    iget-object v0, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    goto :goto_25

    :cond_c
    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    iget-wide v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcelNativePtr:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/statistics/FilteringPerfEvent;->writeToParcel(Landroid/os/Parcel;J)V

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    iget-wide v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcelNativePtr:J

    invoke-direct {p0, v0, v1, v2}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sendPerfEventParcel(Landroid/os/Parcel;J)Z

    goto :goto_63

    :cond_25
    :goto_25
    iget-object v0, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v0, :cond_37

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->obtainPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v0

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    iget-wide v3, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcelNativePtr:J

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/os/statistics/FilteringPerfEvent;->resolveTo(Landroid/os/statistics/PerfEvent;Landroid/os/Parcel;J)V

    goto :goto_3d

    :cond_37
    iget-object v0, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    iget v2, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput v2, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    :goto_3d
    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent;->resolveLazyInfo()V

    iget v2, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent;->isMeaningful()Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v2, v1}, Landroid/os/statistics/PerfEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    iget-wide v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcelNativePtr:J

    invoke-direct {p0, v1, v2, v3}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sendPerfEventParcel(Landroid/os/Parcel;J)Z

    :cond_62
    nop

    :goto_63
    return-void
.end method

.method private sendPerfEventParcel(Landroid/os/Parcel;J)Z
    .registers 10

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x6

    if-ge v0, v1, :cond_45

    iget v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFdNo:I

    const/16 v2, 0x1000

    invoke-static {v1, p1, p2, p3, v2}, Landroid/os/statistics/PerfEventSocket;->sendPerfEvent(ILandroid/os/Parcel;JI)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_14

    return v2

    :cond_14
    neg-int v3, v1

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v3, v4, :cond_38

    sget v4, Landroid/system/OsConstants;->EINTR:I

    if-ne v3, v4, :cond_1e

    goto :goto_38

    :cond_1e
    sget v2, Landroid/system/OsConstants;->EMSGSIZE:I

    if-eq v3, v2, :cond_45

    sget v2, Landroid/system/OsConstants;->ENOMEM:I

    if-ne v3, v2, :cond_27

    goto :goto_45

    :cond_27
    :try_start_27
    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_31
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    const/4 v2, -0x1

    iput v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mPerfEventSocketFdNo:I

    goto :goto_45

    :cond_38
    :goto_38
    :try_start_38
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v2

    :goto_41
    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_45
    :goto_45
    const/4 v0, 0x0

    return v0
.end method

.method private sendPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 8

    iget-object v0, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v1, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v1, :cond_9

    invoke-direct {p0, p1, v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sendPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_9
    iget v1, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->timesliceCount:I

    iget v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->firstSliceIndex:I

    iget-object v3, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_21

    add-int v5, v2, v4

    rem-int/2addr v5, v1

    aget-object v0, v3, v5

    iget v5, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v5, :cond_1e

    invoke-direct {p0, p1, v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sendPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_21
    return-void
.end method

.method private sendPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 8

    move-object v0, p2

    iget-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_3
    if-eq v1, v0, :cond_1f

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-virtual {p1, p2, v2}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->remove(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1b

    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1b

    invoke-direct {p0, v2}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->sendPerfEvent(Landroid/os/statistics/FilteringPerfEvent;)V

    :cond_1b
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_3

    :cond_1f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/statistics/PerfSuperviser;->setThreadPerfSupervisionOn(Z)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->myTid:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    :try_start_15
    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcel:Landroid/os/Parcel;

    const-string/jumbo v1, "mNativePtr"

    const-class v2, Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcelNativePtr:J
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_29

    goto :goto_2e

    :catch_29
    move-exception v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mSendingParcelNativePtr:J

    :goto_2e
    iget v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->myTid:I

    const/16 v1, -0xa

    invoke-static {v0, v1}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    :goto_35
    invoke-direct {p0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->loopOnce()V

    goto :goto_35
.end method

.method public send(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;J)V
    .registers 8

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedEffectiveEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v1, v1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedSuspectedEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v2, v2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/2addr v1, v2

    const/16 v2, 0x1388

    if-gt v1, v2, :cond_2d

    iget v1, p1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v1, :cond_19

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedEffectiveEvents:Landroid/os/statistics/FilteringPerfEventList;

    invoke-virtual {v1, p1}, Landroid/os/statistics/FilteringPerfEventList;->moveAllFrom(Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_19
    iget v1, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v1, :cond_22

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mReceivedSuspectedEvents:Landroid/os/statistics/FilteringPerfEventList;

    invoke-virtual {v1, p2}, Landroid/os/statistics/FilteringPerfEventList;->moveAllFrom(Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_22
    iput-wide p3, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mEarliestBeginUptimeMillisOfExecutingRootEvents:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mNeedFilter:Z

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_33

    :cond_2d
    invoke-static {p1}, Landroid/os/statistics/FilteringPerfEventCache;->recycleAllUnchecked(Landroid/os/statistics/FilteringPerfEventList;)V

    invoke-static {p2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleAllUnchecked(Landroid/os/statistics/FilteringPerfEventList;)V

    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method
