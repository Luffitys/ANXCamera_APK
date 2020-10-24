.class public Lcom/miui/internal/view/SeekBarGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source ""


# static fields
.field protected static final HIGH_STIFFNESS:F = 986.96f


# instance fields
.field private mHeight:I

.field protected mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    iput v0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    if-nez p1, :cond_0

    iget-object p1, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iput-object p2, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    iget-object p3, p3, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p3}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/SeekBarGradientDrawable;->mWidth:I

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .locals 0

    new-instance p0, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onStateChange([I)Z

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->startPressedAnim()V

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;->startUnPressedAnim()V

    :cond_3
    return v0
.end method

.method protected startPressedAnim()V
    .locals 0

    return-void
.end method

.method protected startUnPressedAnim()V
    .locals 0

    return-void
.end method
