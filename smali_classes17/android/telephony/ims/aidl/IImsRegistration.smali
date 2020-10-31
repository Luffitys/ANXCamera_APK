.class public interface abstract Landroid/telephony/ims/aidl/IImsRegistration;
.super Ljava/lang/Object;
.source "IImsRegistration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistration$Stub;,
        Landroid/telephony/ims/aidl/IImsRegistration$Default;
    }
.end annotation


# virtual methods
.method public abstract addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRegistrationTechnology()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
