.class public interface abstract Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
.super Ljava/lang/Object;
.source "IUpdateAvailableNetworksCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback$Stub;,
        Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
