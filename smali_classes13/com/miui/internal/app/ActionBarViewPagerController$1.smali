.class Lcom/miui/internal/app/ActionBarViewPagerController$1;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    if-ne v2, p1, :cond_24

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_27

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_27
    :goto_27
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    return-void
.end method
