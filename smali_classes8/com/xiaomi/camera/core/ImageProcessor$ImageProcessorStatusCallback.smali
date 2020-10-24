.class public interface abstract Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
.end method

.method public abstract isAnyFrontProcessing(Lcom/xiaomi/camera/core/ImageProcessor;)Z
.end method

.method public abstract onImageProcessFailed(Landroid/media/Image;Ljava/lang/String;)V
.end method

.method public abstract onImageProcessStart(J)V
.end method

.method public abstract onImageProcessed(Landroid/media/Image;IZ)V
.end method

.method public abstract onMetadataReceived(ILjava/lang/Object;)V
.end method

.method public abstract onOriginalImageClosed(Landroid/media/Image;)V
.end method
