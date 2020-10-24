.class public Lcom/miui/internal/app/ActionBarViewPagerController;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mActionBar:Lcom/miui/internal/app/ActionBarImpl;

.field private mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

.field private mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

.field private mListeners:Ljava/util/ArrayList;

.field private mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field private mTabListener:Landroid/app/ActionBar$TabListener;

.field private mViewPager:Lmiui/view/ViewPager;

.field private mViewPagerDecor:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$1;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mTabListener:Landroid/app/ActionBar$TabListener;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl;->getActionBarOverlayLayout()Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiui/R$id;->view_pager:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lmiui/view/ViewPager;

    if-eqz v2, :cond_0

    check-cast v1, Lmiui/view/ViewPager;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    goto :goto_0

    :cond_0
    new-instance v1, Lmiui/view/ViewPager;

    invoke-direct {v1, v0}, Lmiui/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    sget v2, Lmiui/R$id;->view_pager:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v1, Lmiui/view/springback/SpringBackLayout;

    invoke-direct {v1, v0}, Lmiui/view/springback/SpringBackLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmiui/view/springback/SpringBackLayout;->setScrollOrientation(I)V

    new-instance v2, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {v2}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v1, v2}, Lmiui/view/springback/SpringBackLayout;->setTarget(Landroid/view/View;)V

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-direct {p1, v0, p2, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    new-instance p2, Lcom/miui/internal/app/ActionBarViewPagerController$2;

    invoke-direct {p2, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$2;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    invoke-virtual {p1, p2}, Lmiui/view/ViewPager;->setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p3, :cond_1

    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/miui/internal/app/ViewPagerScrollEffect;

    iget-object p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-direct {p1, p2, p3}, Lcom/miui/internal/app/ViewPagerScrollEffect;-><init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/DynamicFragmentPagerAdapter;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    return-object p0
.end method


# virtual methods
.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 8

    move-object v0, p2

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result p0

    return p0
.end method

.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7

    move-object v0, p2

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p2}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result p0

    return p0
.end method

.method addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getFragmentAt(I)Landroid/app/Fragment;
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method getFragmentTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method getViewPagerOffscreenPageLimit()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getOffscreenPageLimit()I

    move-result p0

    return p0
.end method

.method removeAllFragmentTab()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveAllTabs()V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeAllFragment()V

    return-void
.end method

.method removeFragment(Landroid/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragment(Landroid/app/Fragment;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    :cond_0
    return-void
.end method

.method removeFragmentAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentAt(I)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    return-void
.end method

.method removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTab(Landroid/app/ActionBar$Tab;)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragment(Landroid/app/ActionBar$Tab;)I

    return-void
.end method

.method removeFragmentTab(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->findPositionByTag(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentAt(I)V

    :cond_0
    return-void
.end method

.method removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->setFragmentActionMenuAt(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "Value"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->reset(IZ)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setViewPagerDecor(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    new-instance p1, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {p1}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Lmiui/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method setViewPagerOffscreenPageLimit(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
