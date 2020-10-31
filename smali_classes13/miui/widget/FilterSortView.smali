.class public Lmiui/widget/FilterSortView;
.super Landroid/widget/RelativeLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/FilterSortView$TabView;
    }
.end annotation


# instance fields
.field private mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mFilteredId:I

.field private mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

.field private mTabViewChildIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/FilterSortView;->mFilteredId:I

    new-instance v1, Lmiui/widget/FilterSortView$1;

    invoke-direct {v1, p0}, Lmiui/widget/FilterSortView$1;-><init>(Lmiui/widget/FilterSortView;)V

    iput-object v1, p0, Lmiui/widget/FilterSortView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->filter_sort_view_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v1, v1, v1}, Lmiui/widget/FilterSortView;->setPadding(IIII)V

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$attr;->filterSortViewBackground:I

    invoke-static {v2, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/widget/FilterSortView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v3}, Lmiui/widget/FilterSortView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v6

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Lmiui/widget/FilterSortView$TabView;

    invoke-direct {v5, p1}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    # getter for: Lmiui/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v5}, Lmiui/widget/FilterSortView$TabView;->access$000(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    # getter for: Lmiui/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lmiui/widget/FilterSortView$TabView;->access$100(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-direct {p0}, Lmiui/widget/FilterSortView;->parseChildBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/widget/FilterSortView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lmiui/widget/FilterSortView$TabView;->setVisibility(I)V

    iget-object v5, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p0, v5, v4, v0}, Lmiui/widget/FilterSortView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/FilterSortView;)Lmiui/widget/FilterSortView$TabView;
    .registers 2

    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    return-object v0
.end method

.method private parseChildBackground()Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->filterSortTabViewBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method private updateFiltered(Lmiui/widget/FilterSortView$TabView;)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Lmiui/widget/FilterSortView$TabView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/FilterSortView$TabView;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Lmiui/widget/FilterSortView$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1, v0}, Lmiui/widget/FilterSortView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getX()F

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lmiui/widget/FilterSortView$TabView;->setX(F)V

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getY()F

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lmiui/widget/FilterSortView$TabView;->setY(F)V

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/CharSequence;)Lmiui/widget/FilterSortView$TabView;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiui/widget/FilterSortView;->addTab(Ljava/lang/CharSequence;Z)Lmiui/widget/FilterSortView$TabView;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiui/widget/FilterSortView$TabView;
    .registers 7

    new-instance v0, Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    # invokes: Lmiui/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V
    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->access$200(Lmiui/widget/FilterSortView$TabView;Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v0}, Lmiui/widget/FilterSortView$TabView;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # invokes: Lmiui/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->access$300(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    instance-of v0, p1, Lmiui/widget/FilterSortView$TabView;

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1}, Lmiui/widget/FilterSortView$TabView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_3b

    move-object v0, p1

    check-cast v0, Lmiui/widget/FilterSortView$TabView;

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    # invokes: Lmiui/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V
    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->access$200(Lmiui/widget/FilterSortView$TabView;Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Lmiui/widget/FilterSortView$TabView;->getWeight()F

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v0}, Lmiui/widget/FilterSortView$TabView;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_3b
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_3e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget v0, p0, Lmiui/widget/FilterSortView;->mFilteredId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/FilterSortView$TabView;

    if-eqz v0, :cond_15

    invoke-direct {p0, v0}, Lmiui/widget/FilterSortView;->updateFiltered(Lmiui/widget/FilterSortView$TabView;)V

    :cond_15
    return-void
.end method

.method public setFilteredTab(Lmiui/widget/FilterSortView$TabView;)V
    .registers 3

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getId()I

    move-result v0

    iput v0, p0, Lmiui/widget/FilterSortView;->mFilteredId:I

    const/4 v0, 0x1

    # invokes: Lmiui/widget/FilterSortView$TabView;->setFiltered(Z)V
    invoke-static {p1, v0}, Lmiui/widget/FilterSortView$TabView;->access$400(Lmiui/widget/FilterSortView$TabView;Z)V

    return-void
.end method

.method public setTabIncatorVisibility(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1, p1}, Lmiui/widget/FilterSortView$TabView;->setIndicatorVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
