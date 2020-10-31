.class public interface abstract Landroid/security/keystore/IKeystoreExportKeyCallback;
.super Ljava/lang/Object;
.source "IKeystoreExportKeyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/IKeystoreExportKeyCallback$Stub;,
        Landroid/security/keystore/IKeystoreExportKeyCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Landroid/security/keymaster/ExportResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
