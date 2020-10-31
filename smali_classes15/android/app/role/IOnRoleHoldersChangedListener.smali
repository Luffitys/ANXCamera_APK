.class public interface abstract Landroid/app/role/IOnRoleHoldersChangedListener;
.super Ljava/lang/Object;
.source "IOnRoleHoldersChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/role/IOnRoleHoldersChangedListener$Stub;,
        Landroid/app/role/IOnRoleHoldersChangedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRoleHoldersChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
