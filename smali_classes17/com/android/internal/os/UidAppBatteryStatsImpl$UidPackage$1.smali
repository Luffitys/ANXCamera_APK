.class Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;
.super Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.source "UidAppBatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
        "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;


# direct methods
.method constructor <init>(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;Lcom/android/internal/os/BatteryStatsImpl;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;->this$0:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    return-void
.end method


# virtual methods
.method public instantiateObject()Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;
    .registers 4

    new-instance v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;->this$0:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iget-object v1, v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;->this$0:Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;)V

    return-object v0
.end method

.method public bridge synthetic instantiateObject()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;->instantiateObject()Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    move-result-object v0

    return-object v0
.end method
