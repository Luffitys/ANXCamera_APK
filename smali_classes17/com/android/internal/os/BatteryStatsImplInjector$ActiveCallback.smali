.class public interface abstract Lcom/android/internal/os/BatteryStatsImplInjector$ActiveCallback;
.super Ljava/lang/Object;
.source "BatteryStatsImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImplInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActiveCallback"
.end annotation


# virtual methods
.method public abstract noteAudioOffLocked(I)V
.end method

.method public abstract noteAudioOnLocked(I)V
.end method

.method public abstract noteResetAudioLocked()V
.end method

.method public abstract noteStartGpsLocked(I)V
.end method

.method public abstract noteStopGpsLocked(I)V
.end method
