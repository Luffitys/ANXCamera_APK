.class public Lmiui/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mDescending:Z

.field private mFiltered:Z

.field private mIndicatorVisibility:I

.field private mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

.field private mTextView:Landroid/widget/TextView;

.field private mWeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->filter_sort_tab_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x1020014

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    sget v0, Lcom/miui/internal/R$id;->arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/miui/internal/R$styleable;->FilterSortView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->FilterSortView_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/miui/internal/R$styleable;->FilterSortView_descending:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    sget v0, Lcom/miui/internal/R$styleable;->FilterSortView_indicatorVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    sget v0, Lcom/miui/internal/R$styleable;->FilterSortView_android_layout_weight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiui/widget/FilterSortView$TabView;->mWeight:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p2, p3}, Lmiui/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object p1, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget p2, p0, Lmiui/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/widget/FilterSortView$TabView;Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$400(Lmiui/widget/FilterSortView$TabView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->setFiltered(Z)V

    return-void
.end method

.method static synthetic access$600(Lmiui/widget/FilterSortView$TabView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/FilterSortView$TabView;->mFiltered:Z

    return p0
.end method

.method static synthetic access$700(Lmiui/widget/FilterSortView$TabView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/FilterSortView$TabView;->mDescending:Z

    return p0
.end method

.method static synthetic access$800(Lmiui/widget/FilterSortView$TabView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method private initView(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/widget/FilterSortView$TabView;->parseBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lmiui/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method private parseBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_normal:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private setDescending(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->mDescending:Z

    iget-object p0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    return-void
.end method

.method private setFiltered(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/FilterSortView$TabView;

    if-eq v4, p0, :cond_0

    iget-boolean v5, v4, Lmiui/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz v5, :cond_0

    invoke-direct {v4, v2}, Lmiui/widget/FilterSortView$TabView;->setFiltered(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->mFiltered:Z

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lmiui/widget/FilterSortView$TabView$OnFilteredListener;->onFilteredChangedListener(Lmiui/widget/FilterSortView$TabView;Z)V

    :cond_2
    return-void
.end method

.method private setOnFilteredListener(Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    return-void
.end method


# virtual methods
.method public getWeight()F
    .locals 0

    iget p0, p0, Lmiui/widget/FilterSortView$TabView;->mWeight:F

    return p0
.end method

.method public isDescending()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/FilterSortView$TabView;->mDescending:Z

    return p0
.end method

.method public setIndicatorVisibility(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Lmiui/widget/FilterSortView$TabView$1;

    invoke-direct {v0, p0, p1}, Lmiui/widget/FilterSortView$TabView$1;-><init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/FilterSortView$TabView;->mWeight:F

    return-void
.end method
