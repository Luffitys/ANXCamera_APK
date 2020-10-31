.class public Lcom/miui/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;,
        Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 12

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

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    sget-object v4, Lmiui/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    invoke-virtual {p1, v2, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v4, Lmiui/R$styleable;->ActionBar_tabIndicator:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lmiui/R$styleable;->ActionBar_translucentTabIndicator:I

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    invoke-direct {p0, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_56
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v3}, Lcom/miui/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v5

    iput v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    iget v7, v7, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    invoke-virtual {v5, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v7}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSizeStages:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/miui/internal/R$dimen;->action_bar_tab_expand_text_size_1:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v0, v1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSizeStages:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/miui/internal/R$dimen;->action_bar_tab_expand_text_size_2:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v6

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .registers 5

    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    iget v1, v1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->attach(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_24

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_38

    :cond_24
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v2, :cond_33

    new-instance v2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v2, p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    :cond_33
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_38
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    iget v2, v2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->marginHorizontal:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_4d
    return-object v0
.end method

.method private getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    if-eqz v0, :cond_18

    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_27

    :cond_18
    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_27
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private initTabViewData(Landroid/content/Context;Lcom/miui/internal/view/ActionBarPolicy;I)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
    .registers 8

    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    if-eqz p3, :cond_58

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eq p3, v1, :cond_38

    const/4 v1, 0x2

    if-ne p3, v1, :cond_30

    sget v1, Lcom/miui/internal/R$layout;->action_bar_tabbar_secondary:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    sget v1, Lcom/miui/internal/R$layout;->action_bar_tab_secondary:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    sget v1, Lmiui/R$attr;->actionBarTabTextSecondaryStyle:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    const v1, 0x3f47ae14    # 0.78f

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$dimen;->action_bar_tab_secondary_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->marginHorizontal:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_75

    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupport mode in ScrollingTabContainerView"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    sget v1, Lcom/miui/internal/R$layout;->action_bar_tabbar_expand:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    sget v1, Lcom/miui/internal/R$layout;->action_bar_tab_expand:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    sget v1, Lmiui/R$attr;->actionBarTabTextExpandStyle:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$dimen;->action_bar_tab_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->marginHorizontal:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_75

    :cond_58
    sget v1, Lcom/miui/internal/R$layout;->action_bar_tabbar:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->barLayoutRes:I

    sget v1, Lcom/miui/internal/R$layout;->action_bar_tab:I

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabLayoutRes:I

    const v1, 0x10102f5

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    const v1, 0x3f3d70a4    # 0.74f

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->marginHorizontal:I

    invoke-virtual {p2}, Lcom/miui/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    nop

    :goto_75
    return-object v0
.end method

.method private isCollapsed()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private measureTabViewSizeStage2([III)V
    .registers 10

    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStyleMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_40

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    if-gt v1, v2, :cond_17

    return-void

    :cond_17
    aget v1, p1, v0

    const/4 v2, 0x0

    :goto_1a
    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_38

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_35

    const/4 v4, 0x0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_38
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_40
    return-void
.end method

.method private performCollapse()V
    .registers 5

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    :cond_11
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_35
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3e

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    :cond_3e
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private performExpand()Z
    .registers 6

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_17
    if-eqz p3, :cond_26

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    :cond_26
    iget-boolean v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2d
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_17
    if-eqz p2, :cond_26

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    :cond_26
    iget-boolean v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2d
    return-void
.end method

.method public animateToTab(I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_d
    new-instance v1, Lcom/miui/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1a
    return-void
.end method

.method public getTabIndicatorPosition()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    :cond_12
    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-ne v0, v2, :cond_c

    move v4, v1

    goto :goto_d

    :cond_c
    move v4, v3

    :goto_d
    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-le v5, v1, :cond_45

    if-eq v0, v2, :cond_1e

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_45

    :cond_1e
    const/4 v6, 0x2

    if-le v5, v6, :cond_2e

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_3a

    :cond_2e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    :goto_3a
    iget v6, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v7, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_48

    :cond_45
    const/4 v6, -0x1

    iput v6, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    :goto_48
    iget v6, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_51

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_51
    if-nez v4, :cond_58

    iget-boolean v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v2, :cond_58

    goto :goto_59

    :cond_58
    move v1, v3

    :goto_59
    if-eqz v1, :cond_74

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, p2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    if-le v2, v6, :cond_70

    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->performCollapse()V

    goto :goto_77

    :cond_70
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_77

    :cond_74
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->performExpand()Z

    :goto_77
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v6

    if-eqz v4, :cond_8b

    if-eq v2, v6, :cond_8b

    iget v7, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v7}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_8b
    iget-object v7, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSizeStages:[I

    invoke-direct {p0, v7, v3, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measureTabViewSizeStage2([III)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v0, :cond_e

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/widget/ScrollingTabTextView;

    if-eqz v3, :cond_52

    if-eqz v4, :cond_52

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_46

    iget v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    if-ge p1, v5, :cond_44

    goto :goto_45

    :cond_44
    move v2, v6

    :goto_45
    goto :goto_4c

    :cond_46
    iget v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    if-le p1, v5, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v6

    :goto_4c
    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    invoke-virtual {v4, v2}, Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    :cond_52
    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    return-void
.end method

.method public removeAllTabs()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_12
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_19
    return-void
.end method

.method public removeTabAt(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_12
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setBadgeVisibility(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    # getter for: Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->access$300(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_25

    if-eqz p2, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_25

    :cond_20
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    return-void
.end method

.method public setEmbeded(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setHorizontalFadingEdgeEnabled(Z)V

    return-void
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    # getter for: Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->access$400(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_29

    :cond_26
    invoke-virtual {v0, p5, p4, p3, p6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public setTabIndicatorPosition(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public setTabIndicatorPosition(IF)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_27

    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    :goto_27
    nop

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v4, v2, p2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->invalidate()V

    :cond_43
    return-void
.end method

.method public setTabSelected(I)V
    .registers 6

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v3, :cond_1e

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method public setTextAppearance(II)V
    .registers 5

    if-ltz p1, :cond_23

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    goto :goto_23

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    # getter for: Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->access$400(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_22
    return-void

    :cond_23
    :goto_23
    return-void
.end method

.method public updateTab(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_18
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1f
    return-void
.end method
