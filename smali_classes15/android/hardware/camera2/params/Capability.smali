.class public final Landroid/hardware/camera2/params/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# static fields
.field public static final COUNT:I = 0x3


# instance fields
.field private final mMaxStreamingHeight:I

.field private final mMaxStreamingWidth:I

.field private final mMaxZoomRatio:F

.field private final mMinZoomRatio:F

.field private final mMode:I


# direct methods
.method public constructor <init>(IIIFF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    const-string v0, "maxStreamingWidth must be nonnegative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingWidth:I

    const-string v0, "maxStreamingHeight must be nonnegative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingHeight:I

    cmpl-float v0, p4, p5

    if-gtz v0, :cond_2a

    const-string v0, "minZoomRatio must be positive"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/Capability;->mMinZoomRatio:F

    const-string v0, "maxZoomRatio must be positive"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/Capability;->mMaxZoomRatio:F

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minZoomRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " is greater than maxZoomRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    instance-of v2, p1, Landroid/hardware/camera2/params/Capability;

    if-eqz v2, :cond_33

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/Capability;

    iget v3, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    iget v4, v2, Landroid/hardware/camera2/params/Capability;->mMode:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/Capability;->mMaxStreamingWidth:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/Capability;->mMaxStreamingHeight:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/hardware/camera2/params/Capability;->mMinZoomRatio:F

    iget v4, v2, Landroid/hardware/camera2/params/Capability;->mMinZoomRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_32

    iget v3, p0, Landroid/hardware/camera2/params/Capability;->mMaxZoomRatio:F

    iget v4, v2, Landroid/hardware/camera2/params/Capability;->mMaxZoomRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_32

    move v0, v1

    :cond_32
    return v0

    :cond_33
    return v0
.end method

.method public getMaxStreamingSize()Landroid/util/Size;
    .registers 4

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    return v0
.end method

.method public getZoomRatioRange()Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Range;

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMinZoomRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxZoomRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [F

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingWidth:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingHeight:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMinZoomRatio:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxZoomRatio:F

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMinZoomRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxZoomRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "(mode:%d, maxStreamingSize:%d x %d, zoomRatio: %f-%f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
