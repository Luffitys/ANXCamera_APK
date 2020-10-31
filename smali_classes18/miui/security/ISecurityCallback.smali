.class public interface abstract Lmiui/security/ISecurityCallback;
.super Ljava/lang/Object;
.source "ISecurityCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ISecurityCallback$Stub;,
        Lmiui/security/ISecurityCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract checkPreInstallNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract preInstallApps()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
