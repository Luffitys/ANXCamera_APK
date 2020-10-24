.class public Lcom/miui/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source ""


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
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    sget v0, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_0
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    sget v0, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    sget v0, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_2
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    sget v0, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_3
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    sget v0, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_4
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    sget v0, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_5
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    sget v0, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_6
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    sget p0, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getHeightMeasureSpec(I)I
    .locals 7

    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p4

    :goto_1
    invoke-direct {p0, v0, p3, p2}, Lcom/miui/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p5, p6

    :goto_2
    invoke-direct {p0, v0, p5, p2}, Lcom/miui/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p0

    if-lez p0, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_4
    :goto_3
    return p1
.end method

.method private getWidthMeasureSpec(I)I
    .locals 7

    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method private resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I
    .locals 1

    if-eqz p2, :cond_2

    iget p0, p2, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    goto :goto_2

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    if-eqz p3, :cond_1

    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_1
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    int-to-float p0, p0

    invoke-virtual {p2, p0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/DialogParentPanel;->getWidthMeasureSpec(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/internal/widget/DialogParentPanel;->getHeightMeasureSpec(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
