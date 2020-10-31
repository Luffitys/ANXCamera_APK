.class Landroid/graphics/Picture$PictureCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCanvas"
.end annotation


# instance fields
.field mHoldsHwBitmap:Z

.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;J)V
    .registers 5

    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    iput-object p1, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Picture$PictureCanvas;->mDensity:I

    return-void
.end method


# virtual methods
.method public drawPicture(Landroid/graphics/Picture;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    if-eq v0, p1, :cond_8

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot draw a picture into its recording canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onHwBitmapInSwMode()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Picture$PictureCanvas;->mHoldsHwBitmap:Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot call setBitmap on a picture canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
