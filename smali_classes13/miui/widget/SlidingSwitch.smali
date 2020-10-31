.class public Lmiui/widget/SlidingSwitch;
.super Landroid/widget/Switch;
.source "SlidingSwitch.java"


# instance fields
.field private mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SlidingSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SlidingSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    sget-object v0, Lcom/miui/internal/R$styleable;->SlidingButton:[I

    sget v1, Lcom/miui/internal/R$style;->Widget_SlidingButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v1, p1, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Switch;->drawableStateChanged()V

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderDrawState()V

    :cond_a
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Switch;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/SlidingSwitch;->setMeasuredDimension(II)V

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->setParentClipChildren()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/SlidingSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public performClick()Z
    .registers 2

    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    const/4 v0, 0x1

    return v0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setChecked(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/SlidingSwitch;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_12

    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lmiui/widget/SlidingSwitch;->isChecked()Z

    move-result p1

    iget-object v1, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setChecked(Z)V

    :cond_12
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setPressed(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/Switch;->setPressed(Z)V

    invoke-virtual {p0}, Lmiui/widget/SlidingSwitch;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/Switch;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiui/widget/SlidingSwitch;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
