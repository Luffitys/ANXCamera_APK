.class public Lmiui/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/FilterSortView$TabView$OnFilteredListener;
    }
.end annotation


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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->filter_sort_tab_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    sget v0, Lcom/miui/internal/R$id;->arrow:I

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_4e

    sget-object v0, Lcom/miui/internal/R$styleable;->FilterSortView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Lcom/miui/internal/R$styleable;->FilterSortView_android_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$styleable;->FilterSortView_descending:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    sget v4, Lcom/miui/internal/R$styleable;->FilterSortView_indicatorVisibility:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    sget v1, Lcom/miui/internal/R$styleable;->FilterSortView_android_layout_weight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lmiui/widget/FilterSortView$TabView;->mWeight:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v3, v2}, Lmiui/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    :cond_4e
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget v1, p0, Lmiui/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_63

    invoke-static {}, Lmiui/widget/FilterSortView$TabView;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setId(I)V

    :cond_63
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/FilterSortView$TabView;Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$400(Lmiui/widget/FilterSortView$TabView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->setFiltered(Z)V

    return-void
.end method

.method static synthetic access$600(Lmiui/widget/FilterSortView$TabView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->mFiltered:Z

    return v0
.end method

.method static synthetic access$700(Lmiui/widget/FilterSortView$TabView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->mDescending:Z

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/FilterSortView$TabView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method private initView(Ljava/lang/CharSequence;Z)V
    .registers 4

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setGravity(I)V

    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lmiui/widget/FilterSortView$TabView;->parseBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lmiui/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method private parseBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setDescending(Z)V
    .registers 4

    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->mDescending:Z

    if-eqz p1, :cond_b

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationX(F)V

    :goto_12
    return-void
.end method

.method private setFiltered(Z)V
    .registers 8

    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_25

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_25

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lmiui/widget/FilterSortView$TabView;

    if-eq v4, p0, :cond_22

    iget-boolean v5, v4, Lmiui/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz v5, :cond_22

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lmiui/widget/FilterSortView$TabView;->setFiltered(Z)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_25
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->mFiltered:Z

    iget-object v1, p0, Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, p1}, Lmiui/widget/FilterSortView$TabView;->setSelected(Z)V

    iget-object v1, p0, Lmiui/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    if-eqz v1, :cond_3b

    invoke-interface {v1, p0, p1}, Lmiui/widget/FilterSortView$TabView$OnFilteredListener;->onFilteredChangedListener(Lmiui/widget/FilterSortView$TabView;Z)V

    :cond_3b
    return-void
.end method

.method private setOnFilteredListener(Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    return-void
.end method


# virtual methods
.method public getWeight()F
    .registers 2

    iget v0, p0, Lmiui/widget/FilterSortView$TabView;->mWeight:F

    return v0
.end method

.method public isDescending()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->mDescending:Z

    return v0
.end method

.method public setIndicatorVisibility(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Lmiui/widget/FilterSortView$TabView$1;

    invoke-direct {v0, p0, p1}, Lmiui/widget/FilterSortView$TabView$1;-><init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setWeight(F)V
    .registers 2

    iput p1, p0, Lmiui/widget/FilterSortView$TabView;->mWeight:F

    return-void
.end method
