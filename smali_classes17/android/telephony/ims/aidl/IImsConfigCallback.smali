.class public interface abstract Landroid/telephony/ims/aidl/IImsConfigCallback;
.super Ljava/lang/Object;
.source "IImsConfigCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;,
        Landroid/telephony/ims/aidl/IImsConfigCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onIntConfigChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStringConfigChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
