.class public interface abstract Lcom/miui/whetstone/INetStateCallback;
.super Ljava/lang/Object;
.source "INetStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/INetStateCallback$Stub;,
        Lcom/miui/whetstone/INetStateCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCheckComplete(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
