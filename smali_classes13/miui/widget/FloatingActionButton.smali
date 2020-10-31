.class public Lmiui/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;
    }
.end annotation


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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

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

    mul-float v2, v0, v1

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/FloatingActionButton;->mShadowYOffset:I

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    sget-object v1, Lmiui/R$styleable;->FloatingActionButton:[I

    sget v2, Lmiui/R$style;->Widget_FloatingActionButton:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lmiui/R$styleable;->FloatingActionButton_fabShadowEnabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/widget/FloatingActionButton;->mIsShadowEnabled:Z

    sget v2, Lmiui/R$styleable;->FloatingActionButton_fabColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    sget v2, Lmiui/R$styleable;->FloatingActionButton_fabColor:I

    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiui/R$attr;->colorAccent:I

    invoke-static {v3, v4}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->initBackground()V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    invoke-static {p0}, Lcom/miui/internal/widget/FloatingActionButtonHelper;->initFabTouchAnimation(Landroid/view/View;)V

    return-void
.end method

.method private computeShadowColor(I)I
    .registers 6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method private createFabBackground()Landroid/graphics/drawable/Drawable;
    .registers 10

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v1, p0}, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iget-boolean v1, p0, Lmiui/widget/FloatingActionButton;->mIsShadowEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_37

    iget v1, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-direct {p0, v1}, Lmiui/widget/FloatingActionButton;->computeShadowColor(I)I

    move-result v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    :goto_1f
    nop

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmiui/widget/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget v6, p0, Lmiui/widget/FloatingActionButton;->mShadowRadius:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/widget/FloatingActionButton;->mShadowXOffset:I

    int-to-float v7, v7

    iget v8, p0, Lmiui/widget/FloatingActionButton;->mShadowYOffset:I

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_37
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v4, p0}, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/high16 v5, 0xd000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    invoke-direct {v4, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v2, v4

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v4, Lmiui/widget/FloatingActionButton;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v4, Lmiui/widget/FloatingActionButton;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v4, Lmiui/widget/FloatingActionButton;->EMPTY_STATE_SET:[I

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1a

    nop

    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

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

    :cond_1a
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private initBackground()V
    .registers 5

    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    nop

    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$attr;->actionButtonMainBackground:I

    invoke-static {v2, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_20

    iput-object v2, p0, Lmiui/widget/FloatingActionButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    invoke-super {p0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    :cond_20
    iget-boolean v1, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    :cond_2c
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_33
    goto :goto_36

    :cond_34
    iput-boolean v1, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    :goto_36
    return-void
.end method

.method private updatePadding()V
    .registers 7

    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mIsShadowEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_31

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

    invoke-virtual {p0, v0, v2, v3, v1}, Lmiui/widget/FloatingActionButton;->setPadding(IIII)V

    goto :goto_34

    :cond_31
    invoke-virtual {p0, v1, v1, v1, v1}, Lmiui/widget/FloatingActionButton;->setPadding(IIII)V

    :goto_34
    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 3

    const v0, 0x10000001

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lmiui/widget/FloatingActionButton;->performHapticFeedback(I)Z

    :cond_c
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    move-object v0, p1

    if-nez v0, :cond_a

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_a
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    if-eq v0, p1, :cond_14

    :cond_8
    iput p1, p0, Lmiui/widget/FloatingActionButton;->mFabColor:I

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->createFabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->mHasFabColor:Z

    if-nez p1, :cond_d

    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->getDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_10
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->updatePadding()V

    return-void
.end method
