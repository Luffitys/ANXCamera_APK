.class public Lcom/android/camera/fragment/dialog/FragmentLiveReview;
.super Lcom/android/camera/fragment/BaseFragment;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xffff1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PAUSE_AFTER_PLAY:I = 0xa

.field private static final STATE_PENDING_PLAY:I = 0x2

.field private static final STATE_PENDING_RESUME:I = 0x5

.field private static final STATE_PENDING_SAVE:I = 0x8

.field private static final STATE_PENDING_SHARE:I = 0x6

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_SAVE:I = 0x9

.field private static final STATE_SHARE:I = 0x7

.field private static final STATE_WAIT_SURFACE_CREATE:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAudioString:Ljava/lang/String;

.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mCancelProgress:Landroid/widget/ProgressBar;

.field private mComposeState:I

.field private mComposeStateConsumer:Lio/reactivex/functions/Consumer;

.field private mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

.field private mComposeStateEmitter:Lio/reactivex/ObservableEmitter;

.field private mExitDialog:Landroid/app/AlertDialog;

.field private mFirstFrame:Landroid/graphics/Bitmap;

.field private mPaused:Z

.field private mPlayStateConsumer:Lio/reactivex/functions/Consumer;

.field private mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

.field private mPlayStateEmitter:Lio/reactivex/ObservableEmitter;

.field private mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

.field private mPlayerState:I

.field private mPreviewBack:Landroid/widget/ImageView;

.field private mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviewCover:Landroid/widget/ImageView;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mPreviewShare:Landroid/widget/ImageView;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewStartProgress:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mSaveContentValues:Landroid/content/ContentValues;

.field private mSavePath:Ljava/lang/String;

.field private mSaveProgress:Landroid/widget/ImageView;

.field private mSaved:Z

.field private mSavedUri:Landroid/net/Uri;

.field private mSegmentData:Ljava/util/List;

.field private mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field private mShareCancel:Landroid/view/View;

.field private mShareLayout:Landroid/view/ViewGroup;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTimeView:Landroid/widget/TextView;

.field private mTopLayout:Landroid/view/ViewGroup;

.field private mUIStateConsumer:Lio/reactivex/functions/Consumer;

.field private mUIStateDisposable:Lio/reactivex/disposables/Disposable;

.field private mUIStateEmitter:Lio/reactivex/ObservableEmitter;

.field private mUiState:I

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveReview@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    new-instance v0, Lcom/android/camera/fragment/dialog/OooO0o0;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/OooO0o0;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateConsumer:Lio/reactivex/functions/Consumer;

    new-instance v0, Lcom/android/camera/fragment/dialog/OooO0Oo;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/OooO0Oo;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateConsumer:Lio/reactivex/functions/Consumer;

    new-instance v0, Lcom/android/camera/fragment/dialog/OooO0o;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/OooO0o;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateConsumer:Lio/reactivex/functions/Consumer;

    new-instance v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$1;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    return-void
.end method

