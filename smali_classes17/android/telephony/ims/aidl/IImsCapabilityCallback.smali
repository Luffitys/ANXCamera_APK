.class public interface abstract Landroid/telephony/ims/aidl/IImsCapabilityCallback;
.super Ljava/lang/Object;
.source "IImsCapabilityCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;,
        Landroid/telephony/ims/aidl/IImsCapabilityCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCapabilitiesStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onChangeCapabilityConfigurationError(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueryCapabilityConfiguration(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
