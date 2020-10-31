.class public interface abstract Landroid/app/timezone/ICallback;
.super Ljava/lang/Object;
.source "ICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/ICallback$Stub;,
        Landroid/app/timezone/ICallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
