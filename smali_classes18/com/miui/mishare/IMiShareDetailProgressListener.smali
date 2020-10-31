.class public interface abstract Lcom/miui/mishare/IMiShareDetailProgressListener;
.super Ljava/lang/Object;
.source "IMiShareDetailProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareDetailProgressListener$Stub;,
        Lcom/miui/mishare/IMiShareDetailProgressListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onProgress(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
