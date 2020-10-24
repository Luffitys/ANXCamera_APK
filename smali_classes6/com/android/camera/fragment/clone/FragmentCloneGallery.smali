.class public Lcom/android/camera/fragment/clone/FragmentCloneGallery;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$CloneChooser;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentCloneGallery"


# instance fields
.field private mCopyButton:Landroid/widget/ImageView;

.field private mCopyIndicator:Landroid/widget/ImageView;

.field private mCopyLayout:Landroid/view/ViewGroup;

.field private mCopyVideoView:Lcom/android/camera/ui/TextureVideoView;

.field private mIsSupportCloneCopyMode:Z

.field private mModeSelectedListener:Lcom/android/camera/fragment/clone/ModeSelectedListener;

.field private mPhotoButton:Landroid/widget/ImageView;

.field private mPhotoIndicator:Landroid/widget/ImageView;

.field private mPhotoLayout:Landroid/view/ViewGroup;

.field private mSelectedMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field private mVideoButton:Landroid/widget/ImageView;

.field private mVideoIndicator:Landroid/widget/ImageView;

.field private mVideoLayout:Landroid/view/ViewGroup;

.field private mVideoVideoView:Lcom/android/camera/ui/TextureVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mIsSupportCloneCopyMode:Z

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic OooO0OO()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private setAccessibility(Z)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x64

    const v2, 0x7f1000a5

    const-string v3, ", "

    const v4, 0x7f100209

    const v5, 0x7f100204

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/camera/fragment/clone/OooO00o;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/clone/OooO00o;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneGallery;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/camera/fragment/clone/OooO0O0;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/clone/OooO0O0;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneGallery;)V

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private startPlay(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/TextureVideoView;->setVideoFileDescriptor(Landroid/content/res/AssetFileDescriptor;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setIsNeedAudio(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneGallery;Landroid/content/res/AssetFileDescriptor;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ui/TextureVideoView;->start(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FragmentCloneGallery"

    const-string p1, "open failed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private stopPlay(Lcom/android/camera/ui/TextureVideoView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method private unSelectCopyButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mIsSupportCloneCopyMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->stopPlay(Lcom/android/camera/ui/TextureVideoView;)V

    :cond_0
    return-void
.end method

.method private unSelectVideoButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->stopPlay(Lcom/android/camera/ui/TextureVideoView;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->OooO00o()V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->OooO0OO()V

    return-void
.end method

.method protected getAnimationType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffff4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mIsSupportCloneCopyMode:Z

    if-eqz p0, :cond_0

    const p0, 0x7f0c004e

    return p0

    :cond_0
    const p0, 0x7f0c004d

    return p0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0xffff4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0900b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0900c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->setAccessibility(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoIndicator:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mIsSupportCloneCopyMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0900a2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyButton:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0900a4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TextureVideoView;

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0900a3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyIndicator:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

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

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a1

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/16 v3, 0xc8

    if-eq p1, v0, :cond_4

    const v0, 0x7f0900b5

    if-eq p1, v0, :cond_2

    const v0, 0x7f0900c3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mModeSelectedListener:Lcom/android/camera/fragment/clone/ModeSelectedListener;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-interface {p1, v0}, Lcom/android/camera/fragment/clone/ModeSelectedListener;->onModeSelected(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->unSelectCopyButton()V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoButton:Landroid/widget/ImageView;

    const-string v1, "clone_video_mode.mp4"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->startPlay(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;Landroid/widget/ImageView;)V

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoIndicator:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mSelectedMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {p1}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->setAccessibility(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mModeSelectedListener:Lcom/android/camera/fragment/clone/ModeSelectedListener;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-interface {p1, v0}, Lcom/android/camera/fragment/clone/ModeSelectedListener;->onModeSelected(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    :cond_3
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoIndicator:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->unSelectVideoButton()V

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->unSelectCopyButton()V

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mModeSelectedListener:Lcom/android/camera/fragment/clone/ModeSelectedListener;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-interface {p1, v0}, Lcom/android/camera/fragment/clone/ModeSelectedListener;->onModeSelected(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->unSelectVideoButton()V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyButton:Landroid/widget/ImageView;

    const-string v4, "clone_copy_mode.mp4"

    invoke-direct {p0, p1, v4, v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->startPlay(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;Landroid/widget/ImageView;)V

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyIndicator:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    :goto_0
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mSelectedMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {p1}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->setAccessibility(Z)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000o000()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mIsSupportCloneCopyMode:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mModeSelectedListener:Lcom/android/camera/fragment/clone/ModeSelectedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/fragment/clone/ModeSelectedListener;->onModeReady()V

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$2;->$SwitchMap$com$xiaomi$fenshen$FenShenCam$Mode:[I

    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyLayout:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoLayout:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mPhotoLayout:Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mVideoVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->stopPlay(Lcom/android/camera/ui/TextureVideoView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mCopyVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->stopPlay(Lcom/android/camera/ui/TextureVideoView;)V

    :cond_1
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p2, 0xd2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->hide()V

    :cond_0
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa2

    aput v0, p0, p1

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x1a0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public show(I)V
    .locals 0

    return-void
.end method

.method public startShot()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mSelectedMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/4 v1, 0x0

    const-string v2, "FragmentCloneGallery"

    if-nez v0, :cond_0

    const-string p0, "startShot ignore, mSelectedMode is null"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa4

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_1

    const-string p0, "startShot ignore, configChanges is null"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mSelectedMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v1, v2, :cond_2

    const-string v1, "value_clone_click_start_photo"

    goto :goto_0

    :cond_2
    const-string v1, "value_clone_click_start_video"

    :goto_0
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->mSelectedMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configClone(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    return v1
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x1a0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
