.class public Lcom/android/camera/ui/AutoHibernationBatteryView;
.super Landroid/view/View;
.source ""


# instance fields
.field private mBattery:Ljava/lang/String;

.field private mBatteryContentHeight:I

.field private mBatteryDrawable:Landroid/graphics/drawable/Drawable;

.field private mBatteryInt:I

.field private mBatteryLow:I

.field private mBatteryMarginLeft:I

.field private mBatteryMarginRight:I

.field private mBatteryNormal:I

.field private mGap:I

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field protected mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string p2, ""

    iput-object p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string p2, ""

    iput-object p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string p2, ""

    iput-object p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginLeft:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginRight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryContentHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormal:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryLow:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextSize:I

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormal:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080360

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormal:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mGap:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginRight:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginLeft:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v2

    iget v5, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginLeft:I

    int-to-float v6, v5

    add-float/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    iget v8, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryContentHeight:I

    sub-int v9, v7, v8

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    add-int/2addr v7, v8

    int-to-float v0, v7

    div-float/2addr v0, v10

    invoke-direct {v3, v6, v9, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const/16 v4, 0x14

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormal:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryLow:I

    :goto_0
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v10, v10, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mGap:I

    iget-object v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    iget-object p0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public showBattery(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
