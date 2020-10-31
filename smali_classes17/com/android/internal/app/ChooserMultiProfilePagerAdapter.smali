.class public Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    }
.end annotation


# static fields
.field private static final SINGLE_CELL_SPAN_SIZE:I = 0x1


# instance fields
.field private mBottomOffset:I

.field private final mIsSendAction:Z

.field private final mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    iput-boolean p5, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 11

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    iput-boolean p7, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    iput-boolean p5, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 11

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    iput-boolean p7, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    return-void
.end method

.method private createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    const v1, 0x109005c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    return-object v2
.end method

.method private createProfileDescriptor(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    const v1, 0x109005c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;)V

    return-object v2
.end method


# virtual methods
.method bridge synthetic getActiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->isCTS()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCTSAdapterForIndex(I)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    # getter for: Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->access$100(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapterForIndex(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getCTSAdapterForIndex(I)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    # getter for: Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapterForCts:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->access$200(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getCurrentRootAdapter()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCTSAdapterForIndex(I)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getInactiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->isCTS()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCTSAdapterForIndex(I)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method bridge synthetic getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    return-object p1
.end method

.method getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    # getter for: Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;
    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->access$000(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method getMetricsCategory()Ljava/lang/String;
    .registers 2

    const-string v0, "intent_chooser"

    return-object v0
.end method

.method public getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->isCTS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCTSAdapterForIndex(I)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->isCTS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCTSAdapterForIndex(I)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method setEmptyStateBottomOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    return-void
.end method

.method protected setupContainerPadding(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method setupListAdapter(I)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    # getter for: Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;
    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->access$000(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    # getter for: Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapterForCts:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->access$200(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    # getter for: Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->access$100(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/GridLayoutManager;

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->isCTS()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_33

    :cond_2c
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    :goto_33
    new-instance v4, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method protected showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    const/4 v1, 0x0

    const v2, 0x10804f3

    if-eqz v0, :cond_f

    const v0, 0x1040754

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    goto :goto_15

    :cond_f
    const v0, 0x1040753

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    :goto_15
    return-void
.end method

.method protected showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    const v1, 0x1080539

    if-eqz v0, :cond_11

    const v0, 0x1040751

    const v2, 0x1040752

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    goto :goto_1a

    :cond_11
    const v0, 0x104074d

    const v2, 0x104074e

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    :goto_1a
    return-void
.end method

.method protected showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    const/4 v1, 0x0

    const v2, 0x10804f3

    if-eqz v0, :cond_f

    const v0, 0x1040756

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    goto :goto_15

    :cond_f
    const v0, 0x1040755

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    :goto_15
    return-void
.end method

.method protected showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    const v1, 0x1080539

    if-eqz v0, :cond_11

    const v0, 0x104074f

    const v2, 0x1040750

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    goto :goto_1a

    :cond_11
    const v0, 0x104074b

    const v2, 0x104074c

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;III)V

    :goto_1a
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

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method
