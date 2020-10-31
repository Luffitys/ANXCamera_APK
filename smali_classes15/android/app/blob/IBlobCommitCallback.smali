.class public interface abstract Landroid/app/blob/IBlobCommitCallback;
.super Ljava/lang/Object;
.source "IBlobCommitCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobCommitCallback$Stub;,
        Landroid/app/blob/IBlobCommitCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
