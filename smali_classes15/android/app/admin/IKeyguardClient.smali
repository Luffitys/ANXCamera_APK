.class public interface abstract Landroid/app/admin/IKeyguardClient;
.super Ljava/lang/Object;
.source "IKeyguardClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IKeyguardClient$Stub;,
        Landroid/app/admin/IKeyguardClient$Default;
    }
.end annotation


# virtual methods
.method public abstract onCreateKeyguardSurface(Landroid/os/IBinder;Landroid/app/admin/IKeyguardCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
