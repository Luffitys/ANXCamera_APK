.class Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field private mCameraType:I

.field private mImageFlag:I

.field private mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;


# direct methods
.method constructor <init>(IILcom/xiaomi/camera/core/ImageMemoryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    iput p2, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    iput-object p3, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[0] onImageAvailable: null imageReader!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ImageMemoryManager;->waitImageCloseIfNeeded(I)V

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[0] onImageAvailable: timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/camera/core/ImageMemoryManager;->holdAnImage(ILandroid/media/Image;)V

    invoke-static {}, Lcom/android/camera/Util;->isDumpImageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hal"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/base/ImageUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    iget p0, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V

    return-void
.end method
