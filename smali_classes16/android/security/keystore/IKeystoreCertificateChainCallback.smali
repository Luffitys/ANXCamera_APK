.class public interface abstract Landroid/security/keystore/IKeystoreCertificateChainCallback;
.super Ljava/lang/Object;
.source "IKeystoreCertificateChainCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub;,
        Landroid/security/keystore/IKeystoreCertificateChainCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeymasterCertificateChain;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
