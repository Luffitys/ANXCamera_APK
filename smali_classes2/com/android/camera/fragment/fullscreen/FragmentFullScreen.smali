.class public Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFullScreen.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff6

.field private static final TAG:Ljava/lang/String; = "FullScreen"


# instance fields
.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

.field private mCombineProgress:Landroid/widget/ProgressBar;

.field private mCombineReady:Z

.field private mConcatDisposable:Lio/reactivex/disposables/Disposable;

.field private mConcatListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

.field private mConcatProgress:Landroid/widget/ProgressBar;

.field private mConcatReady:Z

.field private mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

.field private mExitDialog:Landroid/app/AlertDialog;

.field private mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

.field private mHandler:Landroid/os/Handler;

.field private mIsIntentAction:Z

.field private mIsPlaying:Z

.field private mLiveViewLayout:Landroid/view/View;

.field private mLiveViewStub:Landroid/view/ViewStub;

.field private mPaused:Z

.field private mPendingSaveFinish:Z

.field private mPendingShare:Z

.field private mPreviewBack:Landroid/widget/ImageView;

.field private mPreviewCombine:Landroid/widget/ImageView;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mPreviewShare:Landroid/widget/ImageView;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewTextureView:Landroid/view/TextureView;

.field private mReady:Z

.field private mSaveContentValues:Landroid/content/ContentValues;

.field private mSavedUri:Landroid/net/Uri;

.field private mScreenLightIndicator:Landroid/view/View;

.field private mScreenLightRootView:Landroid/view/View;

.field private mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field private mShareCancel:Landroid/view/View;

.field private mShareLayout:Landroid/view/ViewGroup;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTimeView:Landroid/widget/TextView;

