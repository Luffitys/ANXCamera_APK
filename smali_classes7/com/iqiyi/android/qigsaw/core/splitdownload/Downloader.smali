.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract cancelDownloadSync(I)Z
.end method

.method public abstract deferredDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Z)V
.end method

.method public abstract getDownloadSizeThresholdWhenUsingMobileData()J
.end method

.method public abstract isDeferredDownloadOnlyWhenUsingWifiData()Z
.end method

.method public abstract startDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
.end method
