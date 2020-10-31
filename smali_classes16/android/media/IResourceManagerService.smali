.class public interface abstract Landroid/media/IResourceManagerService;
.super Ljava/lang/Object;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerService$Stub;,
        Landroid/media/IResourceManagerService$Default;
    }
.end annotation


# static fields
.field public static final kPolicySupportsMultipleSecureCodecs:Ljava/lang/String; = "supports-multiple-secure-codecs"

.field public static final kPolicySupportsSecureWithNonSecureCodec:Ljava/lang/String; = "supports-secure-with-non-secure-codec"


# virtual methods
.method public abstract addResource(IIJLandroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract config([Landroid/media/MediaResourcePolicyParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract markClientForPendingRemoval(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract overridePid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reclaimResource(I[Landroid/media/MediaResourceParcel;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeClient(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeResource(IJ[Landroid/media/MediaResourceParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
