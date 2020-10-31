.class Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;
.super Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # getter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;
    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$400(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # getter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;
    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$400(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;->onProfilePageStateChanged(I)V

    :cond_11
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # setter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I
    invoke-static {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$202(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;I)I

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # getter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$300(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # getter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$300(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_28
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # getter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;
    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$400(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    # getter for: Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;
    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->access$400(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;->onProfileSelected(I)V

    :cond_39
    return-void
.end method
