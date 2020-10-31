.class public interface abstract Landroid/app/IWindowToken;
.super Ljava/lang/Object;
.source "IWindowToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWindowToken$Stub;,
        Landroid/app/IWindowToken$Default;
    }
.end annotation


# virtual methods
.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWindowTokenRemoved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
