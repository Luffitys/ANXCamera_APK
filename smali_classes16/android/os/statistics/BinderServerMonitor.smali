.class public Landroid/os/statistics/BinderServerMonitor;
.super Ljava/lang/Object;
.source "BinderServerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_RECORDS_QUEUE_CAPACITY:I = 0xc

.field public static final PERFSHIELDER_SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field private static final TAG:Ljava/lang/String; = "BinderServerMonitor"

.field private static isEnabled:Z

.field private static mBinderClientCpuUsages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mExcessiveCpuUsageRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static mExcessiveCpuUsageThershold:I

.field private static mPerfService:Lcom/android/internal/app/IPerfShielder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.excessive_cpu_usage_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/statistics/BinderServerMonitor;->isEnabled:Z

    const-string/jumbo v0, "persist.sys.excessive_cpu_usage"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageThershold:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clearBinderClientCpuTimeUsed(I)J
.end method

.method public static computeCpuUsage(JJ)I
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p0

    long-to-int v0, v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static native dumpBinderClientCpuTimeUsed(Ljava/util/HashMap;)V
.end method

.method public static getBinderClientCpuUsages()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getExcessiveCpuUsageThreshold()I
    .registers 1

    sget v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageThershold:I

    return v0
.end method

.method static native nativeStart()V
.end method

.method public static recordExcessiveCpuUsage(Ljava/lang/String;IIIJJJZ)V
    .registers 15

    new-instance v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;

    invoke-direct {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;-><init>()V

    iput p2, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->pid:I

    iput p3, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->uid:I

    iput-object p0, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procName:Ljava/lang/String;

    iput p1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procState:I

    iput-wide p4, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->duration:J

    add-long v1, p6, p8

    iput-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    iput-wide p8, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    iget-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    invoke-static {p4, p5, v1, v2}, Landroid/os/statistics/BinderServerMonitor;->computeCpuUsage(JJ)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->cpuUsage:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->currentTimeMills:J

    invoke-virtual {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excessive process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BinderServerMonitor"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x758d

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    if-eqz p10, :cond_68

    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_68

    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_63

    :try_start_5c
    sget-object v2, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IPerfShielder;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_62

    goto :goto_63

    :catch_62
    move-exception v1

    :cond_63
    :goto_63
    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_68
    return-void
.end method

.method public static start()V
    .registers 1

    sget-boolean v0, Landroid/os/statistics/BinderServerMonitor;->isEnabled:Z

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->nativeStart()V

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    :cond_d
    return-void
.end method

.method public static updateBinderClientCpuUsages()V
    .registers 1

    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/os/statistics/BinderServerMonitor;->dumpBinderClientCpuTimeUsed(Ljava/util/HashMap;)V

    return-void
.end method
