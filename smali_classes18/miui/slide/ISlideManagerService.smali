.class public interface abstract Lmiui/slide/ISlideManagerService;
.super Ljava/lang/Object;
.source "ISlideManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/ISlideManagerService$Stub;,
        Lmiui/slide/ISlideManagerService$Default;
    }
.end annotation


# virtual methods
.method public abstract getAppSlideConfig(Ljava/lang/String;I)Lmiui/slide/AppSlideConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSlideChangeListener(Ljava/lang/String;Lmiui/slide/ISlideChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterSlideChangeListener(Lmiui/slide/ISlideChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
