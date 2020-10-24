.class public interface abstract Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract onCancelInstall(ILandroid/os/Bundle;)V
.end method

.method public abstract onCompleteInstall(I)V
.end method

.method public abstract onDeferredInstall(Landroid/os/Bundle;)V
.end method

.method public abstract onDeferredUninstall(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onGetSession(ILandroid/os/Bundle;)V
.end method

.method public abstract onGetSessionStates(Ljava/util/List;)V
.end method

.method public abstract onStartInstall(ILandroid/os/Bundle;)V
.end method
