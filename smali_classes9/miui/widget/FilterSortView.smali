.class public Lmiui/widget/FilterSortView;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mFilteredId:I

.field private mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

.field private mTabViewChildIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lmiui/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Lmiui/widget/FilterSortView;->mFilteredId:I

    new-instance p3, Lmiui/widget/FilterSortView$1;

    invoke-direct {p3, p0}, Lmiui/widget/FilterSortView$1;-><init>(Lmiui/widget/FilterSortView;)V

    iput-object p3, p0, Lmiui/widget/FilterSortView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/internal/R$dimen;->filter_sort_view_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0, p3, p3, p3, p3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/miui/internal/R$attr;->filterSortViewBackground:I

    invoke-static {p3, v0}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xf

    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance p2, Lmiui/widget/FilterSortView$TabView;

    invoke-direct {p2, p1}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-static {p2}, Lmiui/widget/FilterSortView$TabView;->access$000(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-static {p1}, Lmiui/widget/FilterSortView$TabView;->access$100(Lmiui/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-direct {p0}, Lmiui/widget/FilterSortView;->parseChildBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p0, p1, v0, p3}, Lmiui/widget/FilterSortView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/FilterSortView;)Lmiui/widget/FilterSortView$TabView;
    .locals 0

    iget-object p0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    return-object p0
.end method

.method private parseChildBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->filterSortTabViewBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_light:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private updateFiltered(Lmiui/widget/FilterSortView$TabView;)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v0, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/CharSequence;)Lmiui/widget/FilterSortView$TabView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiui/widget/FilterSortView;->addTab(Ljava/lang/CharSequence;Z)Lmiui/widget/FilterSortView$TabView;

    move-result-object p0

    return-object p0
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiui/widget/FilterSortView$TabView;
    .locals 3

    new-instance v0, Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

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

    iget-object p0, p0, Lmiui/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->access$300(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    instance-of v0, p1, Lmiui/widget/FilterSortView$TabView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    check-cast p1, Lmiui/widget/FilterSortView$TabView;

    iget-object p2, p0, Lmiui/widget/FilterSortView;->mOnFilteredListener:Lmiui/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-static {p1, p2}, Lmiui/widget/FilterSortView$TabView;->access$200(Lmiui/widget/FilterSortView$TabView;Lmiui/widget/FilterSortView$TabView$OnFilteredListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getWeight()F

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 p3, 0x10

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p3, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lmiui/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget p2, p0, Lmiui/widget/FilterSortView;->mFilteredId:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/FilterSortView$TabView;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView;->updateFiltered(Lmiui/widget/FilterSortView$TabView;)V

    :cond_0
    return-void
.end method

.method public setFilteredTab(Lmiui/widget/FilterSortView$TabView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiui/widget/FilterSortView;->mFilteredId:I

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lmiui/widget/FilterSortView$TabView;->access$400(Lmiui/widget/FilterSortView$TabView;Z)V

    return-void
.end method

.method public setTabIncatorVisibility(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmiui/widget/FilterSortView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1, p1}, Lmiui/widget/FilterSortView$TabView;->setIndicatorVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
