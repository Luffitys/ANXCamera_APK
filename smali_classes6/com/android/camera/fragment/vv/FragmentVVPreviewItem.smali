.class public Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;
.super Lcom/android/camera/fragment/BaseViewPagerFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mFirstPreviewItem:Z

.field private mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIndex:I

.field private mIsPlaying:Z

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mPreviewProgressBar:Landroid/widget/ProgressBar;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

.field private mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field private mTransitionHide:Z

.field private mVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVisible:Z

    return p0
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 1

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "%02d"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0903bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0903bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0903c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/TextureVideoView;

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const v1, 0x7f0903c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0903c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0903be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageWidth:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageHeight:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageWidth:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageWidth:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->handleDownloadStateChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f10074b

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v6, v5, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    aput-object v6, v4, v2

    invoke-virtual {v5}, Lcom/android/camera/fragment/vv/VVItem;->getEssentialFragmentSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->getDurationString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private pausePlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->pause()V

    return-void
.end method

.method private resumePlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->resume()V

    return-void
.end method


# virtual methods
.method public getVVItem()Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object p0
.end method

.method public handleDownloadStateChanged(Z)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->placeholder:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v3, v3, Lcom/android/camera/fragment/vv/VVItem;->iconUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v3, v3, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->OoooO0(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->Oooo00o()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;Z)V

    invoke-static {v0, v1}, Lcom/android/camera/animation/FolmeUtils;->animateShrink(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f10032b

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f08035b

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mPreviewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903bd

    if-eq v0, v1, :cond_0

    const v1, 0x7f0903bf

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->stopPlay()V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0c00a5

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->stopPlay()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->startPlay()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->stopPlay()V

    return-void
.end method

.method protected onViewCreatedAndJumpOut()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVisible:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->stopPlay()V

    return-void
.end method

.method protected onViewCreatedAndVisibleToUser(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVisible:Z

    iget-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mFirstPreviewItem:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mFirstPreviewItem:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->startPlay()V

    return-void
.end method

.method public setData(ILcom/android/camera/fragment/vv/VVItem;IILandroid/view/View$OnClickListener;I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIndex:I

    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iput p3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageWidth:I

    iput p4, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageHeight:I

    iput-object p5, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mClickListener:Landroid/view/View$OnClickListener;

    sub-int p2, p1, p6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTransitionHide:Z

    if-ne p1, p6, :cond_1

    move p3, p4

    :cond_1
    iput-boolean p3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mFirstPreviewItem:Z

    return-void
.end method

.method public startPlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v1, v1, Lcom/android/camera/fragment/vv/VVItem;->previewVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->start(J)V

    return-void
.end method

.method public stopPlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method
