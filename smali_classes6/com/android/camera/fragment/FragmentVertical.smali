.class public Lcom/android/camera/fragment/FragmentVertical;
.super Lcom/android/camera/fragment/BaseFragment;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$VerticalProtocol;


# instance fields
.field private mLeftAlertStatus:Landroid/widget/TextView;

.field private mLeftLightingPattern:Landroid/widget/TextView;

.field private mRightAlertStatus:Landroid/widget/TextView;

.field private mRightLightingPattern:Landroid/widget/TextView;

.field private mStateValueText:Ljava/lang/String;

.field private mVerticalViewMenu:Landroid/view/View;

.field private oldDegree:I

.field private stringLightingRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    return-void
.end method

.method private adjustViewHeight(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method private updateLightingRelativeView(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    const/16 v0, 0xab

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewVisible(Landroid/view/View;Z)V

    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/FragmentVertical;->stringLightingRes:I

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/android/camera/fragment/FragmentVertical;->oldDegree:I

    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewGone(Landroid/view/View;Z)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->startAnimateViewGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    goto :goto_1

    :cond_7
    :goto_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->oldDegree:I

    return-void
.end method


# virtual methods
.method public alertLightingHint(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const p1, 0x7f100304

    goto :goto_0

    :cond_1
    const p1, 0x7f100307

    goto :goto_0

    :cond_2
    const p1, 0x7f100306

    :goto_0
    if-ne p1, v1, :cond_3

    const-string p1, ""

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mStateValueText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    :goto_1
    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff8

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c009e

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09038e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mVerticalViewMenu:Landroid/view/View;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVertical;->mVerticalViewMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f090047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    const v0, 0x7f0901b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    const v0, 0x7f0901b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentVertical;->oldDegree:I

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public isAnyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftAlertStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightAlertStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVertical;->mLeftLightingPattern:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentVertical;->mRightLightingPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentVertical;->isAnyViewVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 p2, 0x0

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentVertical;->updateLightingRelativeView(ZZ)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xab

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentVertical;->updateLightingRelativeView(ZZ)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
