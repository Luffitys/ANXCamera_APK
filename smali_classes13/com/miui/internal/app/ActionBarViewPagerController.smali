.class public Lcom/miui/internal/app/ActionBarViewPagerController;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;,
        Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/miui/internal/app/ActionBarImpl;

.field private mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

.field private mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/app/ActionBar$FragmentViewPagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field private mTabListener:Landroid/app/ActionBar$TabListener;

.field private mViewPager:Lmiui/view/ViewPager;

.field private mViewPagerDecor:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$1;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mTabListener:Landroid/app/ActionBar$TabListener;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl;->getActionBarOverlayLayout()Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiui/R$id;->view_pager:I

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lmiui/view/ViewPager;

    if-eqz v3, :cond_24

    move-object v3, v2

    check-cast v3, Lmiui/view/ViewPager;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    goto :goto_5a

    :cond_24
    new-instance v3, Lmiui/view/ViewPager;

    invoke-direct {v3, v1}, Lmiui/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    sget v4, Lmiui/R$id;->view_pager:I

    invoke-virtual {v3, v4}, Lmiui/view/ViewPager;->setId(I)V

    new-instance v3, Lmiui/view/springback/SpringBackLayout;

    invoke-direct {v3, v1}, Lmiui/view/springback/SpringBackLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lmiui/view/springback/SpringBackLayout;->setScrollOrientation(I)V

    new-instance v4, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {v4}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v3, v5, v4}, Lmiui/view/springback/SpringBackLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v3, v5}, Lmiui/view/springback/SpringBackLayout;->setTarget(Landroid/view/View;)V

    const v5, 0x1020002

    invoke-virtual {v0, v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5a
    new-instance v3, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-direct {v3, v1, p2, v4}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    new-instance v4, Lcom/miui/internal/app/ActionBarViewPagerController$2;

    invoke-direct {v4, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$2;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    invoke-virtual {v3, v4}, Lmiui/view/ViewPager;->setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p3, :cond_7f

    sget-boolean v3, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v3, :cond_7f

    new-instance v3, Lcom/miui/internal/app/ViewPagerScrollEffect;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/app/ViewPagerScrollEffect;-><init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/DynamicFragmentPagerAdapter;)V

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_7f
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    return-object v0
.end method


# virtual methods
.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

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

    move-result v0

    return v0
.end method

.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

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

    move-result v0

    return v0
.end method

.method addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getFragmentAt(I)Landroid/app/Fragment;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method getFragmentTabCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method getViewPagerOffscreenPageLimit()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method removeAllFragmentTab()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveAllTabs()V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeAllFragment()V

    return-void
.end method

.method removeFragment(Landroid/app/Fragment;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragment(Landroid/app/Fragment;)I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    :cond_d
    return-void
.end method

.method removeFragmentAt(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentAt(I)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    return-void
.end method

.method removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTab(Landroid/app/ActionBar$Tab;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragment(Landroid/app/ActionBar$Tab;)I

    return-void
.end method

.method removeFragmentTab(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->findPositionByTag(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentAt(I)V

    :cond_b
    return-void
.end method

.method removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->setFragmentActionMenuAt(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_4b

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    if-nez v0, :cond_41

    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_4c

    const-string v2, "Value"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v1}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_3e

    :cond_3c
    const-wide/16 v1, 0x0

    :goto_3e
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_41
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->reset(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4b
    return-void

    :array_4c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setViewPagerDecor(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v1, v0}, Lmiui/view/ViewPager;->removeView(Landroid/view/View;)V

    :cond_9
    if-eqz p1, :cond_1d

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lmiui/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    return-void
.end method

.method setViewPagerOffscreenPageLimit(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;

    invoke-virtual {v0, p1}, Lmiui/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
