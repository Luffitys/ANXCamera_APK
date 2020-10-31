.class public interface abstract Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
.super Ljava/lang/Object;
.source "IAppOpsAsyncNotedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;,
        Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract opNoted(Landroid/app/AsyncNotedAppOp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
