.class public Lcom/android/camera/fragment/bottom/BottomActionMenu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ANIM_EXPAND:I = 0xa0

.field public static final ANIM_SHRINK:I = 0xa1

.field public static final BEAUTY_BOTTOM_MENU:I = 0x1

.field public static final CAMERA_OPERATE_BOTTOM_MENU:I = 0x0

.field public static final KALEIDOSCOPE_BOTTOM_MENU:I = 0x3

.field public static final LIVE_BOTTOM_MENU:I = 0x2

.field public static final MIMOJI_BOTTOM_MENU:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beautyOperateMenuView:Landroid/widget/LinearLayout;

.field private mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mFastMotionListener:Landroid/view/View$OnClickListener;

.field private mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;-><init>(Lcom/android/camera/fragment/bottom/BottomActionMenu;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/camera/fragment/bottom/BottomActionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu$2;-><init>(Lcom/android/camera/fragment/bottom/BottomActionMenu;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mFastMotionListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->initView(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/bottom/BottomActionMenu;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    return-object p1
.end method

.method private beautyOperateMenuHandle(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setCurrentBeautyMenuType(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->switchMenu()V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private cameraOperateMenuHandle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->exitAnim(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private changeMenuView()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    return-void
.end method

.method private enterAnim(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private exitAnim(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void
.end method

.method private hideNearRangeTip()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideNearRangeTip()V

    :cond_0
    return-void
.end method

.method private hideQrCodeTip()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    :cond_0
    return-void
.end method

.method private initView(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IZ)V

    return-void
.end method


# virtual methods
.method public animateShineBeauty(Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x31

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v7, v8, :cond_1

    const/16 v8, 0x624

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "7"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x6

    goto :goto_1

    :pswitch_1
    const-string v7, "6"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v9

    goto :goto_1

    :pswitch_2
    const-string v7, "5"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v10

    goto :goto_1

    :pswitch_3
    const-string v7, "4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v12

    goto :goto_1

    :pswitch_4
    const-string v7, "3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v1

    goto :goto_1

    :cond_0
    const-string v7, "15"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v11

    goto :goto_1

    :cond_1
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x5

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    if-eq v6, v12, :cond_3

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v12

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_7

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v2, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bottomMenuAnimate(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa0

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->animateExpanding(Z)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xa1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->animateExpanding(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public clearBottomMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public expandAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;I)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v4, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f0c0122

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/ColorActivateTextView;

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    const v8, 0x7f06013b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    const/16 v7, -0x31ea

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget v8, v5, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v6, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v6, v3}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_1
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->changeMenuView()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideQrCodeTip()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideNearRangeTip()V

    return-void
.end method

.method public expandMasterFilter(Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v2, 0x7f0c0026

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f06013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->getDisplayTitleString()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->changeMenuView()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideQrCodeTip()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideNearRangeTip()V

    return-void
.end method

.method public expandShine(Lcom/android/camera/data/data/runing/ComponentRunningShine;I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    move-result-object v4

    const-string v7, "i:0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v6

    :goto_2
    if-ge v11, v7, :cond_7

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/data/data/ComponentDataItem;

    const v15, 0x7f0c0026

    iget-object v12, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v15, v12, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ui/ColorActivateTextView;

    iget-object v15, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f06013b

    invoke-virtual {v15, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    iget-object v6, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget v15, v14, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v14, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v8, :cond_2

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v14, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v12, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v12, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_2
    invoke-virtual {v12, v9, v9}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_6

    iget-object v6, v14, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v14, 0x624

    const/4 v13, 0x4

    if-eq v15, v14, :cond_3

    packed-switch v15, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v14, "6"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v13

    goto :goto_4

    :pswitch_1
    const-string v14, "5"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_4

    :pswitch_2
    const-string v14, "4"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_4

    :pswitch_3
    const-string v14, "3"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    const-string v14, "15"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, -0x1

    :goto_4
    if-eqz v6, :cond_5

    if-eq v6, v5, :cond_5

    const/4 v14, 0x2

    if-eq v6, v14, :cond_5

    const/4 v14, 0x3

    if-eq v6, v14, :cond_5

    if-eq v6, v13, :cond_5

    goto :goto_5

    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v6, 0x2

    if-ne v7, v6, :cond_8

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_7

    :cond_8
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v7, v1, :cond_9

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_7
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-lez v1, :cond_a

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_8

    :cond_a
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    neg-int v1, v1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_8
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->changeMenuView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideQrCodeTip()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideNearRangeTip()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMenuData()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getBottomMenu()Lcom/android/camera/fragment/bottom/AbBottomMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public initBeautyMenuView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    :cond_0
    return-void
.end method

.method public isBottomMenuVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_13

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x32

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v3, v4, :cond_7

    const/16 v1, 0x623

    if-eq v3, v1, :cond_6

    const/16 v1, 0x36

    if-eq v3, v1, :cond_5

    const/16 v1, 0x37

    if-eq v3, v1, :cond_4

    const/16 v1, 0x61f

    if-eq v3, v1, :cond_3

    const/16 v1, 0x620

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v8

    goto :goto_1

    :cond_3
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v7

    goto :goto_1

    :cond_4
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_1

    :cond_5
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v6

    goto :goto_1

    :cond_6
    const-string v1, "14"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_1

    :cond_7
    const-string v3, "2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    move v1, v0

    :goto_1
    const-string v0, "beauty_bottom_tab"

    const-string v3, "key_beauty_click"

    const-string v4, "attr_operate_state"

    if-eqz v1, :cond_11

    const-string v9, "mi_live_click_filter"

    if-eq v1, v2, :cond_f

    if-eq v1, v8, :cond_d

    if-eq v1, v7, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v5, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bokeh_bottom_tab"

    :goto_2
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isLiveModule()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isLiveModule()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_3
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveBeautyClick(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "mi_live_click_beauty"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_4
    invoke-static {v9}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "filter_bottom_tab"

    goto :goto_2

    :cond_11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_5
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_12
    :goto_6
    invoke-interface {p1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->switchShineType(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method

.method public switchFastMotion(Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v5, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0c0026

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/ColorActivateTextView;

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    const v9, 0x7f06013b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget v9, v6, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mFastMotionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getCurrentType()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_1
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->changeMenuView()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideQrCodeTip()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideNearRangeTip()V

    return-void
.end method

.method public switchFastMotionPro(Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->getItems()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0c0026

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f06013b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->changeMenuView()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideQrCodeTip()V

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideNearRangeTip()V

    return-void
.end method

.method public switchMenuMode(IIZ)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string p2, "default switch menu mode:camera_operate"

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:MIMOJI_operate"

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:kaleidoscope_operate"

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:live_operate"

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:beauty_operate"

    :goto_0
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuHandle(IZ)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string p2, "switch menu mode:camera_operate"

    :goto_1
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->cameraOperateMenuHandle(Z)V

    :goto_2
    return-void
.end method

.method public switchMenuMode(IZ)V
    .locals 1

    const/16 v0, 0xa1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IIZ)V

    return-void
.end method
