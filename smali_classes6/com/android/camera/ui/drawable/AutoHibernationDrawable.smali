.class public Lcom/android/camera/ui/drawable/AutoHibernationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field private static ALPHA_HINT:I = 0x66

.field private static ALPHA_OUTSTANDING:I = 0xff


# instance fields
.field public mBaseRadius:F

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field mIsClockwise:Z

.field private mLastDrawAlpha:I

.field private mLineHeight:F

.field private mLineWidth:F

.field public mMiddleX:F

.field public mMiddleY:F

.field private mOnce:Z

.field public mPaint:Landroid/graphics/Paint;

.field private mPreTimeAnimator:Landroid/animation/ValueAnimator;

.field private mStart:F

.field public mTimeAngle:F

.field private mTimeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->ALPHA_OUTSTANDING:I

    iput v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLastDrawAlpha:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mDuration:J

    iput v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mStart:F

    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    iput-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLineWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700e5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLineHeight:F

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLineWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    return p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mBaseRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xb4

    if-ge v1, v4, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    :goto_1
    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleX:F

    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleY:F

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    sget v4, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->ALPHA_OUTSTANDING:I

    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    sget v4, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->ALPHA_HINT:I

    :goto_2
    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    const/high16 v6, 0x43af0000    # 350.0f

    cmpl-float v6, v5, v6

    const v7, 0x43b18000    # 355.0f

    if-lez v6, :cond_3

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iput v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLastDrawAlpha:I

    :cond_3
    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLastDrawAlpha:I

    goto :goto_3

    :cond_4
    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    if-eqz v5, :cond_5

    sget v4, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->ALPHA_HINT:I

    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v9, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleX:F

    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleY:F

    sub-float v8, v4, v0

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLineHeight:F

    add-float v10, v4, v5

    iget-object v11, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setWidthHeight(FF)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    iput v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleX:F

    div-float v1, p2, v0

    iput v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleY:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mBaseRadius:F

    return-void
.end method

.method public startRecord(JFZ)V
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mDuration:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mStart:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->cancelAnimation()V

    :cond_2
    iput-wide p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mDuration:J

    iput p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mStart:F

    iput-boolean p4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$1;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p4, :cond_3

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    :goto_1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method public startRecordForFastmotion(IFZ)V
    .locals 3

    iput-boolean p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    iput p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v2, p2, v1

    aput v2, v0, p3

    const/4 p3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, p3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    sub-float p2, v1, p2

    div-float/2addr p2, v1

    int-to-float v0, p1

    mul-float/2addr p2, v0

    float-to-long v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$3;

    invoke-direct {p3, p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$3;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
