.class public Lcom/android/camera/DisplayAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayRect:Lcom/android/camera/IDisplayRect;

.field private final mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/DisplayAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    iget p2, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display123PreviewRect"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/Display123PreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p2, p1, v0}, Lcom/android/camera/Display123PreviewRect;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    :goto_0
    iput-object p2, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowWidth:I

    iget p2, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->windowHeight:I

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio456(II)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display456PreviewRect"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/Display456PreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p2, p1, v0}, Lcom/android/camera/Display456PreviewRect;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init DisplayPreviewRect"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/DisplayPreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p2, p1, v0}, Lcom/android/camera/DisplayPreviewRect;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getBottomBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayHeight()I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getDragLayoutTopMargin()I

    move-result p0

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTipsMarginTop()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTipsMarginTop()I

    move-result p0

    return p0
.end method

.method public getTopBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTopBarWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopBarWidth()I

    move-result p0

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result p0

    return p0
.end method
