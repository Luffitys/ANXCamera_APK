.class public interface abstract Landroid/net/IEthernetServiceListener;
.super Ljava/lang/Object;
.source "IEthernetServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetServiceListener$Stub;,
        Landroid/net/IEthernetServiceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onAvailabilityChanged(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
