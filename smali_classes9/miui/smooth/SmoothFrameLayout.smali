.class public Lmiui/smooth/SmoothFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

.field private static final XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

.field private mLayer:Landroid/graphics/Rect;

.field private mSavedLayer:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    new-instance p3, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {p3}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    sget-object p3, Lmiui/R$styleable;->MiuiSmoothFrameLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_radius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lmiui/smooth/SmoothFrameLayout;->setCornerRadius(F)V

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    sget v0, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput p2, v3, p3

    const/4 v4, 0x1

    aput p2, v3, v4

    const/4 p2, 0x2

    aput v0, v3, p2

    const/4 p2, 0x3

    aput v0, v3, p2

    const/4 p2, 0x4

    aput v1, v3, p2

    const/4 p2, 0x5

    aput v1, v3, p2

    const/4 p2, 0x6

    aput v2, v3, p2

    const/4 p2, 0x7

    aput v2, v3, p2

    invoke-virtual {p0, v3}, Lmiui/smooth/SmoothFrameLayout;->setCornerRadii([F)V

    :cond_1
    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_miui_strokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/smooth/SmoothFrameLayout;->setStrokeWidth(I)V

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_miui_strokeColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/smooth/SmoothFrameLayout;->setStrokeColor(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateBackground()V
    .locals 2

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBounds()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateBounds()V
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lmiui/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

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

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

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

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCornerRadii()[F
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getRadii()[F

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0}, Lmiui/smooth/internal/SmoothDrawHelper;->getRadii()[F

    move-result-object p0

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    :goto_0
    return-object p0
.end method

.method public getCornerRadius()F
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0}, Lmiui/smooth/internal/SmoothDrawHelper;->getRadius()F

    move-result p0

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    move-result p0

    return p0
.end method

.method public getStrokeWidth()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBounds()V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    :cond_0
    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    iget-object p1, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiui/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    invoke-direct {p0}, Lmiui/smooth/SmoothFrameLayout;->updateBackground()V

    :cond_0
    return-void
.end method
