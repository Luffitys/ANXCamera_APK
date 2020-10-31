.class public interface abstract Landroid/system/suspend/ISuspendCallback;
.super Ljava/lang/Object;
.source "ISuspendCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/ISuspendCallback$Stub;,
        Landroid/system/suspend/ISuspendCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyWakeup(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
