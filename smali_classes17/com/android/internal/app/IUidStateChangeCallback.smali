.class public interface abstract Lcom/android/internal/app/IUidStateChangeCallback;
.super Ljava/lang/Object;
.source "IUidStateChangeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IUidStateChangeCallback$Stub;,
        Lcom/android/internal/app/IUidStateChangeCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onUidStateChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
