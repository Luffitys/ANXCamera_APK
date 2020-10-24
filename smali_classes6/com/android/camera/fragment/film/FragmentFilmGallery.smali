.class public Lcom/android/camera/fragment/film/FragmentFilmGallery;
.super Lcom/android/camera/fragment/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$LiveFilmChooser;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mFilmList:Lcom/android/camera/fragment/film/FilmList;

.field private mGalleryAdapter:Lcom/android/camera/fragment/film/FilmGalleryAdapter;

.field private mHolderWidth:I

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field private mPreviewIndex:I

.field private mProgressView:Landroid/view/View;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewLayout:Landroid/view/View;

.field private mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

.field private mSelectedItem:Lcom/android/camera/fragment/film/FilmItem;

.field private mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private synthetic OooO00o(Lcom/android/camera/fragment/film/FilmList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->initList()V

    return-void
.end method

.method static synthetic OooO0OO(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/film/FragmentFilmGallery;Lcom/android/camera/fragment/film/FilmItem;)Lcom/android/camera/fragment/film/FilmItem;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mSelectedItem:Lcom/android/camera/fragment/film/FilmItem;

    return-object p1
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

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentFilmItem()Lcom/android/camera/fragment/film/FilmItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/camera/resource/BaseResourceItem;->index:I

    iput v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/film/FilmResourceSelectedListener;->onResourceReady()V

    iget v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v2}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    iget v3, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v2, v1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/android/camera/fragment/film/FilmItem;

    invoke-interface {v0, v2}, Lcom/android/camera/fragment/film/FilmResourceSelectedListener;->onResourceSelected(Lcom/android/camera/fragment/film/FilmItem;)V

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerViewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mProgressView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "film_gallery"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmGallery$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/film/FragmentFilmGallery$EffectItemPadding;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/camera/fragment/film/FilmGalleryAdapter;

    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    iget-object v6, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget v7, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    iget-object v9, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    move-object v4, v1

    move-object v8, p0

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/fragment/film/FilmGalleryAdapter;-><init>(Lcom/android/camera/fragment/film/FilmList;Landroidx/recyclerview/widget/LinearLayoutManager;ILandroid/view/View$OnClickListener;Lcom/android/camera/fragment/film/FilmResourceSelectedListener;Lcom/android/camera/fragment/film/FragmentFilmGallery$EffectItemPadding;)V

    iput-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mGalleryAdapter:Lcom/android/camera/fragment/film/FilmGalleryAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mGalleryAdapter:Lcom/android/camera/fragment/film/FilmGalleryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    if-ltz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->setItemInCenter(I)V

    :cond_3
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private loadItemList()V
    .locals 3

    const-class v0, Lcom/android/camera/data/observeable/FilmViewModel;

    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmGallery$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery$1;-><init>(Lcom/android/camera/fragment/film/FragmentFilmGallery;)V

    iput-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/FilmViewModel;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/FilmViewModel;->getFilmList()Lcom/android/camera/fragment/film/FilmList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->initList()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerViewLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mProgressView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/FilmViewModel;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmViewModel;->getFilmListObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/film/OooO0o0;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/film/OooO0o0;-><init>(Lcom/android/camera/fragment/film/FragmentFilmGallery;)V

    sget-object v2, Lcom/android/camera/fragment/film/OooO0Oo;->OooO00o:Lcom/android/camera/fragment/film/OooO0Oo;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_0
    return-void
.end method

.method private setItemInCenter(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mHolderWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private transformToPreview(ILandroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmPreview;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mFilmList:Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->setPreviewData(ILcom/android/camera/fragment/film/FilmList;)V

    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mResourceSelectedListener:Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->setResourceSelectedListener(Lcom/android/camera/fragment/film/FilmResourceSelectedListener;)V

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

    invoke-virtual {v0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->getFragmentInto()I

    move-result p1

    const/4 p2, 0x4

    invoke-interface {p0, v1, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->updateCurrentFragments(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Lcom/android/camera/fragment/film/FilmList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->OooO00o(Lcom/android/camera/fragment/film/FilmList;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffff3

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

    const v1, 0xfffff3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0xfffff4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0903d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mProgressView:Landroid/view/View;

    const v0, 0x7f0903b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerViewLayout:Landroid/view/View;

    const v0, 0x7f0903b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mTotalWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070573

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mHolderWidth:I

    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->loadItemList()V

    return-void
.end method

.method public isPreviewShow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->isShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0xfffff4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/film/FragmentFilmPreview;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
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

.method public onBackEvent(I)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0903b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->transformToPreview(ILandroid/view/View;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mGalleryAdapter:Lcom/android/camera/fragment/film/FilmGalleryAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/fragment/film/FilmGalleryAdapter;->onSelected(ILandroid/view/View;Z)V

    iget p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->setItemInCenter(I)V

    iput v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p2, 0xd3

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->hide()V

    :cond_0
    const/16 p0, 0xd4

    if-eq p1, p0, :cond_1

    const/16 p0, 0xcf

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd0

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentFilmItem(Lcom/android/camera/fragment/film/FilmItem;)V

    :cond_1
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x2a3

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setPreviewData(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mPreviewIndex:I

    return-void
.end method

.method public show(I)V
    .locals 0

    return-void
.end method

.method public startShot()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mSelectedItem:Lcom/android/camera/fragment/film/FilmItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->isPreviewShow()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mSelectedItem:Lcom/android/camera/fragment/film/FilmItem;

    iget-object v2, v2, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmStartClick(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery;->mSelectedItem:Lcom/android/camera/fragment/film/FilmItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x2a3

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
