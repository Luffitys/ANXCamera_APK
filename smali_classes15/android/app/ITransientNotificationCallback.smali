.class public interface abstract Landroid/app/ITransientNotificationCallback;
.super Ljava/lang/Object;
.source "ITransientNotificationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITransientNotificationCallback$Stub;,
        Landroid/app/ITransientNotificationCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onToastHidden()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onToastShown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
