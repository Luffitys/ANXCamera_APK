.class public interface abstract Lcom/miui/whetstone/IProcessForegroundCallback;
.super Ljava/lang/Object;
.source "IProcessForegroundCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IProcessForegroundCallback$Stub;,
        Lcom/miui/whetstone/IProcessForegroundCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onTargetProcessForeground(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
