.class public Lmiui/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field private static final PRESSED_MASK_COLOR:I = 0xd000000

.field private static final SHADOW_ALPHA:I = 0x19

.field private static final SHADOW_RADIUS:F = 5.45f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 5.45f


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mFabColor:I

.field private mHasFabColor:Z

.field private final mIsShadowEnabled:Z

.field private final mShadowRadius:I

.field private final mShadowXOffset:I

.field private final mShadowYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lmiui/widget/FloatingActionButton;->mShadowXOffset:I

    const v1, 0x40ae6666    # 5.45f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/FloatingActionButton;->mShadowYOffset:I

    iput v0, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    sget-object v0, Lmiui/R$styleable;->FloatingActionButton:[I

    sget v1, Lmiui/R$style;->Widget_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiui/R$styleable;->FloatingActionButton_fabShadowEnabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/FloatingActionButton;->mIsShadowEnabled:Z

    sget p2, Lmiui/R$styleable;->FloatingActionButton_fabColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    sget p2, Lmiui/R$styleable;->FloatingActionButton_fabColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lmiui/R$attr;->colorAccent:I

    invoke-static {p3, v0}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->initBackground()V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    invoke-static {p0}, Lcom/miui/internal/widget/FloatingActionButtonHelper;->initFabTouchAnimation(Landroid/view/View;)V

    return-void
.end method

.method private computeShadowColor(I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v1, 0x19

    invoke-static {v1, p0, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private createFabBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v1, p0}, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iget-boolean v1, p0, Lmiui/widget/FloatingActionButton;->mIsShadowEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-direct {p0, v1}, Lmiui/widget/FloatingActionButton;->computeShadowColor(I)I

    move-result v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    int-to-float v5, v5

    iget v6, p0, Lmiui/widget/FloatingActionButton;->mShadowXOffset:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/widget/FloatingActionButton;->mShadowYOffset:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v4, p0}, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/high16 v4, 0xd000000

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v2

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v2, Landroid/widget/ImageView;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v1, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v2, Landroid/widget/ImageView;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {v1, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object p0, Landroid/widget/ImageView;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, p0, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiui/R$attr;->colorAccent:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lmiui/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private initBackground()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$attr;->actionButtonMainBackground:I

    invoke-static {v0, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lmiui/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    :goto_1
    return-void
.end method

.method private updatePadding()V
    .locals 6

    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mIsShadowEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    iget v2, p0, Lmiui/widget/FloatingActionButton;->mShadowXOffset:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    iget v3, p0, Lmiui/widget/FloatingActionButton;->mShadowYOffset:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    iget v4, p0, Lmiui/widget/FloatingActionButton;->mShadowXOffset:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    iget v5, p0, Lmiui/widget/FloatingActionButton;->mShadowYOffset:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    const v0, 0x10000001

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result p0

    return p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    return-void
.end method
