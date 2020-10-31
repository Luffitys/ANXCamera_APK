.class public interface abstract Lmiui/content/pm/IPackageDeleteConfirmObserver;
.super Ljava/lang/Object;
.source "IPackageDeleteConfirmObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;,
        Lmiui/content/pm/IPackageDeleteConfirmObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onConfirm(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
