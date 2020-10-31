.class public interface abstract Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;
.super Ljava/lang/Object;
.source "ILoadBoundProfilePackageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Stub;,
        Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
