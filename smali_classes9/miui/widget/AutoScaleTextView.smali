.class public Lmiui/widget/AutoScaleTextView;
.super Landroid/widget/TextView;
.source ""


# static fields
.field private static final TEXT_SIZE_PLUS:F = 0.001f


# instance fields
.field private mMinTextSize:F

.field private mOrgTextSize:F

.field private mSkipLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AutoScaleTextView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/AutoScaleTextView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method private initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lmiui/R$styleable;->AutoScaleTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiui/R$styleable;->AutoScaleTextView_minTextSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateTextSize()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiui/widget/AutoScaleTextView;->mOrgTextSize:F

    return-void
.end method


# virtual methods
.method public getMinTextSize()F
    .locals 0

    iget p0, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    return p0
.end method

.method public getTextSize()F
    .locals 0

    iget p0, p0, Lmiui/widget/AutoScaleTextView;->mOrgTextSize:F

    return p0
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget v0, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_4

    iget v1, p0, Lmiui/widget/AutoScaleTextView;->mOrgTextSize:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-super {p0, v2, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-gt v3, v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    sub-int/2addr v3, v4

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    int-to-float v0, v0

    mul-float/2addr v4, v0

    int-to-float v0, v3

    const v3, 0x3a83126f    # 0.001f

    add-float/2addr v0, v3

    div-float/2addr v4, v0

    iget v0, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    cmpg-float v3, v4, v0

    if-gez v3, :cond_3

    move v4, v0

    :cond_3
    iput-boolean v1, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    invoke-super {p0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iput-boolean v2, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lmiui/widget/AutoScaleTextView;->setMinTextSize(IF)V

    return-void
.end method

.method public setMinTextSize(IF)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method
