.class public Landroid/os/MiuiProcess;
.super Ljava/lang/Object;
.source "MiuiProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MiuiProcess$PriorityState;
    }
.end annotation


# static fields
.field public static final BACKUP_UID:I = 0x2648

.field public static final BIG_CORES_INDEX:[I

.field public static final DEBUG_ANIMATOR_RT:Z = false

.field public static final FINDDEVICE_UID:I = 0x2652

.field public static final LAUNCH_RT_SCHED_DURATION_MS:J = 0x1f4L

.field public static final MAX_RT_SCHED_DURATION_MS:J = 0x3e8L

.field public static final PROPERTY_CPU_CORE_COUNT:I

.field public static final PROPERTY_ENABLED_ANIMATOR_SCHED:Z

.field public static final PROPERTY_SCHED_THREADS:I

.field public static final SCHED_MODE_ANIMATOR_RT:I = 0x1

.field public static final SCHED_MODE_MAX:I = 0x2

.field public static final SCHED_MODE_NORMAL:I = 0x0

.field public static final SCHED_RESET_ON_FORK:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "LockBoost"

.field public static final THEME_UID:I = 0x2649

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field public static final THREAD_GROUP_FG_LIMITED:I = 0xa

.field public static final THREAD_GROUP_FG_SERVICE:I = 0x9

.field public static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_TOP_APP:I = 0x5

.field public static final UPDATER_UID:I = 0x264a

.field static sThreadPriorityState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/MiuiProcess$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/MiuiProcess$1;

    invoke-direct {v0}, Landroid/os/MiuiProcess$1;-><init>()V

    sput-object v0, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    nop

    const-string/jumbo v0, "persist.sys.miui_animator_sched.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/MiuiProcess;->PROPERTY_ENABLED_ANIMATOR_SCHED:Z

    nop

    const-string/jumbo v0, "persist.sys.miui_animator_sched.cpu_cores"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/MiuiProcess;->PROPERTY_CPU_CORE_COUNT:I

    nop

    const-string/jumbo v0, "persist.sys.miui_animator_sched.sched_threads"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/MiuiProcess;->PROPERTY_SCHED_THREADS:I

    invoke-static {}, Landroid/os/MiuiProcess;->loadBigCoresProperty()[I

    move-result-object v0

    sput-object v0, Landroid/os/MiuiProcess;->BIG_CORES_INDEX:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boostPriorityForLockedSection()V
    .registers 6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", prevPriority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockBoost"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MiuiProcess$PriorityState;

    # getter for: Landroid/os/MiuiProcess$PriorityState;->regionCounter:I
    invoke-static {v2}, Landroid/os/MiuiProcess$PriorityState;->access$100(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v4

    if-nez v4, :cond_58

    const/4 v4, -0x2

    if-le v1, v4, :cond_58

    # setter for: Landroid/os/MiuiProcess$PriorityState;->prevPriority:I
    invoke-static {v2, v1}, Landroid/os/MiuiProcess$PriorityState;->access$202(Landroid/os/MiuiProcess$PriorityState;I)I

    invoke-static {v0, v4}, Landroid/os/Process;->setThreadPriority(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " priority is boosted to -2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    # operator++ for: Landroid/os/MiuiProcess$PriorityState;->regionCounter:I
    invoke-static {v2}, Landroid/os/MiuiProcess$PriorityState;->access$108(Landroid/os/MiuiProcess$PriorityState;)I

    return-void
.end method

.method public static isLowMemoryDevice()Z
    .registers 7

    const-string/jumbo v0, "ro.config.low_ram.threshold_gb"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    mul-long/2addr v3, v5

    mul-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    return v3
.end method

.method public static isSetAffinity(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget v0, Landroid/os/MiuiProcess;->PROPERTY_SCHED_THREADS:I

    const-string/jumbo v2, "rt"

    const-string/jumbo v3, "ui"

    const/4 v4, 0x1

    if-nez v0, :cond_20

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_1f
    return v4

    :cond_20
    if-ne v0, v4, :cond_29

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    return v4

    :cond_29
    const/4 v3, 0x2

    if-ne v0, v3, :cond_33

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    return v4

    :cond_33
    return v1
.end method

.method private static loadBigCoresProperty()[I
    .registers 9

    const-string/jumbo v0, "persist.sys.miui_animator_sched.bigcores"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v1

    :cond_f
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_15
    array-length v3, v2

    if-lez v3, :cond_68

    const/4 v3, -0x1

    const/4 v4, -0x1

    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2e

    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    goto :goto_40

    :cond_2e
    array-length v5, v2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_40

    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    :cond_40
    :goto_40
    if-ltz v3, :cond_68

    if-ltz v4, :cond_68

    if-lt v4, v3, :cond_68

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_4d
    if-gt v6, v4, :cond_59

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_59
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v7, Landroid/os/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Landroid/os/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_67} :catch_69

    return-object v1

    :cond_68
    goto :goto_80

    :catch_69
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load big cores property failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LockBoost"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    return-object v1
.end method

.method public static resetPriorityAfterLockedSection()V
    .registers 3

    sget-object v0, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MiuiProcess$PriorityState;

    # operator-- for: Landroid/os/MiuiProcess$PriorityState;->regionCounter:I
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->access$110(Landroid/os/MiuiProcess$PriorityState;)I

    # getter for: Landroid/os/MiuiProcess$PriorityState;->regionCounter:I
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->access$100(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    if-nez v1, :cond_4a

    # getter for: Landroid/os/MiuiProcess$PriorityState;->prevPriority:I
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->access$200(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    const/4 v2, -0x2

    if-le v1, v2, :cond_4a

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    # getter for: Landroid/os/MiuiProcess$PriorityState;->prevPriority:I
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->access$200(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " priority is reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/os/MiuiProcess$PriorityState;->prevPriority:I
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->access$200(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockBoost"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-void
.end method

.method public static setThreadPriority(IILjava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "thread tid="

    if-nez p2, :cond_7

    const-string p2, "MiuiProcess"

    :cond_7
    :try_start_7
    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", priority is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_25

    goto :goto_40

    :catch_25
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", set priority error"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_40
    return-void
.end method

.method public static setThreadPriority(ILjava/lang/String;)V
    .registers 3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    return-void
.end method
