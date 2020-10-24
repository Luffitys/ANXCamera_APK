.class public abstract Lcom/android/camera2/MiCamera2Preview;
.super Ljava/lang/Object;
.source ""


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

    if-eq p0, v0, :cond_1

    const/16 v0, 0xba

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbc

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

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbb

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

.method public needForNormalCapture()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa5

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
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo0o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mBogusCameraId:I

    if-eqz v0, :cond_2

    :cond_0
    iget p0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v0, 0xcf

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcf

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd4

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
