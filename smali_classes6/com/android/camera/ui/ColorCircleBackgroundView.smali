.class public Lcom/android/camera/ui/ColorCircleBackgroundView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final BACKGROUND_COLOR:[I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCurrentStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/ColorCircleBackgroundView;->BACKGROUND_COLOR:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x26ffffff
        -0x31ea
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/camera/ui/ColorCircleBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/ui/ColorCircleBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/ColorCircleBackgroundView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ColorCircleBackgroundView;)Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ColorCircleBackgroundView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ColorCircleBackgroundView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ColorCircleBackgroundView;->getBackgroundColor(I)I

    move-result p0

    return p0
.end method

.method private getBackgroundColor(I)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->BACKGROUND_COLOR:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ColorCircleBackgroundView;->getBackgroundColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method private toggle(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mCurrentStatus:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ColorCircleBackgroundView;->getBackgroundColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ColorCircleBackgroundView;->getBackgroundColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/ui/ColorCircleBackgroundView$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/camera/ui/ColorCircleBackgroundView$1;-><init>(Lcom/android/camera/ui/ColorCircleBackgroundView;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/ColorCircleBackgroundView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/ColorCircleBackgroundView$2;-><init>(Lcom/android/camera/ui/ColorCircleBackgroundView;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public isSwitchOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mCurrentStatus:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setSwitchOn(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mCurrentStatus:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView;->mCurrentStatus:Z

    invoke-direct {p0, p2}, Lcom/android/camera/ui/ColorCircleBackgroundView;->toggle(Z)V

    return-void
.end method
