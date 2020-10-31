.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static sMainLooper:Landroid/os/Looper;

.field private static sObserver:Landroid/os/Looper$Observer;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInLoop:Z

.field private mLogging:Landroid/util/Printer;

.field private mMonitor:Landroid/os/MessageMonitor;

.field final mQueue:Landroid/os/MessageQueue;

.field private mSlowDeliveryThresholdMs:J

.field private mSlowDispatchThresholdMs:J

.field final mThread:Ljava/lang/Thread;

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    new-instance v0, Landroid/os/MessageMonitor;

    invoke-direct {v0}, Landroid/os/MessageMonitor;-><init>()V

    iput-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/MessageMonitor;

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/MessageMonitor;->setThreadNameAndTid(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .registers 2

    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static loop()V
    .registers 42

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_274

    iget-boolean v0, v1, Landroid/os/Looper;->mInLoop:Z

    const-string v2, "Looper"

    if-eqz v0, :cond_11

    const-string v0, "Loop again would have the queued messages be executed before this one completed."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/os/Looper;->mInLoop:Z

    iget-object v3, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "log.looper."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".slow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x0

    :goto_4d
    invoke-virtual {v3}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v15

    if-nez v15, :cond_54

    return-void

    :cond_54
    iget-object v13, v1, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    const-string v14, " "

    if-eqz v13, :cond_82

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>>>> Dispatching to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v15, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_82
    sget-object v11, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/MessageMonitor;

    move-result-object v9

    iget-object v10, v15, Landroid/os/Message;->monitorInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v9, v15, v10}, Landroid/os/MessageMonitor;->markDispatch(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V

    iget-wide v9, v1, Landroid/os/Looper;->mTraceTag:J

    move/from16 v17, v8

    iget-wide v7, v1, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    move-wide/from16 v18, v7

    iget-wide v7, v1, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    if-lez v6, :cond_a0

    move-object/from16 v25, v1

    int-to-long v0, v6

    int-to-long v7, v6

    move-wide/from16 v26, v0

    goto :goto_a4

    :cond_a0
    move-object/from16 v25, v1

    move-wide/from16 v26, v18

    :goto_a4
    const-wide/16 v18, 0x0

    cmp-long v0, v7, v18

    if-lez v0, :cond_b2

    iget-wide v0, v15, Landroid/os/Message;->when:J

    cmp-long v0, v0, v18

    if-lez v0, :cond_b2

    const/4 v0, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v0, 0x0

    :goto_b3
    move v1, v0

    cmp-long v0, v26, v18

    if-lez v0, :cond_ba

    const/4 v0, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    move/from16 v28, v0

    if-nez v1, :cond_c4

    if-eqz v28, :cond_c2

    goto :goto_c4

    :cond_c2
    const/4 v0, 0x0

    goto :goto_c5

    :cond_c4
    :goto_c4
    const/4 v0, 0x1

    :goto_c5
    move/from16 v29, v0

    move/from16 v30, v28

    cmp-long v0, v9, v18

    if-eqz v0, :cond_dc

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_dc
    if-eqz v29, :cond_e3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    goto :goto_e5

    :cond_e3
    move-wide/from16 v20, v18

    :goto_e5
    move-wide/from16 v31, v20

    const/4 v0, 0x0

    if-eqz v11, :cond_f0

    invoke-interface {v11}, Landroid/os/Looper$Observer;->messageDispatchStarting()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_f1

    :cond_f0
    move-object v12, v0

    :goto_f1
    iget v0, v15, Landroid/os/Message;->workSourceUid:I

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v33

    :try_start_f7
    iget-object v0, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fc} :catch_254
    .catchall {:try_start_f7 .. :try_end_fc} :catchall_246

    if-eqz v11, :cond_120

    :try_start_fe
    invoke-interface {v11, v12, v15}, Landroid/os/Looper$Observer;->messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_120

    :catchall_102
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v35, v3

    move/from16 v36, v6

    move-wide/from16 v37, v9

    move-object v3, v11

    move-object v6, v12

    move-object v1, v13

    move-object v11, v15

    goto/16 :goto_269

    :catch_111
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v35, v3

    move/from16 v36, v6

    move-wide/from16 v37, v9

    move-object v3, v11

    move-object v6, v12

    move-object v1, v13

    move-object v11, v15

    goto/16 :goto_261

    :cond_120
    :goto_120
    if-eqz v30, :cond_129

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_126} :catch_111
    .catchall {:try_start_fe .. :try_end_126} :catchall_102

    move-wide/from16 v21, v20

    goto :goto_12b

    :cond_129
    move-wide/from16 v21, v18

    :goto_12b
    invoke-static/range {v33 .. v34}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    cmp-long v0, v9, v18

    if-eqz v0, :cond_135

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    :cond_135
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_148

    move-object/from16 v35, v3

    iget-object v3, v15, Landroid/os/Message;->monitorInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

    move/from16 v36, v6

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessState()I

    move-result v6

    iput v6, v3, Landroid/os/MessageMonitor$MessageMonitorInfo;->curProcState:I

    goto :goto_14c

    :cond_148
    move-object/from16 v35, v3

    move/from16 v36, v6

    :goto_14c
    invoke-virtual/range {v25 .. v25}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/MessageMonitor;

    move-result-object v3

    iget-object v6, v15, Landroid/os/Message;->monitorInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v3, v15, v6}, Landroid/os/MessageMonitor;->markFinish(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V

    if-eqz v1, :cond_1a8

    if-eqz v17, :cond_186

    move-object v6, v0

    move v3, v1

    iget-wide v0, v15, Landroid/os/Message;->when:J

    sub-long v0, v31, v0

    const-wide/16 v18, 0xa

    cmp-long v0, v0, v18

    if-gtz v0, :cond_179

    const-string v0, "Drained"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move/from16 v39, v3

    move-object/from16 v40, v6

    move-wide/from16 v37, v9

    move-object v3, v11

    move-object v6, v12

    move-object v1, v13

    move-object/from16 v41, v15

    move v9, v0

    move-object v0, v14

    goto :goto_1b6

    :cond_179
    move/from16 v39, v3

    move-object/from16 v40, v6

    move-wide/from16 v37, v9

    move-object v3, v11

    move-object v6, v12

    move-object v1, v13

    move-object v0, v14

    move-object/from16 v41, v15

    goto :goto_1b4

    :cond_186
    move-object v6, v0

    move v3, v1

    iget-wide v0, v15, Landroid/os/Message;->when:J

    const-string v16, "delivery"

    move-wide/from16 v37, v9

    move-wide v9, v7

    move/from16 v39, v3

    move-object/from16 v40, v6

    move-object v3, v11

    move-object v6, v12

    move-wide v11, v0

    move-object v1, v13

    move-object v0, v14

    move-wide/from16 v13, v31

    move-object/from16 v41, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v41

    invoke-static/range {v9 .. v16}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v9

    if-eqz v9, :cond_1b4

    const/4 v9, 0x1

    goto :goto_1b6

    :cond_1a8
    move-object/from16 v40, v0

    move/from16 v39, v1

    move-wide/from16 v37, v9

    move-object v3, v11

    move-object v6, v12

    move-object v1, v13

    move-object v0, v14

    move-object/from16 v41, v15

    :cond_1b4
    :goto_1b4
    move/from16 v9, v17

    :goto_1b6
    if-eqz v28, :cond_1c3

    const-string v23, "dispatch"

    move-wide/from16 v17, v26

    move-wide/from16 v19, v31

    move-object/from16 v24, v41

    invoke-static/range {v17 .. v24}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    :cond_1c3
    if-eqz v1, :cond_1e6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<<<<< Finished to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v41

    iget-object v12, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1e8

    :cond_1e6
    move-object/from16 v11, v41

    :goto_1e8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    cmp-long v10, v4, v12

    if-eqz v10, :cond_238

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Thread identity changed from 0x"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to 0x"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " while dispatching to "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " what="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Landroid/os/Message;->what:I

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_238
    invoke-virtual {v11}, Landroid/os/Message;->recycleUnchecked()V

    move v8, v9

    move-object/from16 v1, v25

    move-object/from16 v3, v35

    move/from16 v6, v36

    const/4 v0, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4d

    :catchall_246
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v35, v3

    move/from16 v36, v6

    move-wide/from16 v37, v9

    move-object v3, v11

    move-object v6, v12

    move-object v1, v13

    move-object v11, v15

    goto :goto_269

    :catch_254
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v35, v3

    move/from16 v36, v6

    move-wide/from16 v37, v9

    move-object v3, v11

    move-object v6, v12

    move-object v1, v13

    move-object v11, v15

    :goto_261
    if-eqz v3, :cond_266

    :try_start_263
    invoke-interface {v3, v6, v11, v0}, Landroid/os/Looper$Observer;->dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V

    :cond_266
    nop

    throw v0
    :try_end_268
    .catchall {:try_start_263 .. :try_end_268} :catchall_268

    :catchall_268
    move-exception v0

    :goto_269
    invoke-static/range {v33 .. v34}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    cmp-long v2, v37, v18

    if-eqz v2, :cond_273

    invoke-static/range {v37 .. v38}, Landroid/os/Trace;->traceEnd(J)V

    :cond_273
    throw v0

    :cond_274
    move-object/from16 v25, v1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static myLooper()Landroid/os/Looper;
    .registers 1

    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .registers 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    return-void
.end method

.method private static prepare(Z)V
    .registers 3

    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepareMainLooper()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_1b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/MessageMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/MessageMonitor;->enableMonitorMessage(Z)V

    monitor-exit v0

    return-void

    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static setObserver(Landroid/os/Looper$Observer;)V
    .registers 1

    sput-object p0, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    return-void
.end method

.method private static showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .registers 12

    sub-long v0, p4, p2

    cmp-long v2, v0, p0

    if-gez v2, :cond_8

    const/4 v2, 0x0

    return v2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p7, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Looper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/MessageMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/MessageMonitor;->dumpAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/MessageMonitor;

    invoke-virtual {v0, p1, p2}, Landroid/os/MessageMonitor;->dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v2, :cond_2c

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/MessageQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getMessageMonitor()Landroid/os/MessageMonitor;
    .registers 2

    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/MessageMonitor;

    return-object v0
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .registers 2

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isCurrentThread()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public quit()V
    .registers 3

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    return-void
.end method

.method public quitSafely()V
    .registers 3

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .registers 2

    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    return-void
.end method

.method public setSlowLogThresholdMs(JJ)V
    .registers 5

    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    return-void
.end method

.method public setTraceTag(J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
