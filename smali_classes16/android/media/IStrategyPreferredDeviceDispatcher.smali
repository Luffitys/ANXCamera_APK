.class public interface abstract Landroid/media/IStrategyPreferredDeviceDispatcher;
.super Ljava/lang/Object;
.source "IStrategyPreferredDeviceDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IStrategyPreferredDeviceDispatcher$Stub;,
        Landroid/media/IStrategyPreferredDeviceDispatcher$Default;
    }
.end annotation


# virtual methods
.method public abstract dispatchPrefDeviceChanged(ILandroid/media/AudioDeviceAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
