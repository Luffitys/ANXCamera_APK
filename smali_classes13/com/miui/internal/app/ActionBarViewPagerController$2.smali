.class Lcom/miui/internal/app/ActionBarViewPagerController$2;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Lmiui/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

.field final synthetic this$0:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController$1;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    invoke-interface {v1, p1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->update(IF)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget-boolean v0, v0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget v1, v1, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget v2, v2, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v1

    move v2, p1

    move v3, p2

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v2

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget-boolean v4, v4, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    if-nez v4, :cond_53

    add-int/lit8 v2, v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, p2

    :cond_53
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    invoke-interface {v5, v2, v3, v0, v1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_5d

    :cond_6d
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;
    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$400(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v3}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v4}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    invoke-interface {v2, v0}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageSelected(I)V

    goto :goto_3f

    :cond_4f
    return-void
.end method
