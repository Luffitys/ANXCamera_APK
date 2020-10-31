.class public interface abstract Lcom/miui/freeform/IMiuiFreeformWindowService;
.super Ljava/lang/Object;
.source "IMiuiFreeformWindowService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/freeform/IMiuiFreeformWindowService$Stub;,
        Lcom/miui/freeform/IMiuiFreeformWindowService$Default;
    }
.end annotation


# virtual methods
.method public abstract windowDismiss(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract windowResize(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
