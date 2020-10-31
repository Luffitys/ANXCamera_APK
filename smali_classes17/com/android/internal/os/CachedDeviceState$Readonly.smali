.class public Lcom/android/internal/os/CachedDeviceState$Readonly;
.super Ljava/lang/Object;
.source "CachedDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/CachedDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Readonly"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/CachedDeviceState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    # getter for: Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->access$400(Lcom/android/internal/os/CachedDeviceState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    new-instance v1, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    iget-object v2, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {v1, v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;-><init>(Lcom/android/internal/os/CachedDeviceState;)V

    iget-object v2, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    # getter for: Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/os/CachedDeviceState;->access$500(Lcom/android/internal/os/CachedDeviceState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    # getter for: Lcom/android/internal/os/CachedDeviceState;->mCharging:Z
    invoke-static {v2}, Lcom/android/internal/os/CachedDeviceState;->access$200(Lcom/android/internal/os/CachedDeviceState;)Z

    move-result v2

    if-nez v2, :cond_22

    # invokes: Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->start()V
    invoke-static {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->access$000(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    :cond_22
    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public isCharging()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    # getter for: Lcom/android/internal/os/CachedDeviceState;->mCharging:Z
    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->access$200(Lcom/android/internal/os/CachedDeviceState;)Z

    move-result v0

    return v0
.end method

.method public isScreenInteractive()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    # getter for: Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z
    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->access$300(Lcom/android/internal/os/CachedDeviceState;)Z

    move-result v0

    return v0
.end method
