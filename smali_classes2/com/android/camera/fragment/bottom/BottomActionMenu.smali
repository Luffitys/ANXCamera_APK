.class public Lcom/android/camera/fragment/bottom/BottomActionMenu;
.super Ljava/lang/Object;
.source "BottomActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/bottom/BottomActionMenu$BottomActionMode;,
        Lcom/android/camera/fragment/bottom/BottomActionMenu$BottomActionMenuAnimType;
    }
.end annotation


# static fields
.field public static final ANIM_EXPAND:I = 0xa0

.field public static final ANIM_SHRINK:I = 0xa1

.field public static final BEAUTY_BOTTOM_MENU:I = 0x1

.field public static final CAMERA_OPERATE_BOTTOM_MENU:I = 0x0

.field public static final LIVE_BOTTOM_MENU:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomActionMenu"


# instance fields
.field private beautyOperateMenuView:Landroid/widget/LinearLayout;

.field private mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

.field private mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field private mCameraOperateSelectView:Lcom/android/camera/ui/ModeSelectView;

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->initView(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private beautyOperateMenuHandle(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setCurrentBeautyMenuType(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->switchMenu()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->exitAnim(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private cameraOperateMenuHandle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->exitAnim(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private enterAnim(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x8c

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p1, Lmiui/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/QuinticEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private exitAnim(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p1, Lmiui/view/animation/QuinticEaseInInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/QuinticEaseInInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x8c

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private initView(Landroid/widget/FrameLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v0, 0x7f0900cb

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/EdgeHorizonScrollView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v0, 0x7f0900c8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ModeSelectView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateSelectView:Lcom/android/camera/ui/ModeSelectView;

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
    if-ge v2, v0, :cond_3

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

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string v7, "7"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v8

    goto :goto_1

    :pswitch_2
    const-string v7, "6"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v10

    goto :goto_1

    :pswitch_3
    const-string v7, "5"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v11

    goto :goto_1

    :pswitch_4
    const-string v7, "4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v12

    goto :goto_1

    :pswitch_5
    const-string v7, "3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v1

    goto :goto_1

    :pswitch_6
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v9

    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    if-eq v6, v12, :cond_1

    if-eq v6, v11, :cond_1

    if-eq v6, v10, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v12

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    :goto_4
    if-ge v1, v0, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v2, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
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
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public expandShine(Lcom/android/camera/data/data/runing/ComponentRunningShine;I)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    move-result-object p1

    const-string v4, "i:0"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    move v5, v2

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x8

    if-ge v5, v6, :cond_6

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f0b0004

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/ColorActivateTextView;

    const v9, -0x66000001

    invoke-virtual {v8, v9}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    const v9, -0xff5701

    invoke-virtual {v8, v9}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget v10, v6, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v4, :cond_2

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iput-object v8, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v8, v3}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_2
    iget-object v9, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_5

    iget-object v6, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v10, "6"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v9, v11

    goto :goto_3

    :pswitch_1
    const-string v10, "5"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v9, v12

    goto :goto_3

    :pswitch_2
    const-string v10, "4"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v9, v3

    goto :goto_3

    :pswitch_3
    const-string v10, "3"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v9, v2

    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    if-eq v9, v3, :cond_4

    if-eq v9, v12, :cond_4

    if-eq v9, v11, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {p1, v7}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    :cond_7
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

.method public getCameraOperateMenuView()Lcom/android/camera/ui/EdgeHorizonScrollView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    return-object p0
.end method

.method public getCameraOperateSelectView()Lcom/android/camera/ui/ModeSelectView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateSelectView:Lcom/android/camera/ui/ModeSelectView;

    return-object p0
.end method

.method public getMenuData()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/beauty/MenuItem;",
            ">;"
        }
    .end annotation

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

.method public initBeautyMenuView()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x36

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0x61f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x620

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "11"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v5

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->trackBeautyBodyCounterPort(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->trackLiveBeautyClick(Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->switchShineType(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public switchMenuMode(IIZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string p2, "default switch menu mode:camera_operate"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->cameraOperateMenuHandle(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:live_operate"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuHandle(IZ)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:beauty_operate"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuHandle(IZ)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string p2, "switch menu mode:camera_operate"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->cameraOperateMenuHandle(Z)V

    :goto_0
    return-void
.end method

.method public switchMenuMode(IZ)V
    .locals 1

    const/16 v0, 0xa1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IIZ)V

    return-void
.end method
