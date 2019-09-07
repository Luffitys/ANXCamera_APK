.class public Lcom/android/camera/fragment/top/FragmentTopConfig;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;
.implements Lcom/android/camera/protocol/ModeProtocol$TopAlert;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;


# static fields
.field private static final EXPAND_STATE_CENTER:I = 0x2

.field private static final EXPAND_STATE_LEFT:I = 0x0

.field private static final EXPAND_STATE_LEFT_FROM_SIBLING:I = 0x1

.field private static final EXPAND_STATE_RIGHT:I = 0x4

.field private static final EXPAND_STATE_RIGHT_FROM_SIBLING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentTopConfig"

.field public static final TIP_HINT_DURATION_2S:I = 0x7d0


# instance fields
.field private mAiSceneResources:[I

.field private mAutoZoomResources:[I

.field private mConfigViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAiSceneLevel:I

.field private mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

.field private mDisplayRectTopMargin:I

.field private mExpandView:Landroid/support/v7/widget/RecyclerView;

.field private mFilterResources:[I

.field private mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field private mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

.field private mIsRTL:Z

.field private mIsShowExtraMenu:Z

.field private mIsShowTopLyingDirectHint:Z

.field private mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

.field private mLightingResource:[I

.field private mLiveMusicSelectResources:[I

.field private mLiveShotAnimator:Landroid/animation/ObjectAnimator;

.field private mLiveShotResource:[I

.field private mMacroResources:[I

.field private mMimojiCreateLayout:Landroid/view/View;

.field private mSuperEISResources:[I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTopConfigMenu:Landroid/view/View;

.field private mTopDrawableWidth:I

.field private mTopExtraParent:Landroid/view/ViewGroup;

.field private mTotalWidth:I

.field private mUltraPixelPhotographyIconResources:[I

.field private mUltraPixelPhotographyTipResources:[I

.field private mUltraPixelPhotographyTipString:[Ljava/lang/String;

.field private mUltraPixelPortraitResources:[I

.field private mUltraWideBokehResources:[I

.field private mUltraWideResource:[I

.field private mVideoBokehResource:[I

.field private mVideoRecordingStarted:Z

.field private mViewPadding:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private alertHDR(IZZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    if-eqz p3, :cond_2

    const/16 p3, 0xc2

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(Z)Z

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHDR(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private alertTopMusicHint(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMusicTip(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/fragment/top/ExpandAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/fragment/top/ExpandAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;)V

    const/16 v2, 0xd6

    if-ne p3, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    mul-int/2addr v2, p1

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070154

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v3, 0x3

    mul-int/2addr p1, v3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v5, 0x800003

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    xor-int/lit8 v5, v4, 0x1

    iget-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    const/4 v7, 0x4

    if-eqz v6, :cond_3

    rsub-int/lit8 v5, v5, 0x4

    :cond_3
    if-eqz v5, :cond_8

    if-eq v5, v1, :cond_7

    const/4 v1, 0x2

    if-eq v5, v1, :cond_6

    if-eq v5, v3, :cond_5

    if-eq v5, v7, :cond_4

    move p1, v0

    move v1, p1

    move v3, v1

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->setExpandGravity(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr p1, v3

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_2
    sub-int/2addr v3, v2

    sub-int p1, v3, p1

    :goto_3
    sub-int v3, v1, v2

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->setExpandGravity(I)V

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->setExpandGravity(I)V

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int p1, v1, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_4
    add-int/2addr v1, v0

    move v3, v1

    move v1, v0

    :goto_5
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    iput-object v6, v5, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iput p1, v5, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-virtual {v5, p3, v6}, Lcom/android/camera/fragment/top/LastAnimationComponent;->hideOtherViews(ILjava/util/List;)V

    if-nez v4, :cond_9

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iput-object p2, p3, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p3, v1}, Lcom/android/camera/fragment/top/LastAnimationComponent;->translateAnchorView(I)V

    :cond_9
    iget-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int v0, p2, v2

    :cond_a
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    sub-int/2addr p1, v0

    sub-int/2addr v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->showExtraView(II)V

    return-void
.end method

.method private getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private getAiSceneResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080128
        0x7f080129
    .end array-data
.end method

.method private getAutoZoomResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08008e
        0x7f08008f
    .end array-data
.end method

.method private getFilterResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08013e
        0x7f08013f
    .end array-data
.end method

.method private getFocusPeakImageResource()I
    .locals 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string v0, "pref_camera_peak_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const p0, 0x7f080130

    return p0

    :cond_0
    const p0, 0x7f080133

    return p0

    :cond_1
    if-eqz p0, :cond_2

    const p0, 0x7f080132

    return p0

    :cond_2
    const p0, 0x7f080131

    return p0
.end method

.method private getInitialMargin(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;)I
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfigsSize()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget v2, p1, Lcom/android/camera/data/data/config/TopConfigItem;->index:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v4, 0x800005

    const/4 v5, 0x1

    if-eq v0, v5, :cond_9

    const v6, 0x800003

    const/4 v7, 0x2

    if-eq v0, v7, :cond_4

    if-nez v2, :cond_2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_2
    sub-int/2addr v0, v5

    if-ne v2, v0, :cond_3

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    mul-int/lit8 p2, p0, 0x2

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    mul-int/2addr p1, v2

    add-int/2addr p1, p0

    return p1

    :cond_4
    if-nez v2, :cond_6

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p0, p1, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    if-nez p0, :cond_5

    move p0, v6

    :cond_5
    iput p0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_6
    if-ne v2, v5, :cond_8

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p0, p1, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    if-nez p0, :cond_7

    move p0, v4

    :cond_7
    iput p0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_8
    :goto_1
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_9
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p0, p1, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    if-nez p0, :cond_a

    move p0, v4

    :cond_a
    iput p0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1
.end method

.method private getLightingResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080140
        0x7f080141
    .end array-data
.end method

.method private getLiveShotResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080124
        0x7f080125
    .end array-data
.end method

.method private getMacroResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0800b9
        0x7f0800ba
    .end array-data
.end method

.method private getMoreResources()I
    .locals 0

    const p0, 0x7f080142

    return p0
.end method

.method private getMusicSelectResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0800ff
        0x7f080102
    .end array-data
.end method

.method private getPortraitResources()I
    .locals 0

    const p0, 0x7f080143

    return p0
.end method

.method private getSettingResources()I
    .locals 0

    const p0, 0x7f08013b

    return p0
.end method

.method private getSuperEISResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0800ca
        0x7f0800cb
    .end array-data
.end method

.method private getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v1, 0x0

    const-string v2, "FragmentTopConfig"

    if-nez v0, :cond_0

    const-string p0, "getTopAlert(): fragment is null"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "getTopAlert(): fragment is not added yet"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    return-object p0
.end method

.method private getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/16 v0, 0xf5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    return-object p0
.end method

.method private getUltraPixelPortraitResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0800d3
        0x7f0800d4
    .end array-data
.end method

.method private getUltraWideBokehResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08016b
        0x7f08016c
    .end array-data
.end method

.method private getUltraWideResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080186
        0x7f080187
    .end array-data
.end method

.method private getVideoBokehResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080143
        0x7f080144
    .end array-data
.end method

.method private initTopView()V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v3, 0x7f09012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v4, 0x7f09012e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v5, 0x7f09012f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v6, 0x7f090130

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v7, 0x7f090131

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v8, 0x7f090132

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f090133

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v10, 0x7f090134

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v11, 0x7f090135

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    iget-object v11, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private reConfigCommonTip()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getHandGestureRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0100

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopHint(II)V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelOpenTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopHint(ILjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getEyeLightType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0f00db

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopHint(II)V

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f039d

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopHint(II)V

    :cond_3
    return-void
.end method

.method private reConfigTipOfFlash(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const-string v2, "101"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3, v2, v3, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_1

    :cond_2
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3, v2, v3, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v3, v1, v3, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private reConfigTipOfHdr(Z)V
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isHDRTipShowing()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0, v2, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, v2, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-direct {p0, v2, v2, v2, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method private resetImages()V
    .locals 11

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedTopConfigs(IIZ)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v10

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v2, v9

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;Z)Z

    move-result v0

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/config/TopConfigItem;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    iget v2, v10, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setTopImageResource(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;Z)Z
    .locals 10

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget v1, p1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v2, 0xb0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2f

    const v2, 0x7f0f0056

    const v4, 0x7f0f0021

    const/16 v5, 0xb1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v5, :cond_25

    const/16 v8, 0xd1

    if-eq v1, v8, :cond_22

    const/16 v8, 0xd4

    if-eq v1, v8, :cond_21

    const/16 v8, 0xe1

    if-eq v1, v8, :cond_20

    const/16 v8, 0xef

    if-eq v1, v8, :cond_1d

    const/16 v8, 0xf3

    if-eq v1, v8, :cond_1a

    const/16 v8, 0xf5

    if-eq v1, v8, :cond_18

    const/16 v8, 0xfd

    if-eq v1, v8, :cond_16

    const/16 v8, 0xff

    if-eq v1, v8, :cond_14

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_b

    :pswitch_0
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperEISResources:[I

    aget p3, p3, v7

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperEISResources:[I

    aget p3, p3, v3

    :goto_0
    move v3, p3

    const p3, 0x7f0f0384

    goto/16 :goto_c

    :pswitch_1
    const p3, 0x7f080090

    goto/16 :goto_14

    :pswitch_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p3

    const/16 p4, 0xa0

    invoke-virtual {p3, p4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p3

    check-cast p3, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p3, :cond_1

    const p4, 0x7f09001d

    invoke-interface {p3, p4}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p3

    const p4, 0xfff3

    if-ne p3, p4, :cond_1

    const p3, 0x7f0800d7

    goto/16 :goto_14

    :cond_1
    const p3, 0x7f0800d6

    goto/16 :goto_14

    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPortraitResources:[I

    aget p3, p3, v7

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPortraitResources:[I

    aget p3, p3, v3

    :goto_1
    move v3, p3

    const p3, 0x7f0f039d

    goto/16 :goto_c

    :pswitch_4
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_12

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v3

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedStringIdIgnoreClose(I)I

    move-result p3

    goto/16 :goto_c

    :pswitch_5
    const-string p4, "pref_ultra_wide_bokeh_enabled"

    if-eqz p5, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object p5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-interface {p5, p3, p4, v0}, Lcom/android/camera/data/backup/DataBackUp;->getBackupSwitchState(ILjava/lang/String;I)Z

    move-result p3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p3

    :goto_2
    if-eqz p3, :cond_4

    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraWideBokehResources:[I

    aget p4, p4, v7

    goto :goto_3

    :cond_4
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraWideBokehResources:[I

    aget p4, p4, v3

    :goto_3
    move v3, p4

    if-eqz p3, :cond_5

    const p3, 0x7f0f0018

    goto/16 :goto_c

    :cond_5
    const p3, 0x7f0f0017

    goto/16 :goto_c

    :pswitch_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p3

    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotResource:[I

    if-eqz p3, :cond_6

    aget p4, p4, v7

    goto :goto_4

    :cond_6
    aget p4, p4, v3

    :goto_4
    move v3, p4

    if-eqz p3, :cond_7

    const p3, 0x7f0f0010

    goto/16 :goto_c

    :cond_7
    const p3, 0x7f0f000f

    goto/16 :goto_c

    :pswitch_7
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_12

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v3

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getValueSelectedStringIdIgnoreClose(I)I

    move-result p3

    goto/16 :goto_c

    :pswitch_8
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getImageResource()I

    move-result v3

    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getContentDesc()I

    move-result p3

    goto/16 :goto_c

    :pswitch_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isSwitchOn(I)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLightingResource:[I

    aget p3, p3, v7

    goto :goto_5

    :cond_8
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLightingResource:[I

    aget p3, p3, v3

    :goto_5
    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result p4

    if-eqz p4, :cond_9

    const v3, 0x7f0f000d

    goto/16 :goto_14

    :cond_9
    const v3, 0x7f0f000e

    goto/16 :goto_14

    :pswitch_a
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    aget p4, p4, v7

    goto :goto_6

    :cond_a
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    aget p4, p4, v3

    :goto_6
    move v3, p4

    invoke-static {p3}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p3

    if-eqz p3, :cond_b

    const p3, 0x7f0f0002

    goto/16 :goto_c

    :cond_b
    const p3, 0x7f0f0001

    goto/16 :goto_c

    :pswitch_b
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "on"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    const p5, 0x7f08014b

    goto :goto_7

    :cond_c
    const p5, 0x7f08014a

    :goto_7
    move v3, p5

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    const p3, 0x7f0f000c

    goto/16 :goto_c

    :cond_d
    const p3, 0x7f0f000b

    goto/16 :goto_c

    :pswitch_c
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result v3

    const p3, 0x7f0f0029

    goto/16 :goto_c

    :pswitch_d
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMoreResources()I

    move-result v3

    const p3, 0x7f0f0035

    goto/16 :goto_c

    :pswitch_e
    if-eqz p5, :cond_e

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object p4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p5

    invoke-interface {p4, p3, p5}, Lcom/android/camera/data/backup/DataBackUp;->getBackupFilter(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p3

    :goto_8
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    sget p4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p3, p4, :cond_10

    if-gtz p3, :cond_f

    goto :goto_9

    :cond_f
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFilterResources:[I

    aget p3, p3, v7

    goto :goto_a

    :cond_10
    :goto_9
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFilterResources:[I

    aget p3, p3, v3

    :goto_a
    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilterView()Z

    move-result p4

    if-eqz p4, :cond_11

    const v3, 0x7f0f0020

    goto/16 :goto_14

    :cond_11
    move v3, p3

    goto/16 :goto_11

    :pswitch_f
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getPortraitResources()I

    move-result v3

    const p3, 0x7f0f0039

    goto :goto_c

    :pswitch_10
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v3

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedStringIdIgnoreClose(I)I

    move-result p3

    if-nez p5, :cond_13

    invoke-direct {p0, v7}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfHdr(Z)V

    goto :goto_c

    :pswitch_11
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v3

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedStringIdIgnoreClose(I)I

    move-result p3

    if-nez p5, :cond_13

    invoke-direct {p0, v7}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    goto :goto_c

    :cond_12
    :goto_b
    move p3, v3

    :cond_13
    :goto_c
    move-object p4, v6

    goto/16 :goto_15

    :cond_14
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_15

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMacroResources:[I

    aget p3, p3, v7

    goto :goto_d

    :cond_15
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMacroResources:[I

    aget p3, p3, v3

    goto :goto_d

    :cond_16
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    aget p3, p3, v7

    goto :goto_d

    :cond_17
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    aget p3, p3, v3

    :goto_d
    move v3, p3

    move p3, v2

    goto :goto_c

    :cond_18
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object p3

    aget-object p4, p3, v7

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_19

    aget-object p3, p3, v7

    invoke-direct {p0, v3, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopMusicHint(ILjava/lang/String;)V

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveMusicSelectResources:[I

    aget p3, p3, v7

    goto/16 :goto_14

    :cond_19
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveMusicSelectResources:[I

    aget p3, p3, v3

    goto/16 :goto_14

    :cond_1a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "setTopImageResource: VIDEO_BOKEH isSwitchOn = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "FragmentTopConfig"

    invoke-static {p5, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1b

    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideoBokehResource:[I

    aget p4, p4, v7

    goto :goto_e

    :cond_1b
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideoBokehResource:[I

    aget p4, p4, v3

    :goto_e
    move v3, p4

    if-eqz p3, :cond_1c

    const p3, 0x7f0f02ce

    goto :goto_c

    :cond_1c
    const p3, 0x7f0f02cd

    goto :goto_c

    :cond_1d
    const/16 p4, 0xae

    if-eq p3, p4, :cond_1e

    iget p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p3, v6}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result p3

    goto :goto_f

    :cond_1e
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveBeautyOpen()Z

    move-result p3

    :goto_f
    if-eqz p3, :cond_1f

    const p3, 0x7f080094

    goto :goto_10

    :cond_1f
    const p3, 0x7f080093

    :goto_10
    move v3, p3

    const p3, 0x7f0f0006

    goto/16 :goto_c

    :cond_20
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getSettingResources()I

    move-result v3

    const p3, 0x7f0f003e

    goto/16 :goto_c

    :cond_21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryRes(I)I

    move-result v3

    :goto_11
    move p3, v4

    goto/16 :goto_c

    :cond_22
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p3

    if-eqz p3, :cond_23

    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyIconResources:[I

    aget p4, p4, v7

    goto :goto_12

    :cond_23
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyIconResources:[I

    aget p4, p4, v3

    :goto_12
    if-eqz p3, :cond_24

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyTipString:[Ljava/lang/String;

    aget-object p3, p3, v7

    goto :goto_13

    :cond_24
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyTipString:[Ljava/lang/String;

    aget-object p3, p3, v3

    :goto_13
    move v9, p4

    move-object p4, p3

    move p3, v3

    move v3, v9

    goto :goto_15

    :cond_25
    const p3, 0x7f08012d

    :cond_26
    :goto_14
    move-object p4, v6

    move v9, v3

    move v3, p3

    move p3, v9

    :goto_15
    if-lez v3, :cond_2e

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getInitialMargin(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;)I

    move-result v0

    iput v0, p1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    iget v0, p1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    if-lez v0, :cond_28

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v1, :cond_27

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    iget v2, p1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    sub-int/2addr v1, v2

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_16

    :cond_27
    iget v1, p1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_16
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    iget v0, p1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v0, v5, :cond_29

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    :cond_29
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_17
    iget p1, p1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 p5, 0xc1

    if-ne p1, p5, :cond_2b

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p5, 0xa7

    if-ne p1, p5, :cond_2a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFlashSupportedInManualMode()Z

    move-result p1

    if-nez p1, :cond_2a

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_18

    :cond_2a
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2b
    :goto_18
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-static {}, Lcom/android/camera/Util;->isSetContentDesc()Z

    move-result p1

    if-eqz p1, :cond_2e

    :cond_2c
    if-lez p3, :cond_2d

    invoke-virtual {p0, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_2d
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2e
    :goto_19
    return v7

    :cond_2f
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc7
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideSwitchHint()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideAlert()V

    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090137

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigCommonTip()V

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfHdr(Z)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateMusicHint()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateLyingDirectHint(ZZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xc1

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xa2

    if-eq p0, p2, :cond_0

    const/16 p2, 0xa3

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->reShowMoon()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoUltraClearTip()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckRaw()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMacroMode()V

    :cond_2
    return-void
.end method

.method public alertAiDetectTipHint(IIJ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertAiSceneSelector(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiSceneSelector(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public alertFlash(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public alertFlash(ILjava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    if-eqz p3, :cond_2

    const/16 p3, 0xc1

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(Z)Z

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFlash(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public alertHDR(IZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    return-void
.end method

.method public alertLightingHint(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertLightingHint(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertLightingTitle(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertLightingTitle(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertMimojiFaceDetect(ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertMoonModeSelector(IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMoonSelector(Ljava/lang/String;Ljava/lang/String;IZ)V

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xa3

    if-ne p0, p2, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p2, 0xc3

    invoke-virtual {p0, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public alertMusicClose(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMusicClose(Z)V

    :cond_0
    return-void
.end method

.method public alertRaw(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0701a8

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v2, p0

    xor-int/lit8 p0, v1, 0x1

    invoke-virtual {v0, p1, v2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRaw(IIZ)V

    return-void
.end method

.method public alertSwitchHint(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSwitchHint(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertSwitchHint(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSwitchHint(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertTopHint(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertTopHint(IIJ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(IIJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertTopHint(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertUpdateValue(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertUpdateValue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertVideoUltraClear(II)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0701a8

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    xor-int/lit8 p0, v1, 0x1

    invoke-virtual {v0, p1, p2, v3, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertVideoUltraClear(IIIZ)V

    return-void
.end method

.method public clearAlertStatus()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearAlertStatus()V

    return-void
.end method

.method public directHideLyingDirectHint()V
    .locals 0

    return-void
.end method

.method public varargs disableMenuItem(Z[I)V
    .locals 4

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs enableMenuItem(Z[I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getAlertIsShow()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result p0

    return p0
.end method

.method public getCurrentAiSceneLevel()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b003d

    return p0
.end method

.method public getTopImage(I)Landroid/widget/ImageView;
    .locals 2

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/config/TopConfigItem;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideAlert()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    return-void
.end method

.method public hideConfigMenu()V
    .locals 1

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public hideExtraMenu()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public hideSwitchHint()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideSwitchHint()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAutoZoomResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getUltraWideResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraWideResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getUltraWideBokehResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraWideBokehResources:[I

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelTopMenuResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyIconResources:[I

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelSwitchTipsString()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyTipString:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getLiveShotResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getLightingResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLightingResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getVideoBokehResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideoBokehResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFilterResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFilterResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMusicSelectResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveMusicSelectResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMacroResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMacroResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getUltraPixelPortraitResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPortraitResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getSuperEISResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperEISResources:[I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    new-instance v0, Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/LastAnimationComponent;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    const v0, 0x7f090137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraParent:Landroid/view/ViewGroup;

    const v0, 0x7f09013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v1, Lcom/android/camera/Util;->isNotchDevice:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/camera/Util;->sStatusBarHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initTopView()V

    const v0, 0x7f090136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "top_config_expand_view"

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070154

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopDrawableWidth:I

    sget p1, Lcom/android/camera/Util;->sWindowWidth:I

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/Util;->startScreenSlideAlphaInAnimation(Landroid/view/View;)V

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public insertConfigItem(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    return-void
.end method

.method public isCurrentRecommendTipText(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isCurrentRecommendTipText(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExtraMenuShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMutexConfigs(I)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFocusPeakConfig()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckUltraPixel()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckUltraPixelPortrait()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckLiveShot()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckHandGesture()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoUltraClearTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckRaw()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMacroMode()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFrontBokenTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckBeauty()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckEyeLight()V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f09012a

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAngleChanged(F)V
    .locals 0

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object v4

    if-eqz v4, :cond_6

    const/16 v5, 0xc8

    const/4 v6, 0x7

    if-eq p1, v2, :cond_4

    const/4 v7, 0x2

    if-eq p1, v7, :cond_4

    const/4 v7, 0x6

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/16 v4, 0xf5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->animateOut()V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->animateOut()V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    if-eq p1, v1, :cond_5

    if-eq p1, v6, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reInitAlert(Z)V

    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    return v2

    :cond_6
    return v3
.end method

.method public onBeautyRecordingStart()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onBeautyRecordingStop()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "FragmentTopConfig"

    const-string v1, "top config onclick"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa1

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/config/TopConfigItem;

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    iget v6, v3, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xe3

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    iget v6, v3, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v7, 0xd1

    if-eq v6, v7, :cond_12

    const/16 v7, 0xd4

    if-eq v6, v7, :cond_11

    const/16 v7, 0xe1

    if-eq v6, v7, :cond_10

    const/16 v7, 0xef

    if-eq v6, v7, :cond_f

    const/16 v7, 0xf3

    if-eq v6, v7, :cond_e

    const/16 v7, 0xf5

    if-eq v6, v7, :cond_d

    const/16 v7, 0xfd

    if-eq v6, v7, :cond_c

    const/16 v7, 0xff

    if-eq v6, v7, :cond_b

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_0
    const/16 p0, 0xda

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_1
    const/16 p0, 0xd9

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_2
    const/16 p0, 0xd8

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_3
    const/16 p0, 0xd7

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtil;->trackMeterClick()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    iget v1, v3, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto/16 :goto_1

    :pswitch_5
    const/16 p0, 0xcf

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_6
    const/16 p0, 0xce

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    if-eqz v5, :cond_13

    const/16 p0, 0xa3

    invoke-interface {v5, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_1

    :pswitch_7
    const/16 p0, 0xcd

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_8
    const/16 p0, 0xcc

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_9
    const/16 p0, 0xcb

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_a
    const/16 p0, 0xc9

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    if-eqz v5, :cond_13

    const/16 p0, 0xa6

    invoke-interface {v5, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2, v0}, Lcom/android/camera/statistic/CameraStatUtil;->tarckBokenChanged(ILjava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0xc8

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v3, v0}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfBokehChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v2, [I

    const/16 v2, 0xc2

    aput v2, p1, v5

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_6
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBokeh(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0xc7

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showMenu()V

    if-eqz v5, :cond_13

    invoke-interface {v5, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_1

    :pswitch_e
    const/16 p0, 0xc4

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_f
    const/16 p0, 0xc3

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget v1, v3, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    if-eqz v5, :cond_13

    const/16 p0, 0xa2

    invoke-interface {v5, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->disableUpdate()Z

    move-result v2

    if-nez v2, :cond_9

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xab

    if-ne v0, v2, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Jb()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    if-ne p1, v0, :cond_7

    const-string v0, "5"

    :cond_7
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget v0, v3, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-direct {p0, v1, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDisableReasonString()I

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    :cond_a
    const-string p0, "ignore click flash for disable update"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v5, :cond_13

    invoke-interface {v5, v4}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto :goto_1

    :cond_b
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_1

    :cond_c
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtil;->trackLiveMusicClick()V

    if-nez p1, :cond_13

    new-instance p1, Lcom/android/camera/fragment/music/FragmentLiveMusic;

    invoke-direct {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusic;-><init>()V

    const/4 v0, 0x2

    const v1, 0x7f100021

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusic;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :cond_e
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_1

    :cond_f
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_1

    :cond_10
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showSetting()V

    goto :goto_1

    :cond_11
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_1

    :cond_12
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_13
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc7
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    const v3, 0x7f0f01e3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc1

    const/16 v6, 0xc2

    const v7, 0x7f0f0225

    if-eq v2, v7, :cond_5

    const p1, 0x7f0f023a

    if-eq v2, p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtil;->trackHdrChanged(ILjava/lang/String;)V

    new-array p1, v5, [I

    aput v6, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    const-string p1, "e"

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreMutexFlash(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigBokehIfHdrChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v5, [I

    const/16 p2, 0xc8

    aput p2, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_4
    invoke-interface {v1, p3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configHdr(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    if-ne p1, v7, :cond_7

    const-string p1, "5"

    if-eq p2, p1, :cond_6

    if-ne p3, p1, :cond_7

    :cond_6
    const-string p1, "0"

    if-eq p3, p1, :cond_7

    const-string p2, "200"

    if-eq p3, p2, :cond_7

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p2, p1}, Lcom/android/camera/statistic/CameraStatUtil;->trackFlashChanged(ILjava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBackSoftLightSwitch(Ljava/lang/String;)V

    :cond_7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtil;->trackFlashChanged(ILjava/lang/String;)V

    new-array p1, v5, [I

    aput v3, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHhrIfFlashChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v5, [I

    aput v6, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_8
    invoke-interface {v1, p3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFlash(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtil;->trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V

    new-array p1, v5, [I

    const/16 p2, 0xd6

    aput p2, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    invoke-interface {v1, p3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configMeter(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(Z)Z

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v7, 0xb1

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiCreate()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq p3, v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideAnimateElement(ILjava/util/List;I)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result v5

    if-nez v5, :cond_3

    if-ne p3, v1, :cond_4

    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    :cond_4
    const/16 v1, 0xa1

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa9

    const/16 v5, 0xa2

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_5
    if-eq p1, v5, :cond_7

    if-eq p1, v1, :cond_7

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_8

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    :goto_1
    move v1, v2

    :goto_2
    const/4 v5, 0x7

    if-eqz v1, :cond_a

    if-ne p3, v5, :cond_9

    move v1, v5

    goto :goto_3

    :cond_9
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->refreshExtraMenu()V

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    if-ne p3, v5, :cond_c

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->provideAnimateElement(ILjava/util/List;I)V

    :cond_c
    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiPreview()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->enableMenuItem(Z[I)V

    :cond_d
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_e
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideAnimateElement(ILjava/util/List;I)V

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_10
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedTopConfigs(IIZ)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_11

    return-void

    :cond_11
    move v1, v3

    :goto_5
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1a

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v11

    if-eqz p2, :cond_12

    move v10, v2

    goto :goto_6

    :cond_12
    move v10, v3

    :goto_6
    move-object v5, p0

    move-object v6, v11

    move-object v7, v4

    move v8, p1

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;Z)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    iget v7, v11, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_13

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    iget v7, v11, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/config/TopConfigItem;

    if-eqz v6, :cond_14

    iget v6, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    iget v7, v11, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v6, v7, :cond_14

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    :cond_14
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_16

    if-eqz v5, :cond_15

    invoke-static {v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_8

    :cond_15
    invoke-static {v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_8

    :cond_16
    const/16 v6, 0x96

    if-eqz v5, :cond_17

    new-instance v5, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v5, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_17
    const/16 v5, 0xa5

    if-eq v0, v5, :cond_19

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v7, v5, :cond_18

    goto :goto_7

    :cond_18
    new-instance v5, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v5, v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v4

    invoke-static {v4}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_19
    :goto_7
    invoke-static {v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_1a
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xc1
    .end array-data
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->provideRotateItem(Ljava/util/List;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideRotateItem(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public reInitAlert(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getHandGestureRunning()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/top/i;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/fragment/top/i;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x78

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p0, p1, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public refreshExtraMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->reFresh()V

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xac

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public removeConfigItem(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    return-void
.end method

.method public removeExtraMenu(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public rotate()V
    .locals 0

    return-void
.end method

.method public setAiSceneImageLevel(I)V
    .locals 1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    const/16 p1, 0x17

    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    :cond_0
    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setPendingRecordingState(I)V

    :goto_0
    return-void
.end method

.method public setShow(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    :cond_0
    return-void
.end method

.method public showConfigMenu()V
    .locals 1

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startLiveShotAnimation()V
    .locals 3

    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "level"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xac

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public varargs updateConfigItem([I)V
    .locals 9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    array-length v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_1

    aget v0, p1, v8

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/data/data/config/TopConfigItem;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;Z)Z

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateContentDescription()V
    .locals 2

    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0f0021

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateLyingDirectHint(ZZ)V
    .locals 0

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateLyingDirectHint(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
