.class public Lcom/android/camera/ui/vv/VVProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VVProgressDrawable.java"


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mDurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mSplitOffset:I

.field private mSplitPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTotalDuration:J

.field private mTotalRectF:Landroid/graphics/RectF;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mBgPaint:Landroid/graphics/Paint;

    const v2, 0x7f060060

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f060061

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitOffset:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v2, 0x7f10001f

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/16 v0, 0xc0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalRectF:Landroid/graphics/RectF;

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method private drawDurationText(Landroid/graphics/Canvas;FFF)V
    .locals 4

    add-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "%.1fs"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    div-float/2addr v1, p4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p4

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p4

    sub-float/2addr p3, v0

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p3, 0x42b40000    # 90.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object p0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRecording(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mDurationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mHeight:F

    iget v2, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitOffset:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v2

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mDurationList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalDuration:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v1

    if-ge v4, v3, :cond_0

    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v5, v6

    iget v9, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    iget v10, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitOffset:I

    int-to-float v10, v10

    add-float/2addr v10, v8

    invoke-direct {v7, v2, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mDurationList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    new-instance v7, Landroid/graphics/RectF;

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v5, v8

    iget v10, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    add-float v11, v5, v6

    add-float/2addr v11, v8

    invoke-direct {v7, v2, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawSplit(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mDurationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mHeight:F

    iget v2, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitOffset:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v2

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v6, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mDurationList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalDuration:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v1

    if-ge v4, v3, :cond_0

    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v5, v6

    iget v9, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    iget v10, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitOffset:I

    int-to-float v10, v10

    add-float/2addr v10, v8

    invoke-direct {v7, v2, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mSplitOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v8, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    iget v9, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mHeight:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    div-float v4, v3, v2

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/vv/VVProgressDrawable;->drawRecording(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/vv/VVProgressDrawable;->drawSplit(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setDurationList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalDuration:J

    iput-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mDurationList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalDuration:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalDuration:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWidthHeight(FF)V
    .locals 1

    iput p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    iput p2, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mHeight:F

    iget-object p1, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mTotalRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mWidth:F

    iget p0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mHeight:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public updateDuration(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/vv/VVProgressDrawable;->mDurationList:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