.method private synthetic OooO(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_0

    nop

    :cond_0
    return-void
.end method

.method private synthetic OooO00o(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method private synthetic OooO0OO(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method private synthetic OooO0o0(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method private synthetic OooO0oO(Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI state consumer get state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq p1, v2, :cond_6

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v6, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/2addr v6, v5

    int-to-float v5, v6

    invoke-direct {p1, v0, v1, v4, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    :goto_2
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showTime(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method private synthetic OooOO0O(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    const/4 v2, 0x7

    const/16 v3, 0x9

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-ne p1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComposed error, state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic OooOOO0(Lcom/android/camera/fragment/fullscreen/ShareInfo;Lcom/android/camera/fragment/fullscreen/ShareInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    iget p1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lcom/android/camera/module/impl/component/MiLivePlayer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/camera/fragment/dialog/FragmentLiveReview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/camera/fragment/dialog/FragmentLiveReview;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->releaseCover()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    return-object p0
.end method

.method private checkAndShare()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCurStateString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "STATE_UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "STATE_PAUSE_AFTER_PLAY"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_SAVE"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_PENDING_SAVE"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_SHARE"

    return-object p0

    :pswitch_4
    const-string p0, "STATE_PENDING_SHARE"

    return-object p0

    :pswitch_5
    const-string p0, "STATE_PENDING_RESUME"

    return-object p0

    :pswitch_6
    const-string p0, "STATE_PAUSED"

    return-object p0

    :pswitch_7
    const-string p0, "STATE_PLAYING"

    return-object p0

    :pswitch_8
    const-string p0, "STATE_PENDING_PLAY"

    return-object p0

    :pswitch_9
    const-string p0, "STATE_WAIT_SURFACE_CREATE"

    return-object p0

    :pswitch_a
    const-string p0, "STATE_IDLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasFrame()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideShareSheet()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

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

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/fragment/dialog/OooO0O0;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/OooO0O0;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    new-instance v0, Lcom/android/camera/fragment/dialog/OooO0oo;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/OooO0oo;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    new-instance v0, Lcom/android/camera/fragment/dialog/OooO0oO;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/OooO0oO;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    new-instance v0, Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setStateListener(Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;)V

    return-void
.end method

.method private initTextureView()V
    .locals 4

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$2;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private isComposing()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

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

.method private releaseCover()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private setUiState(I)V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private shareMore()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    const v2, 0x7f10031f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/Util;->shareMediaToMore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)Z

    return-void
.end method

.method private showCover()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private showExitConfirm()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v0, 0x7f10031d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f10031c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v0, 0x7f1006cb

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$4;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showShareSheet()V
    .locals 13

    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

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

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v0, "no IntentActivities"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    array-length v4, v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_3

    goto :goto_2

    :cond_3
    move v8, v0

    :goto_1
    if-ge v8, v4, :cond_2

    sget-object v6, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    aget-object v6, v6, v8

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v5, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_ICON:[I

    aget v11, v5, v8

    sget-object v5, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_NAME:[I

    aget v12, v5, v8

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v5, "no default share entry"

    :goto_3
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_4

    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget v1, v1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-le v1, v3, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_7

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v5, "not match default share strategy"

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_4
    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    return-void

    :cond_8
    new-instance v1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    add-int/lit8 v6, v4, 0x1

    const v9, 0x7f08026b

    const v10, 0x7f10008a

    const-string v7, "com.android.camera"

    const-string v8, "more"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/camera/fragment/dialog/OooO0OO;->OooO00o:Lcom/android/camera/fragment/dialog/OooO0OO;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0702e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40b00000    # 5.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->getItemCount()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->setShareInfoList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    :cond_a
    :goto_5
    new-instance v4, Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v4, v2, p0, v3}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    new-instance v2, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FullScreen"

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/Space;->setMinimumWidth(I)V

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/Space;->setMinimumWidth(I)V

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_6
    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_b
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

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
.end method

.method private showTime(Ljava/util/List;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3a98

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p1}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startSave(Z)V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip save, caz ui state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip save, caz composer state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v0, "startSave"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->combineVideoAudio()V

    return-void
.end method

.method private startSaveToLocal()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "datetaken"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v0, "can\'t add to db."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->OooO00o(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic OooO0Oo(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->OooO0OO(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic OooO0o(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->OooO0o0(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic OooO0oo(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->OooO0oO(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic OooOO0(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->OooO(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic OooOO0o(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->OooOO0O(Ljava/lang/Integer;)V

    return-void
.end method

.method public attemptStartPlay()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startPlay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initTextureView()V

    :goto_0
    return-void
.end method

.method public combineVideoAudio()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->stopPlayer()V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->startCompose(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffff1

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0071

    return p0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const v0, 0x7f0901c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0901c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0901bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0901ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0901d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0901bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0901c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f0901c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    const v0, 0x7f0901c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->o0ooOoO(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f0f002b

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO0(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->Oooo00o()V

    const v0, 0x7f0901bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f0901c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f0901c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0901ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0901cf

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0901cb

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v3, v0, v5

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0901c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomLayout:Landroid/view/ViewGroup;

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

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v0, 0x7f06007b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eqz p0, :cond_0

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

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAfterFrameAvailable ui state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showCover()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ui state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    const-string v1, "more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v4}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    :goto_0
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    goto/16 :goto_2

    :pswitch_3
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    const-string p1, "mi_live_click_share"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-nez p1, :cond_2

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSave(Z)V

    goto :goto_2

    :pswitch_4
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    return-void

    :cond_3
    const-string p1, "mi_live_click_done"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSave(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_2

    :pswitch_5
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v3, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    if-ne p1, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    goto :goto_2

    :cond_7
    if-ne p1, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->resumePlay()V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string p1, "skip start play~"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_6
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v2, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v1, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    goto :goto_2

    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901bf
        :pswitch_7
        :pswitch_0
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

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause ui state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume ui state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showCover()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_0
    return-void
.end method

.method public pausePlay(ZZ)V
    .locals 2

    iget p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->isComposing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip pause play, caz state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->stopPlayer()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->pausePlayer()V

    :cond_5
    :goto_2
    return-void
.end method

.method public prepare(Landroid/content/ContentValues;Ljava/util/List;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "prepare fail, state is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    iput-object p3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    const-string p2, "resolution"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoHeight:I

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    iget-object v6, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/module/impl/component/MiLivePlayer;->init(IIIILjava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startPlay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :goto_0
    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quitLiveRecordPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string p1, "concat error, action null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_2
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->release()V

    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method public resumePlay()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip resume play, caz state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->resumePlayer()V

    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initTextureView()V

    return-void
.end method

.method public startLiveRecordSaving()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    :cond_1
    return-void
.end method

.method public startPlay(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->cancelCompose()V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->startPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "unRegister"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
