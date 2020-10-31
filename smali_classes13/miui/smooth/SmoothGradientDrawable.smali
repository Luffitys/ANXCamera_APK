.class public Lmiui/smooth/SmoothGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SmoothGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;
    }
.end annotation


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

.field private mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mSavedLayer:Landroid/graphics/RectF;

.field protected mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmiui/smooth/SmoothGradientDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

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

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

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

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method private constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v0, Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiui/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    const/4 v0, 0x0

    if-nez p2, :cond_1d

    iget-object v1, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_23

    :cond_1d
    iget-object v1, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_23
    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget-object v2, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    invoke-virtual {v1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v2, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    invoke-virtual {v1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v2, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    invoke-virtual {v1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    iget v2, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    invoke-virtual {v1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiui/smooth/SmoothGradientDrawable$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 6

    if-nez p2, :cond_7

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_14

    :cond_11
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_14
    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    sget-object v2, Lmiui/smooth/SmoothGradientDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, p1, v2}, Lmiui/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v1, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget v0, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget v0, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lmiui/R$styleable;->MiuiSmoothGradientDrawable:[I

    invoke-direct {p0, p1, p4, p3, v0}, Lmiui/smooth/SmoothGradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->MiuiSmoothGradientDrawable_miui_strokeWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/smooth/SmoothGradientDrawable;->setStrokeWidth(I)V

    sget v3, Lmiui/R$styleable;->MiuiSmoothGradientDrawable_miui_strokeColor:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/smooth/SmoothGradientDrawable;->setStrokeColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_a
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSavedLayer:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCornerRadii([F)V
    .registers 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iput-object p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    if-nez p1, :cond_18

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    const/4 v1, 0x0

    iput v1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    :cond_18
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    const/4 p1, 0x0

    :cond_9
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iput p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    const/4 v1, 0x0

    iput-object v1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, v1}, Lmiui/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget v0, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iput p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    invoke-virtual {p0}, Lmiui/smooth/SmoothGradientDrawable;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget v0, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iput p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mHelper:Lmiui/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiui/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    invoke-virtual {p0}, Lmiui/smooth/SmoothGradientDrawable;->invalidateSelf()V

    :cond_12
    return-void
.end method
