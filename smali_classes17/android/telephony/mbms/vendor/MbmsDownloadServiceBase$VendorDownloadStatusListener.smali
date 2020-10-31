.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;
.super Landroid/telephony/mbms/DownloadStatusListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VendorDownloadStatusListener"
.end annotation


# instance fields
.field private final mListener:Landroid/telephony/mbms/IDownloadStatusListener;


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/IDownloadStatusListener;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/mbms/DownloadStatusListener;-><init>()V

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->mListener:Landroid/telephony/mbms/IDownloadStatusListener;

    return-void
.end method


# virtual methods
.method protected abstract onRemoteException(Landroid/os/RemoteException;)V
.end method

.method public onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->mListener:Landroid/telephony/mbms/IDownloadStatusListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/mbms/IDownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->onRemoteException(Landroid/os/RemoteException;)V

    :goto_a
    return-void
.end method
