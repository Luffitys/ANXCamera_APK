.class public Lcom/android/camera/ui/ColorCircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# static fields
.field private static final BACKGROUND_COLOR:[I

.field private static final ICON_COLOR:[I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCurrentStatus:Z

.field private mIconPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/ui/ColorCircleImageView;->BACKGROUND_COLOR:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/ColorCircleImageView;->ICON_COLOR:[I

    return-void

    :array_0
    .array-data 4
        0x26ffffff
        -0x31ea
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/camera/ui/ColorCircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/ui/ColorCircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/ColorCircleImageView;->init()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ColorCircleImageView;->ICON_COLOR:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ColorCircleImageView;)Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ColorCircleImageView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mIconPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ColorCircleImageView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ColorCircleImageView;->getBackgroundColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ColorCircleImageView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private getBackgroundColor(I)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/camera/ui/ColorCircleImageView;->BACKGROUND_COLOR:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mIconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mIconPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/camera/ui/ColorCircleImageView;->ICON_COLOR:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ColorCircleImageView;->getBackgroundColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ColorCircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/ColorCircleImageView;->mCurrentStatus:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ColorCircleImageView;->toggle(Z)V

    return-void
.end method

.method public toggle(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mCurrentStatus:Z

    xor-int/lit8 v1, v0, 0x1

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mCurrentStatus:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleImageView;->mIconPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/camera/ui/ColorCircleImageView;->ICON_COLOR:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ColorCircleImageView;->getBackgroundColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/ColorCircleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/ColorCircleImageView$1;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ColorCircleImageView$1;-><init>(Lcom/android/camera/ui/ColorCircleImageView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/ColorCircleImageView$2;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ColorCircleImageView$2;-><init>(Lcom/android/camera/ui/ColorCircleImageView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
