.class public Lmiui/slide/SlideAnimationView;
.super Landroid/view/View;
.source "SlideAnimationView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SlideAnimationView"

.field public static final TYPE_ANIMATION_DOWN:I = 0x1

.field public static final TYPE_ANIMATION_TIP:I = 0x2

.field public static final TYPE_ANIMATION_UP:I = 0x0

.field public static final TYPE_BITMAP_SIDE:I = 0x1

.field public static final TYPE_BITMAP_TOP:I


# instance fields
.field private mEdgeAlpha:F

.field private mEdgeColor:Landroid/graphics/Bitmap;

.field private mEdgeColorAlpha:F

.field private mEdgeLeft:Landroid/graphics/Bitmap;

.field private mEdgeLeftOri:Landroid/graphics/Bitmap;

.field private mEdgeRight:Landroid/graphics/Bitmap;

.field private mEdgeRightOri:Landroid/graphics/Bitmap;

.field private mEdgeScaleX:F

.field private mEdgeY:F

.field private mFlowingAnimator:Landroid/animation/ValueAnimator;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mTop:Landroid/graphics/Bitmap;

.field private mTopAlpha:F

.field private mTopOri:Landroid/graphics/Bitmap;

.field private mTopScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/slide/SlideAnimationView;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lmiui/slide/SlideAnimationView;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/slide/SlideAnimationView;)F
    .registers 2

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mTopAlpha:F

    return v0
.end method

.method static synthetic access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/slide/SlideAnimationView;F)F
    .registers 2

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mTopAlpha:F

    return p1
.end method

.method static synthetic access$1102(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lmiui/slide/SlideAnimationView;)F
    .registers 2

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F

    return v0
.end method

.method static synthetic access$1402(Lmiui/slide/SlideAnimationView;F)F
    .registers 2

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F

    return p1
.end method

.method static synthetic access$200(Lmiui/slide/SlideAnimationView;IIIII)F
    .registers 7

    invoke-direct/range {p0 .. p5}, Lmiui/slide/SlideAnimationView;->rangeAlpha(IIIII)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lmiui/slide/SlideAnimationView;)F
    .registers 2

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mTopScaleY:F

    return v0
.end method

.method static synthetic access$302(Lmiui/slide/SlideAnimationView;F)F
    .registers 2

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mTopScaleY:F

    return p1
.end method

.method static synthetic access$400(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$702(Lmiui/slide/SlideAnimationView;F)F
    .registers 2

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeY:F

    return p1
.end method

.method static synthetic access$800(Lmiui/slide/SlideAnimationView;)F
    .registers 2

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F

    return v0
.end method

.method static synthetic access$802(Lmiui/slide/SlideAnimationView;F)F
    .registers 2

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F

    return p1
.end method

.method static synthetic access$900(Lmiui/slide/SlideAnimationView;)F
    .registers 2

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F

    return v0
.end method

.method static synthetic access$902(Lmiui/slide/SlideAnimationView;F)F
    .registers 2

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F

    return p1
.end method

.method private getNavigationBarHeight()I
    .registers 5

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method private rangeAlpha(IIIII)F
    .registers 9

    if-ge p1, p3, :cond_a

    sub-int v0, p1, p2

    int-to-float v0, v0

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_19

    :cond_a
    if-lt p1, p4, :cond_17

    const/high16 v0, 0x3f800000    # 1.0f

    sub-int v1, p1, p4

    int-to-float v1, v1

    sub-int v2, p5, p4

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_19

    :cond_17
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_19
    return v0
.end method


# virtual methods
.method public getDisplayHeight()I
    .registers 5

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lmiui/slide/SlideAnimationView;->getNavigationBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getDisplayWidth()I
    .registers 4

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public isPortrait()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_68

    :try_start_9
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/slide/SlideAnimationView;->mTopAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_20
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    iget v3, p0, Lmiui/slide/SlideAnimationView;->mEdgeY:F

    iget-object v4, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_36
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getDisplayWidth()I

    move-result v3

    iget-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeY:F

    iget-object v5, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4f
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_63} :catch_64

    :cond_63
    goto :goto_68

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_68
    :goto_68
    return-void
.end method

.method public reset()V
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiui/slide/SlideAnimationView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBitmap()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070188

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070189

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1107018a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070187

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_6a

    if-eqz v0, :cond_54

    :try_start_4e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_54

    :catch_52
    move-exception v4

    goto :goto_64

    :cond_54
    :goto_54
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_59
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5e
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_63} :catch_52

    goto :goto_68

    :goto_64
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    :cond_68
    :goto_68
    nop

    :goto_69
    return-void

    :catchall_6a
    move-exception v4

    if-eqz v0, :cond_73

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_73

    :catch_71
    move-exception v5

    goto :goto_83

    :cond_73
    :goto_73
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_78
    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7d
    if-eqz v3, :cond_87

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_82} :catch_71

    goto :goto_87

    :goto_83
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    :cond_87
    :goto_87
    nop

    :goto_88
    throw v4
.end method

.method public startAnimating(I)V
    .registers 5

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/slide/SlideAnimationView;->setVisibility(I)V

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->setBitmap()V

    const/4 v0, 0x2

    if-eqz p1, :cond_2f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    goto :goto_4a

    :cond_14
    new-array v0, v0, [I

    fill-array-data v0, :array_64

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4a

    :cond_2f
    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    nop

    :goto_4a
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/slide/SlideAnimationView$1;

    invoke-direct {v1, p0, p1}, Lmiui/slide/SlideAnimationView$1;-><init>(Lmiui/slide/SlideAnimationView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/slide/SlideAnimationView$2;

    invoke-direct {v1, p0}, Lmiui/slide/SlideAnimationView$2;-><init>(Lmiui/slide/SlideAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_63
    return-void

    :array_64
    .array-data 4
        0x870
        0x0
    .end array-data

    :array_6c
    .array-data 4
        0x0
        0x870
    .end array-data
.end method

.method public stopAnimator()V
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method
