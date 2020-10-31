.class public abstract Landroid/graphics/MiuiCanvas;
.super Landroid/graphics/BaseCanvas;
.source "MiuiCanvas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiCanvas"


# instance fields
.field private mForceDarkAllowed:Z

.field private mHasForceDark:Z

.field private mIsBitmapCanvas:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    return-void
.end method


# virtual methods
.method public drawARGB(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawARGB(IIII)V

    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .registers 9

    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 6

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 5

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 6

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 6

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 11

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p9}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 11

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p9}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 10

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p8}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawColor(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/BlendMode;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/BlendMode;)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public drawColor(JLandroid/graphics/BlendMode;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawColor(JLandroid/graphics/BlendMode;)V

    return-void
.end method

.method public drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 9

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p7}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 7

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p5}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 5

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawPatch(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 5

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawPatch(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 5

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 7

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p5}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRGB(III)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawRGB(III)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 7

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p5}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 4

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 4

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 9

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p7}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 6

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 8

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p6}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 8

    invoke-virtual {p4}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v2

    invoke-virtual {v2, p0, p4}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 8

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p6}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 8

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p6}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 7

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p5}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 9

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p7}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 11

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p9}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 11

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p9}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 11

    invoke-static {}, Landroid/view/ForceDarkHelper;->getInstance()Landroid/view/ForceDarkHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p9}, Landroid/view/ForceDarkHelper;->changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 13

    invoke-super/range {p0 .. p12}, Landroid/graphics/BaseCanvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    return-void
.end method

.method public getHeight()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasForceDark()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/MiuiCanvas;->mHasForceDark:Z

    return v0
.end method

.method public isBitmapCanvas()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/MiuiCanvas;->mIsBitmapCanvas:Z

    return v0
.end method

.method public isForceDarkAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/MiuiCanvas;->mForceDarkAllowed:Z

    return v0
.end method

.method public setForceDark(Z)V
    .registers 2

    return-void
.end method

.method public setForceDarkAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/MiuiCanvas;->mForceDarkAllowed:Z

    return-void
.end method

.method public setHasForceDark(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/MiuiCanvas;->mHasForceDark:Z

    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/MiuiCanvas;->mNativeCanvasWrapper:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/MiuiCanvas;->mIsBitmapCanvas:Z

    :cond_12
    return-void
.end method
