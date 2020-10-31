.class public interface abstract Landroid/service/contentcapture/IDataShareCallback;
.super Ljava/lang/Object;
.source "IDataShareCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IDataShareCallback$Stub;,
        Landroid/service/contentcapture/IDataShareCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract accept(Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
