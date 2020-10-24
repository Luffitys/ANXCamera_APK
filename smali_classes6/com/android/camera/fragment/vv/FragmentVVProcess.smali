.class public Lcom/android/camera/fragment/vv/FragmentVVProcess;
.super Lcom/android/camera/fragment/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mCheckboxLayout:Landroid/view/ViewGroup;

.field private mCheckboxText:Landroid/widget/TextView;

.field private mCombineProgress:Landroid/widget/ImageView;

.field private mConcatProgress:Landroid/widget/ProgressBar;

.field private mCurrentIndex:I

.field private mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field private mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

.field private mDurationList:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private mIsIntentAction:Z

.field private mLandscapeHint:Landroid/widget/TextView;

.field private mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

.field private mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

.field private mPaused:Z

.field private mPendingShare:Z

.field private mPreviewBack:Landroid/widget/ImageView;

.field private mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviewCover:Landroid/widget/FrameLayout;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mPreviewNext:Landroid/widget/ImageView;

.field private mPreviewPrevious:Landroid/widget/ImageView;

.field private mPreviewShare:Landroid/widget/ImageView;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewThumb:Landroid/widget/ImageView;

.field private mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

.field private mRootView:Landroid/view/View;

.field private mSaveContentValues:Landroid/content/ContentValues;

.field private mSavedPath:Ljava/lang/String;

.field private mSavedUri:Landroid/net/Uri;

.field private mSegmentPreview:Landroid/widget/ImageView;

.field private mSegmentReverse:Landroid/widget/ImageView;

.field private mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mStabilityHint:Landroid/widget/TextView;

.field private mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field private mVVDialog:Landroid/view/View;

.field private mVVDialogCancel:Landroid/widget/TextView;

.field private mVVDialogConfirm:Landroid/widget/TextView;

.field private mVVDialogMessage:Landroid/widget/TextView;

.field private mVVShare:Landroid/view/View;

.field private mVVShareMessage:Landroid/widget/TextView;

.field private mVideoRecordingPaused:Z

.field private mVideoRecordingStarted:Z

.field private mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

.field private mWaitingResultSurfaceTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onProcessingSateChanged(I)V

    return-void
.end method

