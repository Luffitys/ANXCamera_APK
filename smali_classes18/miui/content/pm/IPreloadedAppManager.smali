.class public interface abstract Lmiui/content/pm/IPreloadedAppManager;
.super Ljava/lang/Object;
.source "IPreloadedAppManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/IPreloadedAppManager$Stub;,
        Lmiui/content/pm/IPreloadedAppManager$Default;
    }
.end annotation


# virtual methods
.method public abstract reinstallPreloadedApp(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reinstallPreloadedApp2(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
