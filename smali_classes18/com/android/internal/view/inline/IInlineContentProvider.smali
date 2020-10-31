.class public interface abstract Lcom/android/internal/view/inline/IInlineContentProvider;
.super Ljava/lang/Object;
.source "IInlineContentProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/IInlineContentProvider$Stub;,
        Lcom/android/internal/view/inline/IInlineContentProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract onSurfacePackageReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestSurfacePackage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
