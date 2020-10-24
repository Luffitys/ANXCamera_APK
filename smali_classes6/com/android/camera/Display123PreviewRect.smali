.class public Lcom/android/camera/Display123PreviewRect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Display123PreviewRect;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    return-void
.end method


# virtual methods
.method public getBottomBarHeight()I
    .locals 0

    const/16 p0, 0x1c2

    return p0
.end method

.method public getBottomHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getBottomBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    mul-int/lit8 p0, p0, 0x4

    div-int/lit8 p0, p0, 0x3

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "4:3"

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    move p0, v0

    move v1, p0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    move v2, v1

    move v1, p0

    move p0, v0

    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v2, p0

    add-int/2addr v1, v0

    invoke-direct {v3, p0, v0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDisplayRect:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",uiStyle:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IDisplayRect"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public getDragLayoutTopMargin()I
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getScreenOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    int-to-float p0, p0

    const v1, 0x3ee8f5c3    # 0.455f

    :goto_0
    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    int-to-float p0, p0

    const v1, 0x3f266666    # 0.65f

    goto :goto_0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getBottomHeight()I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public getTipsMarginTop()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PreviewRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070547

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getTopBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    int-to-float p0, p0

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getTopBarWidth()I
    .locals 4

    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    int-to-double v0, p0

    const-wide v2, 0x3fe3d70a3d70a3d7L    # 0.62

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display123PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
