.class public Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "BeautySmoothLevelFragment.java"


# static fields
.field private static final INTERVAL:I = 0x5


# instance fields
.field private mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field private mIsRTL:Z

.field private mSeekBarMaxProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mSeekBarMaxProgress:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->onLevelSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mIsRTL:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mSeekBarMaxProgress:I

    return p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mIsRTL:Z

    const v0, 0x7f090016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SeekBarCompat;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->initBeautyItems()Ljava/util/List;

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mSeekBarMaxProgress:I

    const-string p1, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->getDefaultValueByKey(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mSeekBarMaxProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/SeekBarCompat;->setSeekBarPinProgress(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$2;-><init>(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarCompatTouchListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;)V

    return-void
.end method

.method private onLevelSelected(I)V
    .locals 0

    const-string p0, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setFaceBeautyRatio(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/fragment/beauty/BeautyHelper;->onBeautyChanged()V

    return-void
.end method


# virtual methods
.method protected beautyLevelToPosition(II)I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method protected getAnimateView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method protected initBeautyItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0b000e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method protected onViewCreatedAndJumpOut()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndJumpOut()V

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onViewCreatedAndVisibleToUser(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndVisibleToUser(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected provideItemHorizontalMargin()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public setEnableClick(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method
