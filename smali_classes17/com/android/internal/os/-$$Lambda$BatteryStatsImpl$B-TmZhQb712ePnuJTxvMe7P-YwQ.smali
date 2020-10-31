.class public final synthetic Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;ZZZII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean p2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$1:Z

    iput-boolean p3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$2:Z

    iput-boolean p4, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$3:Z

    iput p5, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$4:I

    iput p6, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$5:I

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$1:Z

    iget-boolean v2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$2:Z

    iget-boolean v3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$3:Z

    iget v4, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$4:I

    iget v5, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$B-TmZhQb712ePnuJTxvMe7P-YwQ;->f$5:I

    move-object v7, p2

    check-cast v7, [J

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuFreqTimesLocked$1$BatteryStatsImpl(ZZZIII[J)V

    return-void
.end method
