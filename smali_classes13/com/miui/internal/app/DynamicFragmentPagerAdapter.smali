.class Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
.super Lmiui/view/PagerAdapter;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private mFragmentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mInitialized:Z

.field private mViewPagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/view/ViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V
    .registers 5

    invoke-direct {p0}, Lmiui/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mViewPagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3, p0}, Lmiui/view/ViewPager;->setAdapter(Lmiui/view/PagerAdapter;)V

    return-void
.end method

.method private removeAllFragmentFromManager()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1a

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private removeFragmentFromManager(Landroid/app/Fragment;)V
    .registers 4

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_15
    return-void
.end method


# virtual methods
.method addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    new-instance v7, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_21

    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_32

    :cond_21
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_32

    :cond_2d
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_32
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    return p2
.end method

.method addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v9, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2a

    :cond_19
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_c
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    move-object v1, p3

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method findPositionByTag(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v3, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v3

    return v3

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    const/4 v1, -0x1

    return v1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_f
    iget-boolean v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mInitialized:Z

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mInitialized:Z

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mViewPagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    :cond_31
    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFragment(IZ)Landroid/app/Fragment;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method getFragment(IZZ)Landroid/app/Fragment;
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    if-eqz p3, :cond_13

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v2

    goto :goto_14

    :cond_13
    move v2, p1

    :goto_14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v3, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    iget-object v2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-nez v2, :cond_42

    if-eqz p2, :cond_42

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    iput-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    iput-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    :cond_42
    iget-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    return-object v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-ne p1, v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 v1, -0x2

    return v1
.end method

.method getTabAt(I)Landroid/app/ActionBar$Tab;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v0, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public hasActionMenu(I)Z
    .registers 3

    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean v0, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_c
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_31

    :cond_1e
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v4, v4, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_31
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v2, :cond_3b

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3b
    return-object v0
.end method

.method isRTL()Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    move-object v0, p2

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method removeAllFragment()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeAllFragmentFromManager()V

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method removeFragment(Landroid/app/ActionBar$Tab;)I
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2a

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v3, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    if-ne v3, p1, :cond_27

    iget-object v3, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, v3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v3

    return v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method removeFragment(Landroid/app/Fragment;)I
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v2

    if-ne v2, p1, :cond_20

    invoke-direct {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v2

    return v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    const/4 v1, -0x1

    return v1
.end method

.method removeFragmentAt(I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    if-eq v1, p2, :cond_15

    iput-boolean p2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    :cond_15
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_27

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_12
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mInitialized:Z

    if-eqz v1, :cond_27

    :cond_1c
    if-eqz v0, :cond_25

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_25
    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    :cond_27
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method toIndexForRTL(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v0, p1, :cond_14

    sub-int v1, v0, p1

    return v1

    :cond_14
    const/4 v1, 0x0

    return v1
.end method
