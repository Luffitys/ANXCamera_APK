.class public Lmiui/smooth/SmoothGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source ""


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

.field private mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mSavedLayer:Landroid/graphics/RectF;

.field protected mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmiui/smooth/SmoothGradientDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v0, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    new-instance v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-instance p1, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {p1}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    new-instance p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {p1}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>()V

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method private constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v0, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    if-nez p2, :cond_0

    iget-object p2, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object p2, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget-object v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    invoke-virtual {p2, v0}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    iget-object p2, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    invoke-virtual {p2, v0}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    iget-object p2, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    invoke-virtual {p2, v0}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget p1, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    invoke-virtual {p0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiui/smooth/SmoothGradientDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p3, p4, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->canApplyTheme()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    sget-object v2, Lmiui/smooth/SmoothGradientDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, p1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    return-object p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget p0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    return p0
.end method

.method public getStrokeWidth()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget p0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    sget-object v0, Lmiui/R$styleable;->MiuiSmoothGradientDrawable:[I

    invoke-direct {p0, p1, p4, p3, v0}, Lmiui/smooth/SmoothGradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->MiuiSmoothGradientDrawable_miui_strokeWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/smooth/SmoothGradientDrawable;->setStrokeWidth(I)V

    sget v1, Lmiui/R$styleable;->MiuiSmoothGradientDrawable_miui_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/smooth/SmoothGradientDrawable;->setStrokeColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iput-object p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    const/4 v0, 0x0

    iput v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0, v0}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iput p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    const/4 v1, 0x0

    iput-object v1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget v1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget v1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
