.class public interface abstract Landroid/debug/IAdbTransport;
.super Ljava/lang/Object;
.source "IAdbTransport.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/debug/IAdbTransport$Stub;,
        Landroid/debug/IAdbTransport$Default;
    }
.end annotation


# virtual methods
.method public abstract onAdbEnabled(ZB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
