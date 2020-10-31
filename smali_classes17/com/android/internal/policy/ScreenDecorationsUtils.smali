.class public Lcom/android/internal/policy/ScreenDecorationsUtils;
.super Ljava/lang/Object;
.source "ScreenDecorationsUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowCornerRadius(Landroid/content/res/Resources;)F
    .registers 6

    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const v0, 0x105023e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v2, 0x105023f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    const v2, 0x1050242

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x1050243

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v3, v2, v1

    if-nez v3, :cond_2b

    move v2, v0

    :cond_2b
    const v3, 0x1050240

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x1050241

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v1, v3, v1

    if-nez v1, :cond_3f

    move v3, v0

    :cond_3f
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public static supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x11100e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
