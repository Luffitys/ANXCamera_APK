.class public interface abstract Landroid/os/IServiceCallback;
.super Ljava/lang/Object;
.source "IServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IServiceCallback$Stub;,
        Landroid/os/IServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
