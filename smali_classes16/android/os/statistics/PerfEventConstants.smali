.class public Landroid/os/statistics/PerfEventConstants;
.super Ljava/lang/Object;
.source "PerfEventConstants.java"


# static fields
.field private static final EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_TYPE_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final FIELD_END_REAL_TIME:Ljava/lang/String; = "endRealTime"

.field public static final FIELD_END_TIME:Ljava/lang/String; = "endTime"

.field public static final FIELD_EVENT_FLAGS:Ljava/lang/String; = "eventFlags"

.field public static final FIELD_EVENT_SEQ:Ljava/lang/String; = "seq"

.field public static final FIELD_EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final FIELD_EVENT_TYPE_NAME:Ljava/lang/String; = "eventTypeName"

.field public static final FIELD_OCCUR_TIME:Ljava/lang/String; = "occurTime"

.field public static final FIELD_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final FIELD_PID:Ljava/lang/String; = "pid"

.field public static final FIELD_PROCESS_NAME:Ljava/lang/String; = "processName"

.field public static final FIELD_RUNNABLE_TIME:Ljava/lang/String; = "runnableTime"

.field public static final FIELD_RUNNING_TIME:Ljava/lang/String; = "runningTime"

.field public static final FIELD_SCHED_POLICY:Ljava/lang/String; = "policy"

.field public static final FIELD_SCHED_PRIORITY:Ljava/lang/String; = "priority"

.field public static final FIELD_SLEEPING_TIME:Ljava/lang/String; = "sleepingTime"

.field public static final FIELD_THREAD_ID:Ljava/lang/String; = "threadId"

.field public static final FIELD_THREAD_NAME:Ljava/lang/String; = "threadName"

.field public static final FLAG_BLOCKED:I = 0x100

.field public static final FLAG_BLOCKED_BY_CROSS_PROCESS:I = 0x400

.field public static final FLAG_BLOCKED_BY_MULTIBPLE_BLOCKER:I = 0x4000

.field public static final FLAG_BLOCKED_BY_ONE_COINCIDED_BLOCKER:I = 0x1000

.field public static final FLAG_BLOCKED_BY_ONE_INCLUSIVE_BLOCKER:I = 0x800

.field public static final FLAG_BLOCKED_BY_ONE_OVERLAPPED_BLOCKER:I = 0x2000

.field public static final FLAG_BLOCKED_BY_SAME_PROCESS:I = 0x200

.field public static final FLAG_BLOCKER:I = 0x10000

.field public static final FLAG_BLOCKER_TO_CROSS_PROCESS:I = 0x40000

.field public static final FLAG_BLOCKER_TO_SAME_PROCESS:I = 0x20000

.field public static final FLAG_DETAILS_SOURCE_MASK:I = 0xf000000

.field public static final FLAG_HAS_KERNEL_LAZYINFO:I = 0x40

.field public static final FLAG_HAS_PROC_LAZYINFO:I = 0x10

.field public static final FLAG_INITIATOR_POSITION_MASK:I = 0x6

.field public static final FLAG_INITIATOR_POSITION_MASTER:I = 0x4

.field public static final FLAG_INITIATOR_POSITION_SLAVE:I = 0x2

.field public static final FLAG_INITIATOR_POSITION_UNKNOWN:I = 0x0

.field public static final FLAG_KERNEL_LAZYINFO_RESOLVED:I = 0x80

.field public static final FLAG_NO_CHECK:I = 0x10000000

.field public static final FLAG_PROC_LAZYINFO_RESOLVED:I = 0x20

.field public static final FLAG_ROOT_EVENT:I = 0x1

.field public static final FLAG_USER_PERCEPTIBLE:I = 0x100000

.field public static final MACRO_EVENT_TYPE_COUNT:I = 0x7

.field public static final MACRO_EVENT_TYPE_START:I = 0x10000

.field public static final MAX_PERF_EVENT_PARCEL_SIZE:I = 0x1000

.field public static final MICRO_EVENT_TYPE_COUNT:I = 0x10

.field public static final MICRO_EVENT_TYPE_START:I = 0x0

.field public static final TYPE_BINDER_STARVATION:I = 0x10004

.field public static final TYPE_E2ESCENARIO_ONCE:I = 0x10005

