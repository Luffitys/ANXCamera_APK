.class public Lcom/miui/internal/view/SeekBarGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SeekBarGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    }
.end annotation


# static fields
.field protected static final HIGH_STIFFNESS:F = 986.96f


# instance fields
.field private mHeight:I

.field protected mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .registers 7

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    if-nez p1, :cond_11

    iget-object v0, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_20

    :cond_11
    if-nez p2, :cond_1a

    iget-object v0, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_20

    :cond_1a
    iget-object v0, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    iget-object v2, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5f

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/SeekBarGradientDrawable;->setCornerRadius(F)V

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/SeekBarGradientDrawable;->setShape(I)V

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/SeekBarGradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_5f
    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    return v0
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .registers 2

    new-instance v0, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    invoke-direct {v0}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    return-object v0
.end method

.method protected onStateChange([I)Z
    .registers 8

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onStateChange([I)Z

    move-result v0

    const/4 v1, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_14

    aget v4, p1, v3

    const v5, 0x10100a7

    if-ne v4, v5, :cond_11

    const/4 v1, 0x1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->startPressedAnim()V

    :cond_19
    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->startUnPressedAnim()V

    :cond_1e
    return v0
.end method

.method protected startPressedAnim()V
    .registers 1

    return-void
.end method

.method protected startUnPressedAnim()V
    .registers 1

    return-void
.end method
