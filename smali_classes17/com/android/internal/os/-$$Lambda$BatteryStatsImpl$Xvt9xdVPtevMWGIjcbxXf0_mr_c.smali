.class public final synthetic Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$Xvt9xdVPtevMWGIjcbxXf0_mr_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$Xvt9xdVPtevMWGIjcbxXf0_mr_c;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean p2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$Xvt9xdVPtevMWGIjcbxXf0_mr_c;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$Xvt9xdVPtevMWGIjcbxXf0_mr_c;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$Xvt9xdVPtevMWGIjcbxXf0_mr_c;->f$1:Z

    check-cast p2, [J

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuClusterTimesLocked$3$BatteryStatsImpl(ZI[J)V

    return-void
.end method
