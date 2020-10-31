.class public final synthetic Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

.field public final synthetic f$1:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/UidAppBatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl;ZIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$1:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean p3, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$2:Z

    iput p4, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$3:I

    iput-boolean p5, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v1, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$1:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$2:Z

    iget v3, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$3:I

    iget-boolean v4, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;->f$4:Z

    move-object v6, p2

    check-cast v6, [J

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->lambda$readKernelSysAppCpuFreqTimesLocked$0$UidAppBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImpl;ZIZLjava/lang/String;[J)V

    return-void
.end method
