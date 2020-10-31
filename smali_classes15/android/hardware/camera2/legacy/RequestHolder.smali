.class public Landroid/hardware/camera2/legacy/RequestHolder;
.super Ljava/lang/Object;
.source "RequestHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestHolder"


# instance fields
.field private volatile mFailed:Z

.field private final mFrameNumber:J

.field private final mJpegSurfaceIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumJpegTargets:I

.field private final mNumPreviewTargets:I

.field private mOutputAbandoned:Z

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mRequestId:I

.field private final mSubsequeceId:I


# direct methods
.method private constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/camera2/CaptureRequest;",
            "ZJII",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRepeating:Z

    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequestId:I

    iput p2, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mSubsequeceId:I

    iput-wide p5, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFrameNumber:J

    iput p7, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    iput p8, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    iput-object p9, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mJpegSurfaceIds:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;Landroid/hardware/camera2/legacy/RequestHolder$1;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/hardware/camera2/legacy/RequestHolder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public failRequest()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture failed for request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    return-void
.end method

.method public getFrameNumber()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFrameNumber:J

    return-wide v0
.end method

.method public getHolderTargets()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequestId:I

    return v0
.end method

.method public getSubsequeceId()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mSubsequeceId:I

    return v0
.end method

.method public hasJpegTargets()Z
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasPreviewTargets()Z
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOutputAbandoned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    return v0
.end method

.method public isRepeating()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRepeating:Z

    return v0
.end method

.method public jpegType(Landroid/view/Surface;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mJpegSurfaceIds:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public numJpegTargets()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    return v0
.end method

.method public numPreviewTargets()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    return v0
.end method

.method public requestFailed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    return v0
.end method

.method public setOutputAbandoned()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    return-void
.end method
