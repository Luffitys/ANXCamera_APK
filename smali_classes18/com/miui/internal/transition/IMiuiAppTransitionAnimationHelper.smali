.class public interface abstract Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
.super Ljava/lang/Object;
.source "IMiuiAppTransitionAnimationHelper.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;,
        Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Default;
    }
.end annotation


# virtual methods
.method public abstract getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyMiuiAnimationEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyMiuiAnimationStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
