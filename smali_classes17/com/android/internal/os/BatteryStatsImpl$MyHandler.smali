.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mActiveCallback:Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$200(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_45

    packed-switch v2, :pswitch_data_80

    goto/16 :goto_7f

    :pswitch_1f
    if-eqz v1, :cond_7f

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;->noteStopGpsLocked(I)V

    goto :goto_7f

    :pswitch_27
    if-eqz v1, :cond_7f

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;->noteStartGpsLocked(I)V

    goto :goto_7f

    :pswitch_2f
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;->noteResetAudioLocked()V

    goto :goto_7f

    :pswitch_35
    if-eqz v1, :cond_7f

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;->noteAudioOffLocked(I)V

    goto :goto_7f

    :pswitch_3d
    if-eqz v1, :cond_7f

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;->noteAudioOnLocked(I)V

    goto :goto_7f

    :cond_45
    if-eqz v0, :cond_7f

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    goto :goto_7f

    :cond_4b
    if-eqz v0, :cond_7f

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    :try_start_50
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v3, :cond_59

    const-string v3, "android.os.action.CHARGING"

    goto :goto_5b

    :cond_59
    const-string v3, "android.os.action.DISCHARGING"

    :goto_5b
    nop

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_6b

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_7f

    :catchall_6b
    move-exception v3

    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v3

    :cond_6e
    if-eqz v0, :cond_7f

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_75

    goto :goto_76

    :cond_75
    const/4 v3, 0x0

    :goto_76
    invoke-interface {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_7f

    :cond_7a
    if-eqz v0, :cond_7f

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    :cond_7f
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x3e8
        :pswitch_3d
        :pswitch_35
        :pswitch_2f
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