.field private mTopLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->concatResult(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineSuccess()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineError()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private animateIn()V
    .locals 0

    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startShare()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private concatResult(Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineError()V

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "concat: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullScreen"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xd1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initCombineListener()V

    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewTextureView:Landroid/view/TextureView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v5, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    iget-object v6, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->init(Landroid/view/TextureView;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineError()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-nez p1, :cond_3

    const-string p1, "concat finish and start preview"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startPlay()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "concat finish and start save"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->setProgressBarVisible(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCombine()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "concat finish and pending share"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCombine()V

    :cond_5
    :goto_0
    return-void
.end method

.method private getFragmentMiMoji()Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    const/4 v1, 0x0

    const-string v2, "FullScreen"

    if-nez v0, :cond_0

    const-string p0, "getFragmentMiMoji(): fragment is null"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "getFragmentMiMoji(): fragment is not added yet"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    return-object p0
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private hideShareSheet()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Lmiui/view/animation/QuarticEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuarticEaseInInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private initCombineListener()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$6;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$7;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method private initConcatListener()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    return-void
.end method

.method private initHandler()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initLiveView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTopLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f090092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f090099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f09008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f09008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    const v0, 0x7f09008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    const v0, 0x7f090087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f09008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f09008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareCancel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const p1, 0x7f060027

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method private onCombineError()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCombineSuccess()V
    .locals 2

    const-string v0, "FullScreen"

    const-string v1, "combineSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    iget-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    if-eqz v1, :cond_1

    const-string v1, "combineSuccess and share"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/LiveModule;

    invoke-virtual {p0}, Lcom/android/camera/module/LiveModule;->startSaveToLocal()V

    return-void

    :cond_1
    const-string v1, "combineSuccess and finish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$9;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$9;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onPlayCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$10;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$10;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pausePlay()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->pausePlay()V

    return-void
.end method

.method private resumePlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->resumePlay()V

    return-void
.end method

.method private setProgressBarVisible(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x12c

    const/4 v2, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$11;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$11;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    new-array p1, v2, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$12;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$12;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$13;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$13;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private shareMore()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0124

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to share video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FullScreen"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showExitConfirm()V
    .locals 3

    const-string v0, "live\u9884\u89c8\u9000\u51fa"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtil;->trackLiveClick(Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$3;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    const v2, 0x7f0f0122

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$4;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    const v2, 0x7f0f037c

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showShareSheet()V
    .locals 13

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "FullScreen"

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    array-length v3, v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_2

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_1
    if-ge v8, v3, :cond_1

    sget-object v5, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_ICON:[I

    aget v11, v4, v8

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_NAME:[I

    aget v12, v4, v8

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    const-string v0, "no default share entry"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v4

    goto :goto_4

    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget v0, v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-le v0, v4, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_6

    const-string v0, "not match default share strategy"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v0, v5

    :goto_4
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->shareMore()V

    return-void

    :cond_7
    new-instance v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    add-int/lit8 v7, v3, 0x1

    const v10, 0x7f08010f

    const v11, 0x7f0f0035

    const-string v8, "com.android.camera"

    const-string v9, "more"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$14;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$14;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int v4, v3, v0

    int-to-float v4, v4

    const/high16 v6, 0x40b00000    # 5.5f

    div-float/2addr v4, v6

    float-to-int v4, v4

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v3, v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->getItemCount()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->setShareInfoList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    :cond_9
    :goto_5
    new-instance v4, Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v4, v2, p0, v3}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v4, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    new-instance v2, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :goto_6
    sget v0, Lcom/android/camera/Util;->sNavigationBarHeight:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_a
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_b
    :goto_7
    const-string p0, "no IntentActivities"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startCombine()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    invoke-interface {v1, v0, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->combineVideoAudio(Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)V

    :cond_0
    return-void
.end method

.method private startConcatVideoIfNeed()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FullScreen"

    const-string v1, "startConcatVideo"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initConcatListener()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;->onRecordConcat(Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "concat failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->concatResult(Landroid/util/Pair;)V

    :cond_2
    return-void
.end method

.method private startPlay()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->startPlay()V

    return-void
.end method

.method private startShare()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showShareSheet()V

    return-void
.end method

.method private startShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    invoke-static {p2}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0x7f0f0124

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to share video "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FullScreen"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff6

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0020

    return p0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSaveContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public hideScreenLight()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$1;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    const v0, 0x7f090113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public isLiveRecordPreviewShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p0, :cond_0

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
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->Nb()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-direct {p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090062

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineSuccess()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->Xb()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-direct {p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f090062

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFragmentMimojiEdit:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mReady:Z

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showExitConfirm()V

    :goto_0
    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->getFragmentMiMoji()Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->onBackEvent(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "FullScreen"

    const/4 v3, 0x0

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live\u9884\u89c8\u5206\u4eab_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtil;->trackLiveClick(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    const-string v1, "more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->shareMore()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startShare(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "live\u9884\u89c8\u5206\u4eab"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->trackLiveClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    if-nez p1, :cond_3

    const-string p1, "concat not finished, show share progress and wait to share"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCombine()V

    goto :goto_0

    :pswitch_4
    const-string p1, "live\u9884\u89c8\u4fdd\u5b58"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->trackLiveClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineSuccess()V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    if-nez p1, :cond_5

    const-string p1, "concat not finished, show save progress and wait to save"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->setProgressBarVisible(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->setProgressBarVisible(I)V

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCombine()V

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    if-nez p1, :cond_6

    const-string p1, "concat not finished, show play progress"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startPlay()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showExitConfirm()V

    :cond_7
    :goto_0
    :pswitch_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090087
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startShare()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mReady:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideScreenLight()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_3

    const-string p0, "FullScreen"

    const-string p1, "concat error, action null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->onDestory()V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setScreenLightColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public showScreenLight()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x64

    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    return p0
.end method

.method public startLiveRecordPreview(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initHandler()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initLiveView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsIntentAction:Z

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Landroid/widget/ImageView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xc9

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;->getTimeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mReady:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    return-void
.end method

.method public startLiveRecordSaving()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
