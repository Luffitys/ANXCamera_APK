.class public interface abstract Lcom/android/internal/app/IAppOpsNotedCallback;
.super Ljava/lang/Object;
.source "IAppOpsNotedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsNotedCallback$Stub;,
        Lcom/android/internal/app/IAppOpsNotedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract opNoted(IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
