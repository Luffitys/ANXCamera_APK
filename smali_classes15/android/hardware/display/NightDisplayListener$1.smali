.class Landroid/hardware/display/NightDisplayListener$1;
.super Landroid/database/ContentObserver;
.source "NightDisplayListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method constructor <init>(Landroid/hardware/display/NightDisplayListener;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 10

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_c1

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->access$000(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    if-eqz v1, :cond_c1

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_c2

    :cond_21
    goto :goto_53

    :sswitch_22
    const-string v2, "night_display_custom_start_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v1, v5

    goto :goto_53

    :sswitch_2c
    const-string v2, "night_display_activated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x0

    goto :goto_53

    :sswitch_36
    const-string v2, "night_display_color_temperature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v1, v3

    goto :goto_53

    :sswitch_40
    const-string v2, "night_display_custom_end_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v1, v4

    goto :goto_53

    :sswitch_4a
    const-string v2, "night_display_auto_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v1, v6

    :goto_53
    if-eqz v1, :cond_ae

    if-eq v1, v6, :cond_9a

    if-eq v1, v5, :cond_86

    if-eq v1, v4, :cond_72

    if-eq v1, v3, :cond_5e

    goto :goto_c1

    :cond_5e
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->access$000(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;
    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->access$100(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onColorTemperatureChanged(I)V

    goto :goto_c1

    :cond_72
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->access$000(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;
    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->access$100(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_c1

    :cond_86
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->access$000(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;
    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->access$100(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_c1

    :cond_9a
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->access$000(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;
    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->access$100(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onAutoModeChanged(I)V

    goto :goto_c1

    :cond_ae
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->access$000(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    # getter for: Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;
    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->access$100(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onActivated(Z)V

    :cond_c1
    :goto_c1
    return-void

    :sswitch_data_c2
    .sparse-switch
        -0x797bb571 -> :sswitch_4a
        -0x6900ebe5 -> :sswitch_40
        -0x39c8c50c -> :sswitch_36
        0x2fb0ca2d -> :sswitch_2c
        0x5e128274 -> :sswitch_22
    .end sparse-switch
.end method
