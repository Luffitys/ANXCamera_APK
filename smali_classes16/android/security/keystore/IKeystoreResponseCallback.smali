.class public interface abstract Landroid/security/keystore/IKeystoreResponseCallback;
.super Ljava/lang/Object;
.source "IKeystoreResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/IKeystoreResponseCallback$Stub;,
        Landroid/security/keystore/IKeystoreResponseCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Landroid/security/keystore/KeystoreResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