.field public static final TYPE_LOOPER_CHECKPOINT:I = 0xc

.field public static final TYPE_LOOPER_ONCE:I = 0xb

.field public static final TYPE_MEMORY_SLOWPATH:I = 0x10006

.field public static final TYPE_MM_SLOWPATH:I = 0xf

.field public static final TYPE_PLACE_HOLDER_1:I = 0x10001

.field public static final TYPE_PLACE_HOLDER_2:I = 0x10003

.field public static final TYPE_SCHED_WAIT:I = 0xd

.field public static final TYPE_SCHED_WAKE:I = 0xe

.field public static final TYPE_SINGLE_BINDER_CALL:I = 0x4

.field public static final TYPE_SINGLE_BINDER_EXECUTION:I = 0x5

.field public static final TYPE_SINGLE_CONDITION_AWAKEN:I = 0x2

.field public static final TYPE_SINGLE_CONDITION_WAIT:I = 0x3

.field public static final TYPE_SINGLE_EVENT_LOG_ITEM:I = 0x10000

.field public static final TYPE_SINGLE_INPUT_EVENT:I = 0x9

.field public static final TYPE_SINGLE_JANK_RECORD:I = 0x10002

.field public static final TYPE_SINGLE_JNI_METHOD:I = 0xa

.field public static final TYPE_SINGLE_LOCK_HOLD:I = 0x0

.field public static final TYPE_SINGLE_LOCK_WAIT:I = 0x1

.field public static final TYPE_SINGLE_LOOPER_MESSAGE:I = 0x8

.field public static final TYPE_SINGLE_SYSTEM_TRACE_EVENT:I = 0x7

.field public static final TYPE_SINGLE_TRACE_POINT:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "LockHold"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v3, 0x1

    const-string v4, "LockWait"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v5, 0x2

    const-string v6, "ConditionAwaken"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v7, 0x3

    const-string v8, "ConditionWait"

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v9, 0x4

    const-string v10, "BinderCall"

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v11, 0x5

    const-string v12, "BinderExecution"

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v13, 0x6

    const-string v14, "TracePoint"

    invoke-virtual {v0, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v15, 0x7

    const-string v13, "SystemTraceEvent"

    invoke-virtual {v0, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v15, 0x8

    const-string v11, "LooperMessage"

    invoke-virtual {v0, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v15, 0x9

    const-string v9, "InputEvent"

    invoke-virtual {v0, v15, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v15, 0xa

    const-string v7, "JniMethod"

    invoke-virtual {v0, v15, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v15, 0xb

    const-string v5, "LooperOnce"

    invoke-virtual {v0, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v5, 0xc

    const-string v15, "LooperCheckPoint"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v5, 0xd

    const-string v15, "SchedWait"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v5, 0xe

    const-string v15, "SchedWake"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v5, 0xf

    const-string v15, "MMSlowpath"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/high16 v5, 0x10000

    const-string v15, "EventLog"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v5, 0x10002

    const-string v15, "JankRecord"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v5, 0x10004

    const-string v15, "BinderStarvation"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v5, 0x10005

    const-string v15, "E2EScenarioOnce"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v5, 0x10006

    const-string v15, "MemorySlowpath"

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LooperOnce"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LooperCheckPoint"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SchedWait"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SchedWake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMSlowpath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EventLog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JankRecord"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BinderStarvation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "E2EScenarioOnce"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MemorySlowpath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeCode(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v1, "UnKnown"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isBlockedBy(II)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1f

    const/16 v2, 0xd

    if-eq p0, v2, :cond_19

    const/4 v2, 0x3

    if-eq p0, v2, :cond_14

    const/4 v2, 0x4

    if-eq p0, v2, :cond_f

    return v0

    :cond_f
    const/4 v2, 0x5

    if-ne p1, v2, :cond_13

    move v0, v1

    :cond_13
    return v0

    :cond_14
    const/4 v2, 0x2

    if-ne p1, v2, :cond_18

    move v0, v1

    :cond_18
    return v0

    :cond_19
    const/16 v2, 0xe

    if-ne p1, v2, :cond_1e

    move v0, v1

    :cond_1e
    return v0

    :cond_1f
    if-nez p1, :cond_22

    move v0, v1

    :cond_22
    return v0
.end method
