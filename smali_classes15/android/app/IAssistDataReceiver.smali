.class public interface abstract Landroid/app/IAssistDataReceiver;
.super Ljava/lang/Object;
.source "IAssistDataReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAssistDataReceiver$Stub;,
        Landroid/app/IAssistDataReceiver$Default;
    }
.end annotation


# virtual methods
.method public abstract onHandleAssistData(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
