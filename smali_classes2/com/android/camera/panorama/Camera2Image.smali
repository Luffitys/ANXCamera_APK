.class public Lcom/android/camera/panorama/Camera2Image;
.super Lcom/android/camera/panorama/CaptureImage;
.source "Camera2Image.java"


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/panorama/CaptureImage;-><init>(Landroid/media/Image;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    return p0
.end method

.method public getImageFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    invoke-static {p0}, Lcom/android/camera/panorama/PanoramaGP3ImageFormat;->getImageFormat(Landroid/media/Image;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result p0

    return p0
.end method
