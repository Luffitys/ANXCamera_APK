.class public interface abstract Landroid/security/keystore/IKeystoreOperationResultCallback;
.super Ljava/lang/Object;
.source "IKeystoreOperationResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/IKeystoreOperationResultCallback$Stub;,
        Landroid/security/keystore/IKeystoreOperationResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Landroid/security/keymaster/OperationResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
