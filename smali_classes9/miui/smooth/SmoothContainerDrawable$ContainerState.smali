.class final Lmiui/smooth/SmoothContainerDrawable$ContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# instance fields
.field mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

.field mRadii:[F

.field mRadius:F

.field mStrokeColor:I

.field mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    return-void
.end method

.method public constructor <init>(Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v1, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0, v1, p2, p3, p4}, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;-><init>(Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;Lmiui/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget p2, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iput p2, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iget-object p2, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iput-object p2, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iget p2, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    iput p2, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    iget p1, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    iput p1, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v1}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, v1}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method
