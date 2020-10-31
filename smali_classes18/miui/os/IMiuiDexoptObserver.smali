.class public interface abstract Lmiui/os/IMiuiDexoptObserver;
.super Ljava/lang/Object;
.source "IMiuiDexoptObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/IMiuiDexoptObserver$Stub;,
        Lmiui/os/IMiuiDexoptObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
