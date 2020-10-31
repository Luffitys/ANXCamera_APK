.class public interface abstract Landroid/permission/IOnPermissionsChangeListener;
.super Ljava/lang/Object;
.source "IOnPermissionsChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IOnPermissionsChangeListener$Stub;,
        Landroid/permission/IOnPermissionsChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onPermissionsChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
