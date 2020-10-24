.class public Lcom/android/camera/Display456PreviewRect;
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

    iput-object p1, p0, Lcom/android/camera/Display456PreviewRect;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    return-void
.end method


# virtual methods
.method public getBottomBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    int-to-float p0, p0

    const v0, 0x3e51eb85    # 0.205f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getBottomBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getBottomMargin()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    int-to-float p0, p0

    const v0, 0x3f178d50    # 0.592f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "3:1"

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-nez p1, :cond_0

    const p1, 0x3faaaaab

    goto :goto_0

    :cond_0
    const p1, 0x3fe38e39

    :goto_0
    iget-object v2, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p1, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getTopCoverHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p1, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    move v0, v1

    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    add-int/2addr p1, v0

    invoke-direct {v2, v1, v0, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDisplayRect:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IDisplayRect"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getDragLayoutTopMargin()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Display456PreviewRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getTipsMarginTop()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Display456PreviewRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/android/camera/Display456PreviewRect;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070547

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getTopBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getTopMargin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getCenterDisplayHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getTopBarWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    iget-object p0, p0, Lcom/android/camera/Display456PreviewRect;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07050c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTopCoverHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getBottomHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Display456PreviewRect;->getSquareBottomCoverHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display456PreviewRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget-boolean v0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->isNotchDevice:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
