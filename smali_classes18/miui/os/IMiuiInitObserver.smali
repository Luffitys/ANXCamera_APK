.class public interface abstract Lmiui/os/IMiuiInitObserver;
.super Ljava/lang/Object;
.source "IMiuiInitObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/IMiuiInitObserver$Stub;,
        Lmiui/os/IMiuiInitObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract initDone(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
