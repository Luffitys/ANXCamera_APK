.class public interface abstract Landroid/security/IFileIntegrityService;
.super Ljava/lang/Object;
.source "IFileIntegrityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IFileIntegrityService$Stub;,
        Landroid/security/IFileIntegrityService$Default;
    }
.end annotation


# virtual methods
.method public abstract isApkVeritySupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAppSourceCertificateTrusted([BLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
