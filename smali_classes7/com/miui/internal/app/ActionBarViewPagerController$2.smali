.class Lcom/miui/internal/app/ActionBarViewPagerController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/ViewPager$OnPageChangeListener;


# instance fields
.field mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

.field final synthetic this$0:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController$1;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    invoke-interface {v0, p1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    invoke-virtual {p3, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->update(IF)V

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget-boolean p3, p3, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p3}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p3}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget v0, v0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    invoke-virtual {p3, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result p3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget v1, v1, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->mStatus:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget-boolean v1, v1, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    invoke-interface {v1, p1, p2, p3, v0}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$400(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v3}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v4}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    invoke-interface {p1, v0}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageSelected(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
