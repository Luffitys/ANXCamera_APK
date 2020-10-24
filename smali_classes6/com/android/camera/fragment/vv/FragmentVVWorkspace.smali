.class public Lcom/android/camera/fragment/vv/FragmentVVWorkspace;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

.field private mAudioController:Lcom/android/camera/module/AudioController;

.field private mBackImage:Landroid/widget/ImageView;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteLayout:Landroid/view/View;

.field private mEditImage:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field private mPlayerItemList:Ljava/util/List;

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mScrollState:I

.field private mTitleText:Landroid/widget/TextView;

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;

.field private mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

.field private vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mScrollState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mScrollState:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mPlayerItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->showEmptyView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->setEditMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->restoreOuterAudio()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private exit()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0xfffc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/FragmentVVPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->controlPlay(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private inEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isEditMode()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private initCalculator()V
    .locals 3

    new-instance v0, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;

    new-instance v1, Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;

    invoke-direct {v1}, Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mPlayerItemList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;-><init>(Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mVideoVisibilityCalculator:Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    new-instance v0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mItemsPositionGetter:Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 12

    const v0, 0x7f0903df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    const v2, 0x7f0903a3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v2, 0x7f0903a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v3, 0x7f0903e0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const v3, 0x7f0903e5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEmptyView:Landroid/view/View;

    const p1, 0x7f0903e1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mBackImage:Landroid/widget/ImageView;

    const p1, 0x7f0903e4

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEditImage:Landroid/widget/ImageView;

    const p1, 0x7f0903eb

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mTitleText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEditImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mBackImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEditImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteLayout:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mBackImage:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    new-instance p1, Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-direct {p1}, Lcom/android/camera/fragment/vv/VVWorkspace;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/VVWorkspace;->restoreWorkspace()Z

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->showEmptyView()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VlogViewModel;->getVVList()Lcom/android/camera/fragment/vv/VVList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mPlayerItemList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v6, v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/vv/VVItem;

    iget-object v6, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mPlayerItemList:Ljava/util/List;

    new-instance v7, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    invoke-direct {v7, v0, v5}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;Lcom/android/camera/fragment/vv/VVItem;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mPlayerItemList:Ljava/util/List;

    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;Lcom/android/camera/fragment/vv/VVItem;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mPlayerItemList:Ljava/util/List;

    iget-object v10, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    move-object v6, p1

    move-object v7, p0

    move-object v11, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/util/List;Lcom/android/camera/fragment/vv/VVList;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "vv_workspace"

    invoke-direct {p1, v0, v5}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07033f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v4

    if-eqz p1, :cond_4

    if-nez v4, :cond_3

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_4
    :goto_1
    new-instance p1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-direct {p1, v5}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c00aa

    iget-object v7, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    add-int/2addr v2, v0

    add-int/2addr v2, v1

    if-gez v2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v5}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$FragmentVVWorkspaceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$FragmentVVWorkspaceItemDecoration;-><init>(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->initCalculator()V

    return-void
.end method

.method private restoreOuterAudio()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAudioController:Lcom/android/camera/module/AudioController;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/AudioController;->restoreMusicSteam(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method private setEditMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->setEditMode(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mTitleText:Landroid/widget/TextView;

    const v0, 0x7f100340

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mBackImage:Landroid/widget/ImageView;

    const v0, 0x7f08039b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEditImage:Landroid/widget/ImageView;

    const p1, 0x7f08039d

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mTitleText:Landroid/widget/TextView;

    const v0, 0x7f10033f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mBackImage:Landroid/widget/ImageView;

    const v0, 0x7f080237

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEditImage:Landroid/widget/ImageView;

    const p1, 0x7f080358

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showEmptyView()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEditImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private silenceOuterAudio()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAudioController:Lcom/android/camera/module/AudioController;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/AudioController;->requestMusicSteam(Landroid/app/Activity;)V

    return-void
.end method

.method private updateSelectedCount()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteLayout:Landroid/view/View;

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "value_vv_click_workspace_continue"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa4

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v3, p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/vv/VVItem;

    invoke-interface {v0, p0, p1, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V

    goto/16 :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->inEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "value_vv_click_workspace_select_all"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isSelectedAll()Z

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->selected(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "value_vv_click_workspace_edit"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->setEditMode(Z)V

    goto :goto_1

    :goto_0
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->updateSelectedCount()V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->inEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->selected(Z)V

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->setEditMode(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->exit()V

    goto :goto_1

    :sswitch_4
    const-string p1, "value_vv_click_workspace_delete"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0007

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1, v0, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v7, 0x0

    const p1, 0x7f10032d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$3;

    invoke-direct {v9, p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$3;-><init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const p1, 0x7f10035a

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;-><init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0903a2 -> :sswitch_4
        0x7f0903e1 -> :sswitch_3
        0x7f0903e3 -> :sswitch_2
        0x7f0903e4 -> :sswitch_1
        0x7f0903ea -> :sswitch_0
        0x7f0903ec -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0c00a9

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->silenceOuterAudio()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mBackImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mEditImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteLayout:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->inEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->setEditMode(Z)V

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->exit()V

    return v2

    :cond_1
    const/16 v1, 0x19

    if-eq p2, v1, :cond_3

    const/16 v1, 0x18

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mPlayerItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
