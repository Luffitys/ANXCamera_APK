.class public interface abstract Landroid/security/identity/ICredential;
.super Ljava/lang/Object;
.source "ICredential.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredential$Stub;,
        Landroid/security/identity/ICredential$Default;
    }
.end annotation


# static fields
.field public static final STATUS_NOT_IN_REQUEST_MESSAGE:I = 0x3

.field public static final STATUS_NOT_REQUESTED:I = 0x2

.field public static final STATUS_NO_ACCESS_CONTROL_PROFILES:I = 0x6

.field public static final STATUS_NO_SUCH_ENTRY:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_READER_AUTHENTICATION_FAILED:I = 0x5

.field public static final STATUS_USER_AUTHENTICATION_FAILED:I = 0x4


# virtual methods
.method public abstract createEphemeralKeyPair()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteCredential()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAuthKeysNeedingCertification()[Landroid/security/identity/AuthKeyParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAuthenticationDataUsageCount()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCredentialKeyCertificateChain()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEntries([B[Landroid/security/identity/RequestNamespaceParcel;[B[BZ)Landroid/security/identity/GetEntriesResultParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract selectAuthKey(Z)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAvailableAuthenticationKeys(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setReaderEphemeralPublicKey([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract storeStaticAuthenticationData(Landroid/security/identity/AuthKeyParcel;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
