.class public final synthetic Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

.field public final synthetic f$1:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/UidAppBatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;->f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;->f$1:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean p3, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;->f$0:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v1, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;->f$1:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p0, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;->f$2:Z

    check-cast p2, [J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->lambda$readKernelSysAppCpuClusterTimesLocked$2$UidAppBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImpl;ZLjava/lang/String;[J)V

    return-void
.end method
