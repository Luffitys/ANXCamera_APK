.class public interface abstract Lcom/android/internal/view/inline/IInlineContentCallback;
.super Ljava/lang/Object;
.source "IInlineContentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/IInlineContentCallback$Stub;,
        Lcom/android/internal/view/inline/IInlineContentCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onClick()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLongClick()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
