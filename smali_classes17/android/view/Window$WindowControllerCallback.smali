.class public interface abstract Landroid/view/Window$WindowControllerCallback;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowControllerCallback"
.end annotation


# virtual methods
.method public abstract enterPictureInPictureModeIfPossible()V
.end method

.method public abstract isTaskRoot()Z
.end method

.method public abstract toggleFreeformWindowingMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateNavigationBarColor(I)V
.end method

.method public abstract updateStatusBarColor(I)V
.end method
