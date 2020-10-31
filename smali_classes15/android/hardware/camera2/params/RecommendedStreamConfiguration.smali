.class public final Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
.super Landroid/hardware/camera2/params/StreamConfiguration;
.source "RecommendedStreamConfiguration.java"


# instance fields
.field private final mUsecaseBitmap:I


# direct methods
.method public constructor <init>(IIIZI)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    iput p5, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    if-eqz v2, :cond_2f

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    if-ne v3, v4, :cond_2e

    iget-boolean v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_2e

    move v0, v1

    :cond_2e
    return v0

    :cond_2f
    return v0
.end method

.method public getUsecaseBitmap()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
