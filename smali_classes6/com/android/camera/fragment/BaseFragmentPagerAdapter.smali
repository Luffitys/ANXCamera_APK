.class public Lcom/android/camera/fragment/BaseFragmentPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source ""


# instance fields
.field private mFragmentList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFragmentList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    return-object p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result p0

    or-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public recycleFragmentList(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method
