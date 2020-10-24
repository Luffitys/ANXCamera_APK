.class public Lcom/miui/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# static fields
.field public static final MODE_COLLAPSE:I = 0x0

.field public static final MODE_MOVABLE:I = 0x1

.field public static final MODE_SECONDARY:I = 0x2


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastSelectedPosition:I

.field mMaxTabWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field protected mStyleMode:I

.field private mTabClickListener:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

.field private mTabIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mTabIndicatorPosition:F

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSizeStages:[I

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTranslucentIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStyleMode:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStyleMode:I

    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v3

    invoke-direct {p0, p1, v3, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->initTabViewData(Landroid/content/Context;Lcom/miui/internal/view/ActionBarPolicy;I)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    sget-object p2, Lmiui/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {p1, v2, p2, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v2, Lmiui/R$styleable;->ActionBar_tabIndicator:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v4, Lmiui/R$styleable;->ActionBar_translucentTabIndicator:I

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v3}, Lcom/miui/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    iget v2, v2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    invoke-virtual {p2, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSizeStages:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$dimen;->action_bar_tab_expand_text_size_1:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    aput v0, p2, v1

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSizeStages:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->action_bar_tab_expand_text_size_2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    aput p1, p0, v5

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p0

    return-object p0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 3

    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const v2, 0x10102d7

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    iget v1, v1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->attach(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez p2, :cond_1

    new-instance p2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {p2, p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    iget p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->marginHorizontal:I

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    return-object v0
.end method

.method private getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private initTabViewData(Landroid/content/Context;Lcom/miui/internal/view/ActionBarPolicy;I)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
    .locals 2

    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    const/4 v1, -0x2

    if-eq p3, p2, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    sget p2, Lcom/miui/internal/R$layout;->action_bar_tabbar_secondary:I

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    sget p2, Lcom/miui/internal/R$layout;->action_bar_tab_secondary:I

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    sget p2, Lmiui/R$attr;->actionBarTabTextSecondaryStyle:I

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    const p2, 0x3f47ae14    # 0.78f

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->action_bar_tab_secondary_margin:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupport mode in ScrollingTabContainerView"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget p2, Lcom/miui/internal/R$layout;->action_bar_tabbar_expand:I

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    sget p2, Lcom/miui/internal/R$layout;->action_bar_tab_expand:I

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    sget p2, Lmiui/R$attr;->actionBarTabTextExpandStyle:I

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->action_bar_tab_expand_margin:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->marginHorizontal:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_1

    :cond_2
    sget p1, Lcom/miui/internal/R$layout;->action_bar_tabbar:I

    iput p1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    sget p1, Lcom/miui/internal/R$layout;->action_bar_tab:I

    iput p1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    const p1, 0x10102f5

    iput p1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    const p1, 0x3f3d70a4    # 0.74f

    iput p1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    const/4 p1, 0x0

    iput p1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->marginHorizontal:I

    invoke-virtual {p2}, Lcom/miui/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    :goto_1
    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private measureTabViewSizeStage2([III)V
    .locals 6

    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStyleMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    return-void

    :cond_1
    aget v2, p1, v1

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_2

    int-to-float v5, v2

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private performCollapse()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private performExpand()Z
    .locals 5

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getTabIndicatorPosition()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    check-cast p2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActionBar$Tab;->select()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-le v5, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-le v5, v0, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3f19999a    # 0.6f

    :goto_1
    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/4 v5, -0x2

    if-eq v0, v5, :cond_4

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_4
    if-nez v4, :cond_5

    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, p2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_6

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->performCollapse()V

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->performExpand()Z

    :goto_4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    if-eqz v4, :cond_7

    if-eq v0, p1, :cond_7

    iget p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_7
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSizeStages:[I

    invoke-direct {p0, p1, v3, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measureTabViewSizeStage2([III)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabTextView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    if-ge p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    if-le p1, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    :cond_3
    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setBadgeVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-static {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->access$300(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setEmbeded(Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    return-void
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-static {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->access$400(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p5, p4, p3, p6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTabIndicatorPosition(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public setTabIndicatorPosition(IF)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTextAppearance(II)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-static {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->access$400(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method
