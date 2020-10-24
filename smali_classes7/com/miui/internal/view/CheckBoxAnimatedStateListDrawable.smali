.class public Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
.super Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;
.source ""


# static fields
.field protected static final FULL_ALPHA:I = 0xff

.field protected static final HALF_ALPHA:I = 0x7f


# instance fields
.field private mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

.field private mContentAlpha:F

.field private mIsEnabled:Z

.field private mPrePressed:Z

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iput v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iput p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    new-instance p1, Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v2

    iget v3, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v4, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v5, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v6, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v7, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v8, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v9, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v10, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;-><init>(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getCheckWidgetDrawableStyle()I

    move-result v0

    sget-object v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_disableBackgroundColor:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnAlphaBackgroundColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnBackgroundColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_strokeColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundNormalAlpha:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundDisableAlpha:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_strokeNormalAlpha:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_strokeDisableAlpha:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_touchAnimEnable:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v4

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v5, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v6, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v7, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v8, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v9, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v10, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v11, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v12, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;-><init>(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v0, v0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-boolean v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x7f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    div-int/2addr v4, v2

    int-to-float v0, v4

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getCheckWidgetDrawableStyle()I
    .locals 0

    sget p0, Lcom/miui/internal/R$style;->CheckWidgetDrawable_CheckBox:I

    return p0
.end method

.method public getContentAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return p0
.end method

.method protected isSingleSelectionWidget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected newCheckWidgetConstantState()Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .locals 0

    new-instance p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;

    invoke-direct {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;-><init>()V

    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 8

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_5

    aget v5, p1, v1

    const v6, 0x10100a7

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    const v6, 0x10100a0

    if-ne v5, v6, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    const v6, 0x101009e

    if-ne v5, v6, :cond_4

    iput-boolean v7, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p0, v4}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->startPressedAnim(Z)V

    :cond_6
    iget-boolean p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez p1, :cond_7

    if-nez v3, :cond_7

    iget-boolean p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    invoke-virtual {p0, v4, p1}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->verifyChecked(ZZ)V

    :cond_7
    if-nez v3, :cond_8

    invoke-virtual {p0, v4}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->startUnPressedAnim(Z)V

    :cond_8
    iput-boolean v3, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    return v0
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setCheckWidgetDrawableBounds(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method protected setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return-void
.end method

.method protected startPressedAnim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean p0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->startPressedAnim(ZZ)V

    :cond_0
    return-void
.end method

.method protected startUnPressedAnim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean p0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V

    :cond_0
    return-void
.end method

.method protected verifyChecked(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->verifyChecked(ZZ)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
