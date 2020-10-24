.class public Lcom/android/camera/ui/FastmotionIndicatorView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final HEIGHT_COMPENSATION:F = 1.1f

.field private static final WIDTH_COMPENSATION:F = 1.1f


# instance fields
.field private mDuration:Ljava/lang/String;

.field protected mDurationTextPaint:Landroid/text/TextPaint;

.field protected mDurationTextSize:I

.field private mNeedExtendSpeedWidth:Z

.field private mNumber:Ljava/lang/String;

.field protected mPaint:Landroid/graphics/Paint;

.field private mSpeed:Ljava/lang/String;

.field protected mSpeedTextPaint:Landroid/text/TextPaint;

.field protected mSpeedTextSize:I

.field private mTextBold:Z

.field protected mTextColor:I

.field protected mlineColor:I

.field protected mlineGap:I

.field protected mlineHeight:I

.field protected mlineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p3, ""

    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/camera/R$styleable;->FastmotionIndicatorView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextSize:I

    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextSize:I

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextBold:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06018e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060135

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineColor:I

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-virtual {p1, p2, v1, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextBold:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextColor:I

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v1, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextBold:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v7, v1, v7

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_0
    iget v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    add-int/2addr v5, v6

    int-to-float v7, v5

    iget v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    iget-boolean v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_1
    iget v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v5, v6

    int-to-float v9, v5

    iget v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    add-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x40000000    # 2.0f

    iget-object v13, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0xa

    :cond_3
    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v0, v4

    :goto_2
    int-to-float v0, v0

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v4

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    :goto_3
    iget v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v7, v1, v7

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v2, v7

    iget-object v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v6, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v4, :cond_6

    add-int/lit8 v0, v0, 0xa

    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz v2, :cond_2

    add-int/lit8 p1, p1, 0xa

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr p1, v2

    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showFastmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-boolean p4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
