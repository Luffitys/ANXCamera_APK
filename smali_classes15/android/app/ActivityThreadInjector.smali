.class public Landroid/app/ActivityThreadInjector;
.super Ljava/lang/Object;
.source "ActivityThreadInjector.java"


# static fields
.field private static final AM_LIFECYCLE_SAMPLE_THRESHOLD:I

.field private static final LOG_AM_LIFECYCLE_SAMPLE:I = 0x7594

.field private static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static activityResumeUpTime:J

.field private static final mEnableLifecycleSample:Z

.field private static sResumedActivityBegin:[J

.field private static sResumedActivityName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.handler.threshold"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    const/4 v0, 0x5

    new-array v0, v0, [J

    sput-object v0, Landroid/app/ActivityThreadInjector;->sResumedActivityBegin:[J

    const-string v0, ""

    sput-object v0, Landroid/app/ActivityThreadInjector;->sResumedActivityName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/ActivityThreadInjector;->activityResumeUpTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bindApplicationInjector(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    return-void
.end method

.method static checkHandleMessageTime(JI)V
    .registers 9

    sget-boolean v0, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sget v2, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_39

    const/16 v2, 0x7594

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_39
    return-void
.end method

.method static checkHandleMessageTime(JLandroid/os/Message;)V
    .registers 4

    if-eqz p2, :cond_5

    iget v0, p2, Landroid/os/Message;->what:I

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    :goto_6
    invoke-static {p0, p1, v0}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JI)V

    return-void
.end method

.method static clearCachedDrawables()V
    .registers 0

    return-void
.end method

.method static enableAppLogSwitch()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    return-void
.end method

.method public static enableStrictMode()V
    .registers 4

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    if-eqz v0, :cond_37

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_37
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static isPersistent(Landroid/app/ActivityThread$AppBindData;)Z
    .registers 2

    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isSystemThread()Z
    .registers 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v1, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static performPauseActivityBegin(Ljava/lang/String;)V
    .registers 15

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Landroid/app/ActivityThreadInjector;->sResumedActivityName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    sget-object v0, Landroid/app/ActivityThreadInjector;->sResumedActivityBegin:[J

    const/4 v1, 0x3

    aget-wide v2, v0, v1

    const/4 v4, 0x4

    aget-wide v5, v0, v4

    add-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-nez v0, :cond_20

    return-void

    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v7, Landroid/app/ActivityThreadInjector;->activityResumeUpTime:J

    sub-long/2addr v2, v7

    const/4 v0, 0x5

    new-array v0, v0, [J

    invoke-static {v0}, Landroid/os/MessageMonitor;->nGetThreadDelay([J)V

    aget-wide v7, v0, v1

    sget-object v9, Landroid/app/ActivityThreadInjector;->sResumedActivityBegin:[J

    aget-wide v10, v9, v1

    sub-long/2addr v7, v10

    aget-wide v10, v0, v4

    aget-wide v12, v9, v4

    sub-long/2addr v10, v12

    add-long v12, v7, v10

    cmp-long v1, v12, v5

    if-nez v1, :cond_40

    return-void

    :cond_40
    long-to-double v4, v7

    add-long v12, v7, v10

    long-to-double v12, v12

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v12

    double-to-int v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PerfMonitor Activity : running "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms, a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms, w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityThread"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static performResumeActivityBegin(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sput-object p0, Landroid/app/ActivityThreadInjector;->sResumedActivityName:Ljava/lang/String;

    sget-object v0, Landroid/app/ActivityThreadInjector;->sResumedActivityBegin:[J

    invoke-static {v0}, Landroid/os/MessageMonitor;->nGetThreadDelay([J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/app/ActivityThreadInjector;->activityResumeUpTime:J

    return-void
.end method

.method static preloadSubActivity(Landroid/app/ActivityThread;ILandroid/app/LoadedApk;)V
    .registers 3

    return-void
.end method

.method static raiseThreadPriority()V
    .registers 0

    return-void
.end method

.method static updatePackageInfoForLogSwitch(Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updatePackageName(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName(Ljava/lang/String;)V

    return-void
.end method

.method public static updateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/statistics/PerfSuperviser;->updateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
