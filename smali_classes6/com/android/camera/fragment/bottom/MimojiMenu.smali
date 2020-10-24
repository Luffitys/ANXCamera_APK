.class public Lcom/android/camera/fragment/bottom/MimojiMenu;
.super Lcom/android/camera/fragment/bottom/AbBottomMenu;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MIMOJI_CARTOON:I = 0x1

.field public static final MIMOJI_HUMEN:I = 0x0

.field public static final MIMOJI_NULL:I = -0x1


# instance fields
.field private currentModule:I

.field private mIsMimoji:Z

.field private mIsMimoji2:Z

.field private mMenuTextViewList:Landroid/util/SparseArray;

.field private mMimojiMenuTabList:Landroid/util/SparseArray;

.field private mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/bottom/AbBottomMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O0OO0()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji2:Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0O0ooO()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji:Z

    return-void
.end method


# virtual methods
.method addAllView()V
    .locals 8

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/beauty/MenuItem;

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0026

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    iget-object v5, v3, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getAvatarPanelState()I

    move-result v5

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v5, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    if-ne v5, v7, :cond_0

    :goto_1
    iput-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getAvatarPanelState()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    iget v5, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :goto_2
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    iget v3, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getChildMenuViewList()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    return-object p0
.end method

.method getDefaultType()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method getMenuData()Landroid/util/SparseArray;
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->currentModule:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0xb1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    iput v2, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f100397

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    iput v3, v0, Lcom/android/camera/fragment/beauty/MenuItem;->number:I

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji2:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->currentModule:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    iput v3, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f1003bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    iput v3, v0, Lcom/android/camera/fragment/beauty/MenuItem;->number:I

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f1003bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    iput v1, v0, Lcom/android/camera/fragment/beauty/MenuItem;->number:I

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    iput v2, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f1006f0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    iput v2, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f1001b4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    iput v3, v0, Lcom/android/camera/fragment/beauty/MenuItem;->number:I

    :goto_2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    return-object p0
.end method

.method protected isClickEnable()Z
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->isClickEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji2:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiPanelState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isRefreshUI()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->isClickEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getAvatarPanelState()I

    move-result p1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setAvatarPanelState(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->switchMenu()V

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getAvatarPanelState()I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setAvatarPanelState(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->switchMenu()V

    if-eqz v0, :cond_6

    :goto_0
    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;->switchMimojiList()I

    :cond_6
    :goto_1
    return-void
.end method

.method switchMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->addAllView()V

    return-void
.end method
