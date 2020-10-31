.class public interface abstract Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;
.super Ljava/lang/Object;
.source "IKeystoreKeyCharacteristicsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback$Stub;,
        Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeyCharacteristics;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
