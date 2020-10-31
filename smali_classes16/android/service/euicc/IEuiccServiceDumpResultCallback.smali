.class public interface abstract Landroid/service/euicc/IEuiccServiceDumpResultCallback;
.super Ljava/lang/Object;
.source "IEuiccServiceDumpResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEuiccServiceDumpResultCallback$Stub;,
        Landroid/service/euicc/IEuiccServiceDumpResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
