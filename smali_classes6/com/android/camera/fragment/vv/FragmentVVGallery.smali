.class public Lcom/android/camera/fragment/vv/FragmentVVGallery;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/fragment/vv/FragmentVVFeature$FeatureInstallListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VVGallery"


# instance fields
.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

.field private mHolderWidth:I

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field private mPreviewIndex:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/view/View;

.field private mProgressText:Landroid/widget/TextView;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewLayout:Landroid/view/View;

.field private mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

.field private mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

.field private mTotalWidth:I

.field private mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

.field private mVMResource:Lcom/android/camera/data/observeable/VMResource;

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic OooO(Lcom/android/camera/multi/PluginInfo;)Lio/reactivex/ObservableSource;
    .locals 1

    new-instance v0, Lcom/android/camera/resource/SimpleNetworkRawRequest;

    invoke-virtual {p0}, Lcom/android/camera/multi/PluginInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/camera/resource/SimpleNetworkRawRequest;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/android/camera/resource/BaseResourceRaw;

    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->onResourceDownloadStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic OooO0OO(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic OooO0o0(Lcom/android/camera/fragment/vv/VVList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->initList()V

    return-void
.end method

.method static synthetic OooO0oO(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic OooO0oo(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic OooOO0(Ljava/lang/Throwable;)Lcom/android/camera/resource/BaseResourceRaw;
    .locals 0

    new-instance p0, Lcom/android/camera/resource/BaseResourceRaw;

    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceRaw;-><init>()V

    return-object p0
.end method

.method private synthetic OooOO0O(Lcom/android/camera/fragment/vv/VVList;)V
    .locals 2

    iget-object v0, p1, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    const-string v1, "PullNewOk:"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceList;->compareAndMarkDeparted(Lcom/android/camera/resource/BaseResourceList;)V

    return-void
.end method

.method static synthetic OooOOO0(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PullNewError"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/vv/FragmentVVGallery;Lcom/android/camera/fragment/vv/VVItem;)Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVGallery;Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->handleSnapButton(Lcom/android/camera/fragment/vv/VVItem;)V

    return-void
.end method

.method private downloadItem(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadItem :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VVGallery"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/observeable/VMResource;->startAndGetDownloadDisposable(Lcom/android/camera/resource/BaseResourceItem;Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private handleSnapButton(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x7

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateResourceState(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateResourceState(I)V

    :goto_0
    return-void
.end method

.method private initList()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/camera/fragment/vv/VVItem;->index:I

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v1, v1, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setVVVersion(Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/vv/ResourceSelectedListener;->onResourceReady()V

    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v2}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget v3, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v2, v1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/android/camera/fragment/vv/VVItem;

    invoke-interface {v0, v2}, Lcom/android/camera/fragment/vv/ResourceSelectedListener;->onResourceSelected(Lcom/android/camera/fragment/vv/VVItem;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerViewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vv_gallery"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v6, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget v7, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    iget-object v9, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    move-object v4, v1

    move-object v8, p0

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;-><init>(Lcom/android/camera/fragment/vv/VVList;Landroidx/recyclerview/widget/LinearLayoutManager;ILandroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/ResourceSelectedListener;Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;)V

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    if-ltz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setItemInCenter(I)V

    :cond_3
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->initResource()V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->pullNewList()V

    return-void
.end method

.method private initResource()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVList;->stateAllReady()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    new-instance v1, Lcom/android/camera/fragment/vv/OooO0Oo;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/OooO0Oo;-><init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMResource;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_1
    return-void
.end method

.method private loadItemList()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VlogViewModel;->getVVList()Lcom/android/camera/fragment/vv/VVList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceList;->isDeparted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->initList()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    const-string v1, "vlog2"

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->setFeatureName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    new-instance v2, Lcom/android/camera/fragment/vv/OooOO0o;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/vv/OooOO0o;-><init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v1, 0x7f0903ab

    const-string v2, "VVFeature"

    invoke-static {p0, v1, v0, v2}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->onInstalled()V

    :goto_0
    return-void
.end method

.method private onInstallStateChanged(Ljava/util/HashMap;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "vlog2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v0, 0x100

    goto :goto_0

    :cond_2
    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->onInstalled()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private onInstalled()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressText:Landroid/widget/TextView;

    const v1, 0x7f10033e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VlogViewModel;->getVVListObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/vv/OooO0oo;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/OooO0oo;-><init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V

    sget-object v2, Lcom/android/camera/fragment/vv/OooO0oO;->OooO00o:Lcom/android/camera/fragment/vv/OooO0oO;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private onResourceDownloadStateChanged(Ljava/util/HashMap;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "vv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->getItemAt(I)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->handleSnapButton(Lcom/android/camera/fragment/vv/VVItem;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private pullNewList()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vv/info.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v1, Lcom/android/camera/resource/SimpleCloudResourceListRequest;

    const-string v2, "14304229998788672"

    invoke-direct {v1, v2}, Lcom/android/camera/resource/SimpleCloudResourceListRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/camera/fragment/vv/OooO0o;->OooO00o:Lcom/android/camera/fragment/vv/OooO0o;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/multi/PluginInfoRequest;

    const-string v3, "14304257252393024"

    invoke-direct {v2, v3}, Lcom/android/camera/multi/PluginInfoRequest;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/android/camera/multi/PluginInfo;

    invoke-virtual {v2, v3}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/android/camera/fragment/vv/OooOO0O;->OooO00o:Lcom/android/camera/fragment/vv/OooOO0O;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/android/camera/fragment/vv/OooO;->OooO00o:Lcom/android/camera/fragment/vv/OooO;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/vv/VVListBiFunction;

    invoke-direct {v3, v0}, Lcom/android/camera/fragment/vv/VVListBiFunction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->zipWith(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/vv/OooOO0;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/OooOO0;-><init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V

    sget-object v2, Lcom/android/camera/fragment/vv/OooO0o0;->OooO00o:Lcom/android/camera/fragment/vv/OooO0o0;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private setItemInCenter(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mHolderWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f090078

    invoke-virtual {p1, v1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->getFragmentInto()I

    move-result p1

    const/4 p2, 0x4

    invoke-interface {p0, v1, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->updateCurrentFragments(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method

.method public synthetic OooO0Oo(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO0OO(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method

.method public synthetic OooO0o(Lcom/android/camera/fragment/vv/VVList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO0o0(Lcom/android/camera/fragment/vv/VVList;)V

    return-void
.end method

.method public synthetic OooOO0o(Lcom/android/camera/fragment/vv/VVList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooOO0O(Lcom/android/camera/fragment/vv/VVList;)V

    return-void
.end method

.method protected getAnimationType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffb

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c00a2

    return p0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0xfffb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0xfffc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0903d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressLayout:Landroid/view/View;

    const v1, 0x7f0903db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressLayout:Landroid/view/View;

    const v1, 0x7f0903da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0903b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerViewLayout:Landroid/view/View;

    const v0, 0x7f0903b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mTotalWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070573

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mHolderWidth:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->loadItemList()V

    return-void
.end method

.method public isPreviewShow()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0xfffc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShow()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v1, v0}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0903b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->transformToPreview(ILandroid/view/View;)V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->downloadItem(Lcom/android/camera/fragment/vv/VVItem;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mGalleryAdapter:Lcom/android/camera/fragment/vv/VVGalleryAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onSelected(ILandroid/view/View;Z)V

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setItemInCenter(I)V

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    :cond_0
    return-void
.end method

.method public onInstalled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "vlog2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->onInstalled()V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p2, 0xd1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->hide()V

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe5

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setPreviewData(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mPreviewIndex:I

    return-void
.end method

.method public show(I)V
    .locals 0

    return-void
.end method

.method public startShot()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa4

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v2}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->isPreviewShow()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v3, v3, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVStartClick(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V

    return v3
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe5

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
