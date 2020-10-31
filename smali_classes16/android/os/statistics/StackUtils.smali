.class Landroid/os/statistics/StackUtils;
.super Ljava/lang/Object;
.source "StackUtils.java"


# static fields
.field private static final MAX_STACK_DEPTH:I = 0x20

.field private static final MAX_STACK_LENGH:I = 0x400

.field public static final emptyJsonedStack:Lorg/json/JSONArray;

.field public static final emptyStack:[Ljava/lang/String;

.field private static final sStackTraceStringBuilder:Ljava/lang/StringBuilder;

.field private static final sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final suggestedStackTopMethodFullNames:[Ljava/lang/String;

.field private static volatile topClassMethodSimpleNames:[Ljava/util/ArrayList;

.field private static volatile topClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 75

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Landroid/os/statistics/StackUtils;->emptyJsonedStack:Lorg/json/JSONArray;

    const-string v2, "java.lang.Thread.sleep"

    const-string v3, "java.lang.Thread.join"

    const-string v4, "java.util.concurrent.Semaphore.acquire"

    const-string v5, "java.util.concurrent.Semaphore.acquireUninterruptibly"

    const-string v6, "java.util.concurrent.Semaphore.tryAcquire"

    const-string v7, "java.util.concurrent.Semaphore.release"

    const-string v8, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquire"

    const-string v9, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireInterruptibly"

    const-string v10, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireNanos"

    const-string v11, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.release"

    const-string v12, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireShared"

    const-string v13, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireSharedInterruptibly"

    const-string v14, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireSharedNanos"

    const-string v15, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.releaseShared"

    const-string v16, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signal"

    const-string v17, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signalAll"

    const-string v18, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.await"

    const-string v19, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitNanos"

    const-string v20, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUntil"

    const-string v21, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUninterruptibly"

    const-string v22, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire"

    const-string v23, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly"

    const-string v24, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireNanos"

    const-string v25, "java.util.concurrent.locks.AbstractQueuedSynchronizer.release"

    const-string v26, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireShared"

    const-string v27, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly"

    const-string v28, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireSharedNanos"

    const-string v29, "java.util.concurrent.locks.AbstractQueuedSynchronizer.releaseShared"

    const-string v30, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signal"

    const-string v31, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signalAll"

    const-string v32, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await"

    const-string v33, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos"

    const-string v34, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUntil"

    const-string v35, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUninterruptibly"

    const-string v36, "java.util.concurrent.locks.ReentrantLock.lock"

    const-string v37, "java.util.concurrent.locks.ReentrantLock.lockInterruptibly"

    const-string v38, "java.util.concurrent.locks.ReentrantLock.tryLock"

    const-string v39, "java.util.concurrent.locks.ReentrantLock.unlock"

    const-string v40, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lock"

    const-string v41, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lockInterruptibly"

    const-string v42, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.tryLock"

    const-string v43, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.unlock"

    const-string v44, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lock"

    const-string v45, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lockInterruptibly"

    const-string v46, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.tryLock"

    const-string v47, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.unlock"

    const-string v48, "java.util.concurrent.locks.StampedLock$ReadLockView.lock"

    const-string v49, "java.util.concurrent.locks.StampedLock$ReadLockView.lockInterruptibly"

    const-string v50, "java.util.concurrent.locks.StampedLock$ReadLockView.tryLock"

    const-string v51, "java.util.concurrent.locks.StampedLock$ReadLockView.unlock"

    const-string v52, "java.util.concurrent.locks.StampedLock$WriteLockView.lock"

    const-string v53, "java.util.concurrent.locks.StampedLock$WriteLockView.lockInterruptibly"

    const-string v54, "java.util.concurrent.locks.StampedLock$WriteLockView.tryLock"

    const-string v55, "java.util.concurrent.locks.StampedLock$WriteLockView.unlock"

    const-string v56, "java.util.concurrent.locks.StampedLock.writeLock"

    const-string v57, "java.util.concurrent.locks.StampedLock.tryWriteLock"

    const-string v58, "java.util.concurrent.locks.StampedLock.writeLockInterruptibly"

    const-string v59, "java.util.concurrent.locks.StampedLock.readLock"

    const-string v60, "java.util.concurrent.locks.StampedLock.tryReadLock"

    const-string v61, "java.util.concurrent.locks.StampedLock.readLockInterruptibly"

    const-string v62, "java.util.concurrent.locks.StampedLock.unlockWrite"

    const-string v63, "java.util.concurrent.locks.StampedLock.unlockRead"

    const-string v64, "java.util.concurrent.locks.StampedLock.unlock"

    const-string v65, "java.util.concurrent.locks.StampedLock.tryConvertToReadLock"

    const-string v66, "java.util.concurrent.locks.StampedLock.tryConvertToWriteLock"

    const-string v67, "java.util.concurrent.locks.StampedLock.tryConvertToOptimisticRead"

    const-string v68, "java.util.concurrent.locks.StampedLock.tryUnlockWrite"

    const-string v69, "java.util.concurrent.locks.StampedLock.tryUnlockRead"

    const-string v70, "java.util.concurrent.locks.StampedLock.unstampedUnlockRead"

    const-string v71, "java.util.concurrent.locks.LockSupport.park"

    const-string v72, "java.util.concurrent.locks.LockSupport.parkNanos"

    const-string v73, "java.util.concurrent.locks.LockSupport.parkUntil"

    const-string v74, "java.util.concurrent.locks.LockSupport.unpark"

    filled-new-array/range {v2 .. v74}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTrace(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    :try_start_f
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception v2

    const-string v3, ""

    aput-object v3, v0, v1

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public static getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v7, 0x400

    if-eqz v3, :cond_38

    array-length v8, v3

    if-lez v8, :cond_38

    const/4 v8, 0x0

    :goto_17
    array-length v9, v3

    if-ge v8, v9, :cond_35

    aget-object v9, v3, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_23

    goto :goto_32

    :cond_23
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v0, v10

    if-ge v4, v6, :cond_38

    if-lt v0, v7, :cond_32

    goto :goto_38

    :cond_32
    :goto_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_35
    move v8, v4

    move v4, v0

    goto :goto_3a

    :cond_38
    :goto_38
    move v8, v4

    move v4, v0

    :goto_3a
    if-ge v8, v6, :cond_1f8

    if-ge v4, v7, :cond_1f8

    if-eqz v1, :cond_1f8

    array-length v0, v1

    if-nez v0, :cond_45

    goto/16 :goto_1f8

    :cond_45
    sget-object v0, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-nez v0, :cond_db

    const-class v10, Landroid/os/statistics/StackUtils;

    monitor-enter v10

    :try_start_4d
    sget-object v0, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    if-nez v0, :cond_d6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    sget-object v12, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    array-length v13, v12

    move v14, v9

    :goto_5b
    if-ge v14, v13, :cond_9c

    aget-object v0, v12, v14
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_d8

    move-object v15, v0

    :try_start_60
    const-string v0, "."

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v18, v17

    move-object/from16 v6, v18

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    if-nez v18, :cond_8d

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    move-object/from16 v9, v18

    invoke-virtual {v11, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    :cond_8d
    move-object/from16 v9, v18

    :goto_8f
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_60 .. :try_end_92} :catch_93
    .catchall {:try_start_60 .. :try_end_92} :catchall_d8

    goto :goto_94

    :catch_93
    move-exception v0

    :goto_94
    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x20

    const/16 v7, 0x400

    const/4 v9, 0x0

    goto :goto_5b

    :cond_9c
    :try_start_9c
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Class;

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    array-length v6, v0

    new-array v6, v6, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    aput-object v12, v0, v7

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    aput-object v13, v6, v7

    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_b8

    :cond_d2
    sput-object v0, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    sput-object v6, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    :cond_d6
    monitor-exit v10

    goto :goto_db

    :catchall_d8
    move-exception v0

    monitor-exit v10
    :try_end_da
    .catchall {:try_start_9c .. :try_end_da} :catchall_d8

    throw v0

    :cond_db
    :goto_db
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_10c

    array-length v9, v2

    if-lt v9, v7, :cond_ec

    const/4 v9, 0x0

    aget-object v10, v2, v9

    const-class v9, Ljava/lang/Thread;

    if-ne v10, v9, :cond_ec

    const/4 v6, 0x1

    goto :goto_10c

    :cond_ec
    array-length v9, v2

    const/4 v10, 0x4

    if-lt v9, v10, :cond_10c

    const/4 v9, 0x0

    aget-object v10, v2, v9

    const-class v9, Ljava/lang/Object;

    if-ne v10, v9, :cond_10c

    aget-object v9, v2, v7

    const-class v10, Ljava/lang/Thread;

    if-eq v9, v10, :cond_10b

    const/4 v9, 0x2

    aget-object v9, v2, v9

    const-class v10, Ljava/lang/Thread;

    if-eq v9, v10, :cond_10b

    const/4 v9, 0x3

    aget-object v9, v2, v9

    const-class v10, Ljava/lang/Thread;

    if-ne v9, v10, :cond_10c

    :cond_10b
    const/4 v6, 0x1

    :cond_10c
    :goto_10c
    if-eqz v6, :cond_140

    array-length v9, v1

    sub-int/2addr v9, v7

    move v0, v9

    :goto_111
    if-lez v0, :cond_140

    aget-object v9, v2, v0

    if-eqz v9, :cond_13c

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_119
    sget-object v12, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    array-length v12, v12

    if-ge v11, v12, :cond_129

    sget-object v12, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    aget-object v12, v12, v11

    if-ne v12, v9, :cond_126

    move v10, v11

    goto :goto_129

    :cond_126
    add-int/lit8 v11, v11, 0x1

    goto :goto_119

    :cond_129
    :goto_129
    if-ltz v10, :cond_13c

    aget-object v11, v1, v0

    sget-object v12, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    aget-object v12, v12, v10

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13c

    goto :goto_140

    :cond_13c
    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_111

    :cond_140
    :goto_140
    const/4 v9, 0x0

    sget-object v10, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_14d

    sget-object v7, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_154

    :cond_14d
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_154
    const/4 v10, 0x0

    move v11, v0

    :goto_156
    array-length v12, v1

    if-ge v11, v12, :cond_1e1

    aget-object v12, v1, v11

    if-nez v12, :cond_163

    const/16 v14, 0x20

    const/16 v15, 0x400

    goto/16 :goto_1dd

    :cond_163
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    if-nez v2, :cond_16b

    const/4 v13, 0x0

    goto :goto_16d

    :cond_16b
    aget-object v13, v2, v11

    :goto_16d
    const/16 v14, 0x2e

    if-eqz v13, :cond_17c

    if-ne v9, v13, :cond_17c

    const/16 v15, 0x2d

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_186

    :cond_17c
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_186
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_1c5

    const/4 v10, 0x1

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v14

    if-eqz v14, :cond_19c

    const-string v14, "(Native)"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c5

    :cond_19c
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c0

    const/16 v14, 0x28

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x3a

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v14, 0x29

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c5

    :cond_1c0
    const-string v14, "(None)"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c5
    :goto_1c5
    move-object v9, v13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/2addr v4, v14

    const/16 v14, 0x20

    if-ge v8, v14, :cond_1e1

    const/16 v15, 0x400

    if-lt v4, v15, :cond_1dd

    goto :goto_1e1

    :cond_1dd
    :goto_1dd
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_156

    :cond_1e1
    :goto_1e1
    sget-object v11, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    if-ne v7, v11, :cond_1eb

    sget-object v11, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1eb
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    return-object v11

    :cond_1f8
    :goto_1f8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
