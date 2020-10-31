.class public Lcom/miui/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel.java"


# instance fields
.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1f
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_35
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_4b
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_61

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_61
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_77

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_77
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8d

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_8d
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a3

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_a3
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    sget v1, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_b9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getHeightMeasureSpec(I)I
    .registers 9

    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result v0

    return v0
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .registers 15

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_47

    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogParentPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    if-eqz v3, :cond_21

    move-object v4, p3

    goto :goto_22

    :cond_21
    move-object v4, p4

    :goto_22
    invoke-direct {p0, v2, v4, p2}, Lcom/miui/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result v5

    if-lez v5, :cond_2f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_47

    :cond_2f
    if-eqz v3, :cond_33

    move-object v6, p5

    goto :goto_34

    :cond_33
    move-object v6, p6

    :goto_34
    move-object v4, v6

    invoke-direct {p0, v2, v4, p2}, Lcom/miui/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result v5

    if-lez v5, :cond_47

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_47
    :goto_47
    return p1
.end method

.method private getWidthMeasureSpec(I)I
    .registers 9

    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result v0

    return v0
.end method

.method private resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    goto :goto_20

    :cond_e
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_20

    if-eqz p3, :cond_18

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1a

    :cond_18
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1a
    int-to-float v1, v1

    invoke-virtual {p2, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    float-to-int v0, v2

    :cond_20
    :goto_20
    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/DialogParentPanel;->getWidthMeasureSpec(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/internal/widget/DialogParentPanel;->getHeightMeasureSpec(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
