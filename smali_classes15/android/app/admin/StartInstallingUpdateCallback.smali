.class public interface abstract Landroid/app/admin/StartInstallingUpdateCallback;
.super Ljava/lang/Object;
.source "StartInstallingUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/StartInstallingUpdateCallback$Stub;,
        Landroid/app/admin/StartInstallingUpdateCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onStartInstallingUpdateError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
