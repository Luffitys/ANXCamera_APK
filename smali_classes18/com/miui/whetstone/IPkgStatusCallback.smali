.class public interface abstract Lcom/miui/whetstone/IPkgStatusCallback;
.super Ljava/lang/Object;
.source "IPkgStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPkgStatusCallback$Stub;,
        Lcom/miui/whetstone/IPkgStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyChange(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
