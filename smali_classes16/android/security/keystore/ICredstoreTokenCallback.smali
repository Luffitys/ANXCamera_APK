.class public interface abstract Landroid/security/keystore/ICredstoreTokenCallback;
.super Ljava/lang/Object;
.source "ICredstoreTokenCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/ICredstoreTokenCallback$Stub;,
        Landroid/security/keystore/ICredstoreTokenCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Z[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
