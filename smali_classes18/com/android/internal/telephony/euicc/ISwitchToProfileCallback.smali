.class public interface abstract Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;
.super Ljava/lang/Object;
.source "ISwitchToProfileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Stub;,
        Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Default;
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
