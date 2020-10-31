.class public interface abstract Lcom/milink/api/v1/IMilinkClientManager;
.super Ljava/lang/Object;
.source "IMilinkClientManager.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract connectWifiDisplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/MiLinkClientMiracastConnectCallback;)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract disconnect()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract disconnectWifiDisplay()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract dismissScanList()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract getPlaybackDuration()I
.end method

.method public abstract getPlaybackProgress()I
.end method

.method public abstract getPlaybackRate()I
.end method

.method public abstract getVolume()I
.end method

.method public abstract open()V
.end method

.method public abstract rotatePhoto(Ljava/lang/String;ZF)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract selectDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V
.end method

.method public abstract setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
.end method

.method public abstract setDeviceListener(Lcom/milink/api/v1/MiLinkClientDeviceListener;)V
.end method

.method public abstract setDeviceName(Ljava/lang/String;)V
.end method

.method public abstract setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract setVolume(I)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract show(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract showScanList(Lcom/milink/api/v1/MiLinkClientScanListCallback;I)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract startPlay(Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract startShow()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract startSlideshow(ILcom/milink/api/v1/type/SlideMode;)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract startTvMiracast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;)Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract startWifiDisplayScan()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract stopPlay()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract stopShow()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract stopSlideshow()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract stopWifiDisplayScan()Lcom/milink/api/v1/type/ReturnCode;
.end method

.method public abstract zoomPhoto(Ljava/lang/String;IIIIIIF)Lcom/milink/api/v1/type/ReturnCode;
.end method
