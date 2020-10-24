.class public Lmiui/widget/SlidingButton;
.super Landroid/widget/CheckBox;
.source ""


# instance fields
.field private mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

.field private mSelfClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    sget-object v0, Lcom/miui/internal/R$styleable;->SlidingButton:[I

    sget v1, Lcom/miui/internal/R$style;->Widget_SlidingButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderDrawState()V

    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/CheckBox;->setMeasuredDimension(II)V

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->setParentClipChildren()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SlidingButton;->mSelfClicked:Z

    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->mSelfClicked:Z

    return v0
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/widget/CheckBox;->performClick()Z

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    const/4 p0, 0x1

    return p0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-boolean v0, p0, Lmiui/widget/SlidingButton;->mSelfClicked:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onPressedInner()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onUnPressedInner()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiui/widget/SlidingButton;->mHelper:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
