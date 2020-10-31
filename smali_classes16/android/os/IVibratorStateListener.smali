.class public interface abstract Landroid/os/IVibratorStateListener;
.super Ljava/lang/Object;
.source "IVibratorStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorStateListener$Stub;,
        Landroid/os/IVibratorStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onVibrating(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
