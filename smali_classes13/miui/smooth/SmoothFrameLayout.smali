.class public Lmiui/smooth/SmoothFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SmoothFrameLayout.java"


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

.field private static final XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

.field private mLayer:Landroid/graphics/Rect;

.field private mSavedLayer:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmiui/smooth/SmoothFrameLayout;->XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmiui/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    new-instance v0, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    sget-object v0, Lmiui/R$styleable;->MiuiSmoothFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_radius:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/smooth/SmoothFrameLayout;->setCornerRadius(F)V

    sget v3, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_49

    sget v3, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_49

    sget v3, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_49

    sget v3, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_83

    :cond_49
    sget v3, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0x8

    new-array v7, v7, [F

    aput v3, v7, v2

    const/4 v8, 0x1

    aput v3, v7, v8

    const/4 v8, 0x2

    aput v4, v7, v8

    const/4 v8, 0x3

    aput v4, v7, v8

    const/4 v8, 0x4

    aput v5, v7, v8

    const/4 v8, 0x5

    aput v5, v7, v8

    const/4 v8, 0x6

    aput v6, v7, v8

    const/4 v8, 0x7

    aput v6, v7, v8

    invoke-virtual {p0, v7}, Lmiui/smooth/SmoothFrameLayout;->setCornerRadii([F)V

    :cond_83
    sget v3, Lmiui/R$styleable;->MiuiSmoothFrameLayout_miui_strokeWidth:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/smooth/SmoothFrameLayout;->setStrokeWidth(I)V

    sget v4, Lmiui/R$styleable;->MiuiSmoothFrameLayout_miui_strokeColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/smooth/SmoothFrameLayout;->setStrokeColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateBackground()V
    .registers 3

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBounds()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lmiui/smooth/SmoothFrameLayout;->invalidateOutline()V

    :cond_c
    invoke-virtual {p0}, Lmiui/smooth/SmoothFrameLayout;->invalidate()V

    return-void
.end method

.method private updateBounds()V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    sget-object v2, Lmiui/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, p1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v1, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    sget-object v2, Lmiui/smooth/SmoothFrameLayout;->XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, p1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v1, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCornerRadii()[F
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getRadii()[F

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getRadii()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_16
    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getRadius()F

    move-result v0

    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBounds()V

    return-void
.end method

.method public setCornerRadii([F)V
    .registers 4

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    if-nez p1, :cond_d

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    :cond_d
    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    const/4 p1, 0x0

    :cond_6
    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    if-eq v0, p1, :cond_10

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    :cond_10
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    if-eq v0, p1, :cond_10

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    :cond_10
    return-void
.end method
