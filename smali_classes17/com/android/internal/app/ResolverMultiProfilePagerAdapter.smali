.class public Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ResolverMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    }
.end annotation


# instance fields
.field private final mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

.field private final mShouldShowNoCrossProfileIntentsEmptyState:Z

.field private mUseLayoutWithDefault:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 11

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    iput-boolean p7, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    return-void
.end method

.method private createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    const v1, 0x10900ef

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v2
.end method


# virtual methods
.method allowShowNoCrossProfileIntentsEmptyState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    return v0
.end method

.method bridge synthetic getActiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method getActiveAdapterView()Landroid/widget/ListView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object v0, v0, p1

    # getter for: Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->access$000(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapterForIndex(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    return-object p1
.end method

.method getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getCurrentRootAdapter()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method getInactiveAdapterView()Landroid/view/ViewGroup;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method getListViewForIndex(I)Landroid/widget/ListView;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method getMetricsCategory()Ljava/lang/String;
    .registers 2

    const-string v0, "intent_resolver"

    return-object v0
.end method

.method public getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .registers 4

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setupListAdapter(I)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method setUseLayoutWithDefault(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    return-void
.end method

.method protected setupContainerPadding(Landroid/view/View;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method setupListAdapter(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    # getter for: Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->access$000(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    const v0, 0x10804f3

    const v1, 0x1040753

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    return-void
.end method

.method protected showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    const v0, 0x1080539

    const v1, 0x104074d

    const v2, 0x104074e

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    return-void
.end method

.method protected showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    const v0, 0x10804f3

    const v1, 0x1040755

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    return-void
.end method

.method protected showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    const v0, 0x1080539

    const v1, 0x104074b

    const v2, 0x104074c

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    return-void
.end method

.method protected showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .registers 9

    const v2, 0x108057c

    const v3, 0x104075a

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method updateAfterConfigChange()V
    .registers 11

    invoke-super {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->updateAfterConfigChange()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v5, 0x102043d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    const v7, 0x1050230

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    const v9, 0x105022f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_39
    return-void
.end method
