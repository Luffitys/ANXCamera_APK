.class public interface abstract Landroid/os/IClientCallback;
.super Ljava/lang/Object;
.source "IClientCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IClientCallback$Stub;,
        Landroid/os/IClientCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onClients(Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
