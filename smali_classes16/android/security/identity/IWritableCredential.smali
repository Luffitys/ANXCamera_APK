.class public interface abstract Landroid/security/identity/IWritableCredential;
.super Ljava/lang/Object;
.source "IWritableCredential.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/IWritableCredential$Stub;,
        Landroid/security/identity/IWritableCredential$Default;
    }
.end annotation


# virtual methods
.method public abstract getCredentialKeyCertificateChain([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract personalize([Landroid/security/identity/AccessControlProfileParcel;[Landroid/security/identity/EntryNamespaceParcel;J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
