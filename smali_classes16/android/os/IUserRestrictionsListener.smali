.class public interface abstract Landroid/os/IUserRestrictionsListener;
.super Ljava/lang/Object;
.source "IUserRestrictionsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserRestrictionsListener$Stub;,
        Landroid/os/IUserRestrictionsListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
