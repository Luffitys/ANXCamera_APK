.class public Landroid/view/ViewDebug$SoftwareCanvasProvider;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$CanvasProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftwareCanvasProvider"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mEnabledHwBitmapsInSwMode:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBitmap()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    iget-boolean v1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mEnabledHwBitmapsInSwMode:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvas(Landroid/view/View;II)Landroid/graphics/Canvas;
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    :cond_29
    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_34

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    :cond_34
    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHwBitmapsInSwModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mEnabledHwBitmapsInSwMode:Z

    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    :cond_46
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method
