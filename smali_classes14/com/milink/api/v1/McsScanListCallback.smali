.class public Lcom/milink/api/v1/McsScanListCallback;
.super Lcom/milink/api/v1/aidl/IMcsScanListCallback$Stub;
.source "McsScanListCallback.java"


# instance fields
.field private mCallback:Lcom/milink/api/v1/MiLinkClientScanListCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/milink/api/v1/aidl/IMcsScanListCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsScanListCallback;->mCallback:Lcom/milink/api/v1/MiLinkClientScanListCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/milink/api/v1/MiLinkClientScanListCallback;->onConnectFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onConnectSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsScanListCallback;->mCallback:Lcom/milink/api/v1/MiLinkClientScanListCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/milink/api/v1/MiLinkClientScanListCallback;->onConnectSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onSelectDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsScanListCallback;->mCallback:Lcom/milink/api/v1/MiLinkClientScanListCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/milink/api/v1/MiLinkClientScanListCallback;->onSelectDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setCallback(Lcom/milink/api/v1/MiLinkClientScanListCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/McsScanListCallback;->mCallback:Lcom/milink/api/v1/MiLinkClientScanListCallback;

    return-void
.end method
