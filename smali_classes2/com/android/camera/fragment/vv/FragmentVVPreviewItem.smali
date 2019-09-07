.class public Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;
.super Lcom/android/camera/fragment/BaseViewPagerFragment;
.source "FragmentVVPreviewItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mFirstPreviewItem:Z

.field private mGlideOptions:Lcom/bumptech/glide/request/f;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIndex:I

.field private mIsPlaying:Z

.field private mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field private mTransitionHide:Z

.field private mVVItem:Lcom/android/camera/fragment/vv/VVItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->startPlay()V

    return-void
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 1

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "%.1f"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f090174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090172

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09017b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/TextureVideoView;

    iput-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const v2, 0x7f090173

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageWidth:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageHeight:I

    if-lez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageWidth:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageHeight:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageWidth:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mImageHeight:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    new-instance p1, Lcom/bumptech/glide/request/f;

    invoke-direct {p1}, Lcom/bumptech/glide/request/f;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/f;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/f;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/request/f;->q(Z)Lcom/bumptech/glide/request/f;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/f;

    sget-object v4, Lcom/bumptech/glide/load/engine/o;->NONE:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->i(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v4, v4, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/m;->load(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mGlideOptions:Lcom/bumptech/glide/request/f;

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f03ba

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v6, v5, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-virtual {v5}, Lcom/android/camera/fragment/vv/VVItem;->getEssentialFragmentSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v3}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->getDurationString(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startPlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
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

.method private stopPlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mIsPlaying:Z

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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->onViewCreatedAndJumpOut()V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0b0046

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->stopPlay()V

    return-void
.end method

.method protected onViewCreatedAndJumpOut()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->stopPlay()V

    return-void
.end method

.method protected onViewCreatedAndVisibleToUser(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mFirstPreviewItem:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/TextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->startPlay()V

    :goto_0
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
