.class public interface abstract Landroid/net/lowpan/ILowpanManager;
.super Ljava/lang/Object;
.source "ILowpanManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManager$Stub;,
        Landroid/net/lowpan/ILowpanManager$Default;
    }
.end annotation


# static fields
.field public static final LOWPAN_SERVICE_NAME:Ljava/lang/String; = "lowpan"


# virtual methods
.method public abstract addInterface(Landroid/net/lowpan/ILowpanInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract addListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceList()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeInterface(Landroid/net/lowpan/ILowpanInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
