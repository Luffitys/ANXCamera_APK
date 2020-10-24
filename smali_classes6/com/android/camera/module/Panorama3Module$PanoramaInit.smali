.class Lcom/android/camera/module/Panorama3Module$PanoramaInit;
.super Lcom/android/camera/panorama/PanoramaState;
.source ""


# instance fields
.field private aspectRatio:D

.field final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Lcom/android/camera/panorama/PanoramaState;-><init>()V

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$1400(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$1500(Lcom/android/camera/module/Panorama3Module;)Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    mul-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->aspectRatio:D

    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getImageFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/Panorama3Module;->access$1602(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanoramaInit onSaveImage start, ImageFormat :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$1600(Lcom/android/camera/module/Panorama3Module;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Panorama3Module"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1700(Lcom/android/camera/module/Panorama3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Panorama3Module"

    const-string v0, "mRequestStop when PanoramaInit"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-wide v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->aspectRatio:D

    invoke-static {v1, v2, v3}, Lcom/android/camera/module/Panorama3Module;->access$1800(Lcom/android/camera/module/Panorama3Module;D)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$1600(Lcom/android/camera/module/Panorama3Module;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setInputImageFormat(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v3, "Panorama3Module"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInputImageFormat error resultCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v3, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;-><init>(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/module/Panorama3Module$1;)V

    invoke-static {v1, v3}, Lcom/android/camera/module/Panorama3Module;->access$502(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/PanoramaState;)Lcom/android/camera/panorama/PanoramaState;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$500(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/PanoramaState;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/panorama/PanoramaState;->listener:Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;

    invoke-virtual {v1, v3}, Lcom/android/camera/panorama/PanoramaState;->setPanoramaStateEventListener(Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;)V

    invoke-virtual {p0}, Lcom/android/camera/panorama/PanoramaState;->clearListener()V

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaInit;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$500(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/PanoramaState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/panorama/PanoramaState;->onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z

    const-string p0, "Panorama3Module"

    const-string p1, "PanoramaInit onSaveImage end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
