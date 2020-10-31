.class public interface abstract Landroid/os/IThermalStatusListener;
.super Ljava/lang/Object;
.source "IThermalStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalStatusListener$Stub;,
        Landroid/os/IThermalStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onStatusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