.method static synthetic OooO0OO(Ljava/lang/String;)Lcom/android/camera/module/loader/NullHolder;
    .locals 3

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->rotateBitmap(Landroid/graphics/Bitmap;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic OooO0Oo(Lcom/android/camera/module/loader/NullHolder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideVVDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/vv/FragmentVVProcess;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/vv/FragmentVVProcess;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->stopSegmentPreview(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/camera/fragment/vv/FragmentVVProcess;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/ui/TextureVideoView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/vv/FragmentVVProcess;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->startPlay(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    return-object p0
.end method

.method private animateIn(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private animateOut(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showShareSheet()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideShareSheet()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private hideVVDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initHandler()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess$12;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$12;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initTextureView()V
    .locals 3

    new-instance v0, Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/TextureVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCover:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setScaleType(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$6;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$6;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private intoResultPreview()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "startConcat"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->updateThumbnail()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->startPlay(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private isFullSegmentsPlaying()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRecordingFinished()Z
    .locals 5

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private onProcessingSateChanged(I)V
    .locals 6

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onResultCombineFinished(Z)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onResultCombineFinished(Z)V

    goto/16 :goto_2

    :pswitch_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {p1, v2, v3, v4, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o0ooOoO(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0f002b

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO0(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->Oooo00o()V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSegmentsChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateIn(Landroid/view/View;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method private pausePlay(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->stopSegmentPreview(Z)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xe4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    const-string p1, "value_vv_click_play_all_pause"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->pausePlay()V

    :cond_5
    :goto_1
    return-void
.end method

.method private previewLastSegment()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->getSegmentPath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->start()V

    :cond_3
    return-void
.end method

.method private resumePlay()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->intoResultPreview()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-nez v0, :cond_2

    sget-object p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "resumePlay failed, vv is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->resumePlay()V

    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Lcom/android/camera/module/loader/NullHolder;
    .locals 7

    if-nez p0, :cond_0

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v4

    div-float/2addr v2, v1

    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 p1, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, v0

    :cond_2
    move-object p1, p0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "rotate out of memory"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    invoke-static {p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method private showReverseConfirmDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "live_reverse"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogMessage:Landroid/widget/TextView;

    const v1, 0x7f10032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    const v1, 0x7f10032d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    const v1, 0x7f1006cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showShareSheet()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    iget-boolean v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v4, 0x10000

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, 0x4

    div-int/2addr v4, v5

    iget-object v6, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    const/16 v7, 0x8

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemCount()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-eq v6, v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/VVShareAdapter;->setShareInfoList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_3
    :goto_0
    new-instance v6, Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-direct {v6, v2, v1, p0, v4}, Lcom/android/camera/fragment/vv/VVShareAdapter;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    new-instance v2, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;-><init>(III)V

    new-instance v4, Lcom/android/camera/fragment/vv/FragmentVVProcess$10;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$10;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageListener(Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v4, v1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->initIndicator(I)V

    if-gt v1, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    const v1, 0x7f1006cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$11;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$11;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_6
    :goto_3
    sget-object p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "no IntentActivities"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startPlay(Landroid/view/Surface;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->startPlay(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method private startSave()V
    .locals 2

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "startSave"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {v0}, Lcom/android/camera/module/LiveModuleSubVV;->showPreview()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVSave(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$5;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$5;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private stopSegmentPreview(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "value_vv_click_play_segement_exit"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateThumbnail()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->getSegmentPath(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/camera/FileCompat;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/vv/OooOOOO;->OooO00o:Lcom/android/camera/fragment/vv/OooOOOO;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/vv/OooOOOo;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/OooOOOo;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera/module/loader/NullHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->OooO0Oo(Lcom/android/camera/module/loader/NullHolder;)V

    return-void
.end method

.method public canSnap()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffd

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c00a6

    return p0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mRootView:Landroid/view/View;

    const v0, 0x7f0903c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0903cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCover:Landroid/widget/FrameLayout;

    const v0, 0x7f0903a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0903d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0903c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    const v0, 0x7f0903c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    const v0, 0x7f0903c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0903ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f0903c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f0903c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    const v0, 0x7f0903cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    const v0, 0x7f0903c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    const v0, 0x7f0903d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    const v0, 0x7f0903cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    const v0, 0x7f0903cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    const v0, 0x7f0903d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    const v0, 0x7f0903a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0903a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0903aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0903a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0903a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0903a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0903a7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxText:Landroid/widget/TextView;

    const v0, 0x7f0903d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const v1, 0x7f0903d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const v1, 0x7f0903d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const v2, 0x7f0903d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const v0, 0x7f0903ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/vv/VVProgressView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    div-int/2addr v4, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v3

    sub-int/2addr v3, v6

    sub-int/2addr v3, v0

    sub-int/2addr v6, v3

    div-int/2addr v6, v5

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    aput-object v3, v0, v5

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    const/4 v6, 0x4

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    const/4 v6, 0x5

    aput-object v3, v0, v6

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogMessage:Landroid/widget/TextView;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    const v0, 0x7f0903bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0903bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->quit()V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMProcessing;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    new-instance v0, Lcom/android/camera/fragment/vv/OooOOO;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/OooOOO;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/data/observeable/VMProcessing;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->stopSegmentPreview(Z)V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideVVDialog()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901cd

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result p1

    if-eq p1, v1, :cond_3

    return-void

    :cond_3
    const-string p1, "value_vv_reverse"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showReverseConfirmDialog()V

    goto :goto_1

    :sswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result p1

    if-eq p1, v1, :cond_4

    return-void

    :cond_4
    const-string p1, "value_vv_click_play_segment"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->previewLastSegment()V

    goto :goto_1

    :sswitch_2
    const-string p1, "value_vv_click_play_share"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    goto :goto_0

    :sswitch_3
    const-string p1, "value_vv_click_play_save"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->quitLiveRecordPreview(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->startSave()V

    goto :goto_1

    :sswitch_4
    const-string p1, "value_vv_click_play_all_resume"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->resumePlay()V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isRecordingFinished()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string p1, "value_vv_click_play_all"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->intoResultPreview()V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showExitConfirm()V

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedPath:Ljava/lang/String;

    invoke-static {v0, p1, v2, p0, v1}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_7
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901cd -> :sswitch_7
        0x7f0903ba -> :sswitch_6
        0x7f0903c4 -> :sswitch_5
        0x7f0903c6 -> :sswitch_4
        0x7f0903c7 -> :sswitch_3
        0x7f0903c9 -> :sswitch_2
        0x7f0903cf -> :sswitch_1
        0x7f0903d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCombinePrepare(Landroid/content/ContentValues;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->initHandler()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onKeyCodeCamera()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isRecordingFinished()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onSnapClick()V

    return-void
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedPath:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showShareSheet()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPaused:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideVVDialog()Z

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    return-void
.end method

.method public onRecordingFragmentUpdate(IJ)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/vv/VVProgressView;->updateDuration(IJ)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onSegmentsChanged()V

    return-void
.end method

.method public onRecordingNewFragmentStart(IJLcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 0

    iput-object p4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentIndex:I

    return-void
.end method

.method public onResultCombineFinished(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "combineFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineFinished and share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->startSaveToLocal()V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string p1, "combineSuccess and share is not allowed!!!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineFinished and finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResultPreviewFinished(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess$8;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$8;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPaused:Z

    return-void
.end method

.method public onSnapClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb3

    if-eq v1, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string p0, "value_vv_start_segment"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onSnapLongPress()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 0

    return-void
.end method

.method public onSnapPrepare()V
    .locals 0

    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 0

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 0

    return-void
.end method

.method public prepare(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 5

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mIsIntentAction:Z

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xb3

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showPaintCenterVVItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result p2

    :goto_0
    iget-object v0, p1, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    if-ge v1, p2, :cond_1

    goto :goto_1

    :cond_1
    neg-long v3, v3

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onSegmentsChanged()V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    iget-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/vv/VVProgressView;->setDurationList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->initTextureView()V

    return-void
.end method

.method public processingFinish()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1000a7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-static {v1, v0, v1, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1000a7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingPrepare()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v0, v2, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingResume()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->animateOut(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    :cond_1
    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->setSpecifiedDuration(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1000ad

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public processingStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->processingResume()V

    return-void
.end method

.method public quit()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mRootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->reset()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "checked: confirm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->confirmOperation()V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "checked: remove"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastSize()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "uncheck: undo"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "uncheck: remove"

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastSize()I

    move-result v0

    if-lez v0, :cond_7

    if-nez p1, :cond_7

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "finish: undo"

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->undo()V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "finish: remove"

    :goto_1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->removeSelf()V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez p0, :cond_9

    sget-object p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string p1, "concat error, action null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    if-eqz p1, :cond_a

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_3

    :cond_a
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_3
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public showExitConfirm()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastSize()I

    move-result v0

    :goto_1
    const/4 v3, 0x1

    if-lez v0, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v5, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxText:Landroid/widget/TextView;

    const v2, 0x7f10031e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    const v0, 0x7f1006cb

    const v2, 0x7f10031c

    const v6, 0x7f10031d

    iget-object v7, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/fragment/vv/FragmentVVProcess$4;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$4;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    move v1, v3

    :cond_9
    invoke-static {v4, v5, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVV2Exit(ZZZ)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setDurationText(Ljava/lang/String;)V

    return-void
.end method
