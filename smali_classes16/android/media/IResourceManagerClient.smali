.class public interface abstract Landroid/media/IResourceManagerClient;
.super Ljava/lang/Object;
.source "IResourceManagerClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerClient$Stub;,
        Landroid/media/IResourceManagerClient$Default;
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reclaimResource()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
