.class public final synthetic Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IZLandroid/util/SparseLongArray;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$1:I

    iput-boolean p3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$2:Z

    iput-object p4, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$3:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$1:I

    iget-boolean v2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$2:Z

    iget-object v3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$7bfIWpn8X2h-hSzLD6dcuK4Ljuw;->f$3:Landroid/util/SparseLongArray;

    move-object v5, p2

    check-cast v5, [J

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuTimesLocked$0$BatteryStatsImpl(IZLandroid/util/SparseLongArray;I[J)V

    return-void
.end method
