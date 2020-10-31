.class public Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
.super Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;
.source "CheckBoxAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
    }
.end annotation


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
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iput v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .registers 16

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iput v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    new-instance v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v3

    iget v4, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v5, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v6, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v7, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v8, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v9, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v10, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v11, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;-><init>(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 16

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getCheckWidgetDrawableStyle()I

    move-result v0

    sget-object v1, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_disableBackgroundColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnAlphaBackgroundColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnBackgroundColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_strokeColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundNormalAlpha:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundDisableAlpha:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_strokeNormalAlpha:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_strokeDisableAlpha:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v2, Lcom/miui/internal/R$styleable;->CheckWidgetDrawable_checkwidget_touchAnimEnable:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v5

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v6, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v7, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v8, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v9, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v10, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v11, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v12, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v13, v2, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v13}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;-><init>(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_e

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_e
    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    :cond_1b
    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1f
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-boolean v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v2, :cond_34

    invoke-virtual {v2, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    :cond_34
    const/high16 v2, 0x437f0000    # 255.0f

    iget v4, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setAlpha(I)V

    goto :goto_43

    :cond_3e
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setAlpha(I)V

    :goto_43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/2addr v5, v3

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v3

    int-to-float v3, v6

    invoke-virtual {p1, v4, v4, v5, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getCheckWidgetDrawableStyle()I
    .registers 2

    sget v0, Lcom/miui/internal/R$style;->CheckWidgetDrawable_CheckBox:I

    return v0
.end method

.method public getContentAlpha()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return v0
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return v0
.end method

.method protected isSingleSelectionWidget()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected newCheckWidgetConstantState()Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .registers 2

    new-instance v0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;

    invoke-direct {v0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;-><init>()V

    return-object v0
.end method

.method protected onStateChange([I)Z
    .registers 10

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-nez v1, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_18

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_18

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->onStateChange([I)Z

    move-result v2

    return v2

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    array-length v5, p1

    :goto_1e
    if-ge v4, v5, :cond_3b

    aget v6, p1, v4

    const v7, 0x10100a7

    if-ne v6, v7, :cond_29

    const/4 v2, 0x1

    goto :goto_38

    :cond_29
    const v7, 0x10100a0

    if-ne v6, v7, :cond_30

    const/4 v3, 0x1

    goto :goto_38

    :cond_30
    const v7, 0x101009e

    if-ne v6, v7, :cond_38

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_3b
    if-eqz v2, :cond_40

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->startPressedAnim(Z)V

    :cond_40
    iget-boolean v4, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez v4, :cond_4b

    if-nez v2, :cond_4b

    iget-boolean v4, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    invoke-virtual {p0, v3, v4}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->verifyChecked(ZZ)V

    :cond_4b
    if-nez v2, :cond_50

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->startUnPressedAnim(Z)V

    :cond_50
    iput-boolean v2, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    return v0
.end method

.method public setBounds(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setCheckWidgetDrawableBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->setBounds(IIII)V

    :cond_7
    return-void
.end method

.method protected setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return-void
.end method

.method public setScale(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return-void
.end method

.method protected startPressedAnim(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->startPressedAnim(ZZ)V

    :cond_b
    return-void
.end method

.method protected startUnPressedAnim(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V

    :cond_b
    return-void
.end method

.method protected verifyChecked(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->verifyChecked(ZZ)V

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->invalidateSelf()V

    :cond_a
    return-void
.end method
