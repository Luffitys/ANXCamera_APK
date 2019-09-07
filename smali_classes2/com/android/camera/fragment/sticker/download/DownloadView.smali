.class public Lcom/android/camera/fragment/sticker/download/DownloadView;
.super Landroid/widget/RelativeLayout;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/sticker/download/DownloadView$OnDownloadSuccessListener;,
        Lcom/android/camera/fragment/sticker/download/DownloadView$MyAnimalListener;
    }
.end annotation


# static fields
.field private static final ALPHA_MIN:F = 0.0f

.field private static final ALPHA_NORMAL:F = 1.0f

.field private static final ANIMAL_APPEAR_TIME:I = 0x15e

.field private static final ANIMAL_DISAPPEAR_TIME:I = 0xfa

.field private static final ANIMAL_ROTATION_TIME:I = 0x3e8

.field private static final SCALE_MIN:F = 0.6f

.field private static final SCALE_NORMAL:F = 1.0f


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mListener:Lcom/android/camera/fragment/sticker/download/DownloadView$OnDownloadSuccessListener;

.field private mRotationAnimal:Landroid/animation/ObjectAnimator;

.field protected mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->initView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/sticker/download/DownloadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->doDownloading()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/sticker/download/DownloadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->rotation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/sticker/download/DownloadView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/sticker/download/DownloadView;)Lcom/android/camera/fragment/sticker/download/DownloadView$OnDownloadSuccessListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mListener:Lcom/android/camera/fragment/sticker/download/DownloadView$OnDownloadSuccessListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/sticker/download/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/sticker/download/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/sticker/download/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/sticker/download/DownloadView;->show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doDownloading()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->getStateImageResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/sticker/download/DownloadView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/download/DownloadView$2;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->getAlphaNormal()F

    move-result p0

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    const/4 v3, 0x0

    aput v3, v1, p0

    const-string v3, "alpha"

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v2

    aput-object v3, v5, p0

    aput-object v4, v5, v0

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0xfa

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private initView()V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method private rotation()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->getAlphaNormal()F

    move-result p0

    const/4 v3, 0x1

    aput p0, v1, v3

    const-string p0, "alpha"

    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v4, "scaleX"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v0

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->getAlphaNormal()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    return-void
.end method

.method public endDownloading()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/sticker/download/DownloadView$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/download/DownloadView$3;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected getAlphaNormal()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected getStateImageResource(I)I
    .locals 1

    const p0, 0x7f08019e

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0

    :cond_1
    const p0, 0x7f08019f

    return p0

    :cond_2
    const p0, 0x7f0801a0

    :cond_3
    return p0
.end method

.method public setOnDownloadSuccessListener(Lcom/android/camera/fragment/sticker/download/DownloadView$OnDownloadSuccessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mListener:Lcom/android/camera/fragment/sticker/download/DownloadView$OnDownloadSuccessListener;

    return-void
.end method

.method public setStateImage(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mState:I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->getStateImageResource(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->endDownloading()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->doDownloading()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->getStateImageResource(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public startDownload()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/download/DownloadView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/download/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/sticker/download/DownloadView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/download/DownloadView$1;-><init>(Lcom/android/camera/fragment/sticker/download/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/sticker/download/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
