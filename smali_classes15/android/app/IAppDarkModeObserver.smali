.class public interface abstract Landroid/app/IAppDarkModeObserver;
.super Ljava/lang/Object;
.source "IAppDarkModeObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppDarkModeObserver$Stub;,
        Landroid/app/IAppDarkModeObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppDarkModeChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
