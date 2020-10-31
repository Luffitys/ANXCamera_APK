.class public final Landroid/hardware/camera2/params/OisSample;
.super Ljava/lang/Object;
.source "OisSample.java"


# instance fields
.field private final mTimestampNs:J

.field private final mXShift:F

.field private final mYShift:F


# direct methods
.method public constructor <init>(JFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    const-string/jumbo v0, "xShift must be finite"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    const-string/jumbo v0, "yShift must be finite"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/OisSample;

    if-eqz v2, :cond_29

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/OisSample;

    iget-wide v3, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    iget v3, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    iget v4, v2, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    iget v3, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    iget v4, v2, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    move v0, v1

    :cond_28
    return v0

    :cond_29
    return v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    return-wide v0
.end method

.method public getXshift()F
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    return v0
.end method

.method public getYshift()F
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [F

    iget-wide v2, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    long-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v4, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    aput v4, v2, v3

    iget v3, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    aput v3, v2, v0

    int-to-float v0, v1

    const/4 v3, 0x2

    aput v0, v2, v3

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "OisSample{timestamp:%d, shift_x:%f, shift_y:%f}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
