.class public Lcom/android/camera/panorama/DirectionFunction;
.super Ljava/lang/Object;
.source "DirectionFunction.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final ERROR_NO_EFFECTIVE_PIXEL:I = -0x1

.field public static final SUCCEEDED:I


# instance fields
.field private final mAngle:I

.field protected mDirection:I

.field private final mInputHeight:I

.field private final mInputWidth:I

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private final mScale:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mDirection:I

    iput p1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    iput p2, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    iput p5, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:I

    iput p6, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    iput p3, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxWidth:I

    iput p4, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAngle()I
    .locals 0

    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    return p0
.end method

.method public getDirection()I
    .locals 0

    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mDirection:I

    return p0
.end method

.method protected getHorizontalPreviewSize()Landroid/util/Size;
    .locals 4

    iget v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxWidth:I

    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:I

    div-int/2addr v0, v1

    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    div-int/2addr p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:I

    div-int p0, v1, p0

    :goto_1
    and-int/lit8 v0, v0, -0x2

    and-int/lit8 p0, p0, -0x2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getScale()I
    .locals 0

    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:I

    return p0
.end method

.method protected getVerticalPreviewSize()Landroid/util/Size;
    .locals 4

    iget v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxHeight:I

    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:I

    div-int/2addr v0, v1

    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    div-int/2addr p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    iget p0, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:I

    div-int p0, v1, p0

    :goto_1
    and-int/lit8 p0, p0, -0x2

    and-int/lit8 v0, v0, -0x2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method
