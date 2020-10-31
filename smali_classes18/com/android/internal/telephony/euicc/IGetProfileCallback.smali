.class public interface abstract Lcom/android/internal/telephony/euicc/IGetProfileCallback;
.super Ljava/lang/Object;
.source "IGetProfileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IGetProfileCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
