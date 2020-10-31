.class public Lmiui/widget/AutoScaleTextView;
.super Landroid/widget/TextView;
.source "AutoScaleTextView.java"


# static fields
.field private static final TEXT_SIZE_PLUS:F = 0.001f


# instance fields
.field private mMinTextSize:F

.field private mOrgTextSize:F

.field private mSkipLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AutoScaleTextView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AutoScaleTextView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method private initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    sget-object v0, Lmiui/R$styleable;->AutoScaleTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lmiui/R$styleable;->AutoScaleTextView_minTextSize:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateTextSize()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiui/widget/AutoScaleTextView;->mOrgTextSize:F

    return-void
.end method


# virtual methods
.method public getMinTextSize()F
    .registers 2

    iget v0, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    return v0
.end method

.method public getTextSize()F
    .registers 2

    iget v0, p0, Lmiui/widget/AutoScaleTextView;->mOrgTextSize:F

    return v0
.end method

.method public invalidate()V
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    iget v0, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_5a

    iget v1, p0, Lmiui/widget/AutoScaleTextView;->mOrgTextSize:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_5a

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    goto :goto_5a

    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1f

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_1f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-super {p0, v3, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v2, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, v2, v5

    sub-int v7, v4, v5

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    int-to-float v9, v6

    mul-float/2addr v8, v9

    int-to-float v9, v7

    const v10, 0x3a83126f    # 0.001f

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    iget v9, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_4f

    iget v8, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    :cond_4f
    iput-boolean v1, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    invoke-super {p0, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iput-boolean v3, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_5a
    :goto_5a
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->mSkipLayout:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setMinTextSize(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lmiui/widget/AutoScaleTextView;->setMinTextSize(IF)V

    return-void
.end method

.method public setMinTextSize(IF)V
    .registers 6

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_f
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lmiui/widget/AutoScaleTextView;->mMinTextSize:F

    return-void
.end method

.method public setTextSize(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->updateTextSize()V

    return-void
.end method
