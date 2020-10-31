.class public interface abstract Lcom/miui/mishare/IMiShareListener;
.super Ljava/lang/Object;
.source "IMiShareListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareListener$Stub;,
        Lcom/miui/mishare/IMiShareListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onTaskFinish(Lcom/miui/mishare/MiShareTask;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTaskProgress(Lcom/miui/mishare/MiShareTask;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTaskReceived(Lcom/miui/mishare/MiShareTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTaskStart(Lcom/miui/mishare/MiShareTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
