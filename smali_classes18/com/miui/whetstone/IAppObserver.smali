.class public interface abstract Lcom/miui/whetstone/IAppObserver;
.super Ljava/lang/Object;
.source "IAppObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IAppObserver$Stub;,
        Lcom/miui/whetstone/IAppObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onScreenAppChanged(Lcom/miui/whetstone/AppInfo;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
