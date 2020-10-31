.class public interface abstract Lmiui/process/IForegroundInfoListener;
.super Ljava/lang/Object;
.source "IForegroundInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IForegroundInfoListener$Stub;,
        Lmiui/process/IForegroundInfoListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
