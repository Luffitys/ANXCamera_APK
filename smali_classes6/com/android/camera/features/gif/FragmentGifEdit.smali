.class public Lcom/android/camera/features/gif/FragmentGifEdit;
.super Lcom/android/camera/fragment/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff4

.field public static final TAG:Ljava/lang/String; = "MimojiFragmentGifEdit"


# instance fields
.field private mBackBtn:Landroid/widget/ImageView;

.field private mConcatProgressBar:Landroid/widget/ProgressBar;

.field private mConfirmBtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mGifBitmap:Landroid/graphics/Bitmap;

.field private mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

.field private mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

.field private mGifViewLayout:Landroid/view/View;

.field private mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

.field private mIlShare:Landroid/widget/LinearLayout;

.field private mIsNeedCombine:Z

.field private mIsShare:Z

.field private mLlTextureContainer:Landroid/widget/FrameLayout;

.field private mPreviewCoverView:Landroid/widget/ImageView;

.field private mTextureView:Landroid/view/TextureView;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_0

    const/16 v0, 0x14

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic OooO0OO()V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->deleteMimojiCache(I)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :cond_1
    const-string v0, "MimojiFragmentGifEdit"

    const-string v1, "mimoji void onCombineError[] cameraAction null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    goto :goto_0

    :cond_2
    const-string v1, "mimoji void onCombineError[] recordState null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    new-instance v1, Lcom/android/camera/features/gif/OooO0O0;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/OooO0O0;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private backToPreview()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/gif/OooO00o;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/OooO00o;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initGifMediaPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v2, Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v3, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;->setGifMediaPlayer(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setPreviewCoverView(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setConcatProgressBar(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setGifEditLayout(Lcom/android/camera/features/gif/GifEditLayout;)V

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/features/gif/FragmentGifEdit;->combineVideoAudio(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method private release()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMedia(Z)V

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private saveGif()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->startVideo2Gif()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->OooO00o()V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->OooO0OO()V

    return-void
.end method

.method public combineVideoAudio(Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->openVideoUrl(Ljava/lang/String;J)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "MimojiFragmentGifEdit"

    const-string p2, "mimoji void combineVideoAudio[savePath] mGifMediaPlayer null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setVideoUrl(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public coverGifError()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    return-void
.end method

.method public coverGifSuccess(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    const/16 v1, 0x12c

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/camera/storage/ImageSaver;->addGifSync(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "image/gif"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f1006af

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_1

    const v2, 0x7f100037

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->announceForAccessibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/camera/storage/ImageSaver;->addGif(Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c006b

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "MimojiFragmentGifEdit"

    const-string p1, " rootview null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    const v0, 0x7f0901e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mLlTextureContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mLlTextureContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0902ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;->initView(Landroid/view/View;)V

    const v0, 0x7f0901e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIlShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    const v0, 0x7f0900cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f09015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/gif/GifEditLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const v0, 0x7f0901a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConfirmBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->getGifBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->getGifBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->getGifBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->initGifMediaPlayer()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p1, "mimoji_gif_share"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    goto :goto_0

    :sswitch_1
    const-string p1, "mimoji_gif_save"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveGif()V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    goto :goto_1

    :sswitch_3
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09016b -> :sswitch_3
        0x7f0901a0 -> :sswitch_2
        0x7f0901a1 -> :sswitch_1
        0x7f0901e2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0c006b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->release()V

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    const-string p0, "MimojiFragmentGifEdit"

    const-string v0, "onDestroy  ReleaseMedia"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->pausePlay()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->initView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->resumePlay()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public operateGifPannelVisibleState(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifViewPresenter;->operateGifPannelVisibleState(I)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "provideAnimateElement, animateInElements"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "resetType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MimojiFragmentGifEdit"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :cond_0
    return-void
.end method

.method public reconfigPreviewRadio(I)V
    .locals 0

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public showPreviewCover(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
