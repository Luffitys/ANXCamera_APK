.class Lcom/miui/internal/app/ActionBarViewPagerController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    iget-object p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
