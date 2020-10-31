.class public interface abstract Landroid/se/omapi/ISecureElementService;
.super Ljava/lang/Object;
.source "ISecureElementService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementService$Stub;,
        Landroid/se/omapi/ISecureElementService$Default;
    }
.end annotation


# virtual methods
.method public abstract getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getReaders()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSpiSignedPK()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
