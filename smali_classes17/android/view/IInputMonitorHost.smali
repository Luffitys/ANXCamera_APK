.class public interface abstract Landroid/view/IInputMonitorHost;
.super Ljava/lang/Object;
.source "IInputMonitorHost.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputMonitorHost$Stub;,
        Landroid/view/IInputMonitorHost$Default;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pilferPointers()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
