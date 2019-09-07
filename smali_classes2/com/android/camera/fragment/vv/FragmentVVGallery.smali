.class public Lcom/android/camera/fragment/vv/FragmentVVGallery;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVVGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;
    }
.end annotation


# instance fields
.field private mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

.field private mProgressView:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewLayout:Landroid/view/View;

.field private mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->initList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVGallery;)Lcom/android/camera/fragment/vv/VVList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-object p0
.end method

.method private initList()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/vv/ResourceSelectedListener;->onResourceReady()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/vv/BaseResourceList;->getItem(I)Lcom/android/camera/fragment/vv/BaseResourceItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVItem;

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/vv/ResourceSelectedListener;->onResourceSelected(Lcom/android/camera/fragment/vv/VVItem;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    invoke-direct {v0, v1, p0, v3}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;-><init>(Lcom/android/camera/fragment/vv/VVList;Landroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/ResourceSelectedListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "vv_gallery"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private loadItemList()V
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/vv/ResourceManager;->getInstance()Lcom/android/camera/fragment/vv/ResourceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/ResourceManager;->getResourceList(I)Lcom/android/camera/fragment/vv/BaseResourceList;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVList;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->initList()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/camera/fragment/vv/VVList;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method private transformToPreview(ILandroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVPreview;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreview;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->setPreviewData(ILcom/android/camera/fragment/vv/VVList;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->setResourceSelectedListener(Lcom/android/camera/fragment/vv/ResourceSelectedListener;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09016c

    invoke-virtual {p1, v1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0043

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressView:Landroid/view/View;

    const v0, 0x7f09016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerViewLayout:Landroid/view/View;

    const v0, 0x7f09016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->loadItemList()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/16 p1, 0xd8

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f090168

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->transformToPreview(ILandroid/view/View;)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setResourceSelectedListener(Lcom/android/camera/fragment/vv/ResourceSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
