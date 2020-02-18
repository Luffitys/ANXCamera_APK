.class public abstract Lcom/android/camera2/MiCamera2Preview;
.super Ljava/lang/Object;
.source "MiCamera2Preview.java"


# instance fields
.field protected mBogusCameraId:I

.field protected mCurrentModule:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    iput p2, p0, Lcom/android/camera2/MiCamera2Preview;->mBogusCameraId:I

    return-void
.end method


# virtual methods
.method public needForCapture()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xad

    if-eq p0, v0, :cond_1

    const/16 v0, 0xaf

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public needForFrontCamera()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mBogusCameraId:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needForManually()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needForPortrait()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v0, 0xab

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needForProVideo()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needForVideo()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xae

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xac

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
