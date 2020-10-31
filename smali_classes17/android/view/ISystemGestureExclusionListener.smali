.class public interface abstract Landroid/view/ISystemGestureExclusionListener;
.super Ljava/lang/Object;
.source "ISystemGestureExclusionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISystemGestureExclusionListener$Stub;,
        Landroid/view/ISystemGestureExclusionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
