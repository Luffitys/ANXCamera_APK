.class public Lcom/android/camera/storage/RawImageSaveRequest;
.super Ljava/lang/Object;
.source "RawImageSaveRequest.java"

# interfaces
.implements Lcom/android/camera/storage/SaveRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "RawImageSaveRequest"


# instance fields
.field private captureResult:Landroid/hardware/camera2/CaptureResult;

.field private characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private context:Landroid/content/Context;

.field private data:[B

.field private dateTaken:J

.field private height:I

.field private orientation:I

.field private saverCallback:Lcom/android/camera/storage/SaverCallback;

.field private size:I

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>([BLandroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;JLjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    iput-object p2, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureResult:Landroid/hardware/camera2/CaptureResult;

    iput-object p3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput-wide p4, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    iput-object p6, p0, Lcom/android/camera/storage/RawImageSaveRequest;->title:Ljava/lang/String;

    iput p7, p0, Lcom/android/camera/storage/RawImageSaveRequest;->width:I

    iput p8, p0, Lcom/android/camera/storage/RawImageSaveRequest;->height:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->size:I

    iput p9, p0, Lcom/android/camera/storage/RawImageSaveRequest;->orientation:I

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->size:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    iget-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->save()V

    iget-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/storage/RawImageSaveRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureResult:Landroid/hardware/camera2/CaptureResult;

    iget-object v4, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    iget-wide v5, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    iget v7, p0, Lcom/android/camera/storage/RawImageSaveRequest;->width:I

    iget v8, p0, Lcom/android/camera/storage/RawImageSaveRequest;->height:I

    iget v9, p0, Lcom/android/camera/storage/RawImageSaveRequest;->orientation:I

    invoke-static/range {v0 .. v9}, Lcom/android/camera/storage/Storage;->addRawImage(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;[BJIII)Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/storage/RawImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method
