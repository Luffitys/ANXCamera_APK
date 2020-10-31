.class public interface abstract Landroid/hardware/display/NightDisplayListener$Callback;
.super Ljava/lang/Object;
.source "NightDisplayListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/NightDisplayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onActivated(Z)V
    .registers 2

    return-void
.end method

.method public onAutoModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .registers 2

    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 2

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 2

    return-void
.end method
