.class public Lcom/xiaomi/camera/isp/IspInterfaceInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IspInterfaceInfo"


# instance fields
.field private mInitialized:Z

.field private mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

.field private mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

.field private mPicImageReader:Landroid/media/ImageReader;

.field private mTuningImageReader:Landroid/media/ImageReader;

.field private mYuvImageReader:Landroid/media/ImageReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/isp/IspInterface;Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/media/ImageReader;Landroid/media/ImageReader;Landroid/media/ImageReader;)V
    .locals 0
    .param p1    # Lcom/xiaomi/camera/isp/IspInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/ImageReader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/media/ImageReader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/media/ImageReader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object p0
.end method

.method public getPicImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {p0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getRawInputConfiguration()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {p0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getRawInputSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getYuvImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getYuvInputConfiguration()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {p0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvInputSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {p0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    return p0
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: E. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterface;->release()V

    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    :cond_3
    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    sget-object p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->TAG:Ljava/lang/String;

    const-string v0, "release: X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
