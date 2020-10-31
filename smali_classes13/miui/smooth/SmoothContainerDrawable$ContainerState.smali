.class final Lmiui/smooth/SmoothContainerDrawable$ContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SmoothContainerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/smooth/SmoothContainerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerState"
.end annotation


# instance fields
.field mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

.field mRadii:[F

.field mRadius:F

.field mStrokeColor:I

.field mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    return-void
.end method

.method public constructor <init>(Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v1, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0, v1, p2, p3, p4}, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;-><init>(Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;Lmiui/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget v0, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iput v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iget-object v0, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iget v0, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    iput v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    iget v0, p1, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    iput v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final isStateful()Z
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v1}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, v1}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method
