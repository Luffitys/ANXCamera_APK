.class public Lmiuix/overscroller/widget/OverScroller;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field public static final FLING_MODE:I = 0x1

.field private static SCROLL_BOOST_SS_ENABLE:Z

.field public static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;-><init>()V

    :cond_0
    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Lmiuix/overscroller/widget/OverScroller;->mFlywheel:Z

    new-instance p2, Lmiuix/overscroller/widget/DynamicScroller;

    invoke-direct {p2, p1}, Lmiuix/overscroller/widget/DynamicScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    new-instance p2, Lmiuix/overscroller/widget/DynamicScroller;

    invoke-direct {p2, p1}, Lmiuix/overscroller/widget/DynamicScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 6

    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    :cond_2
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    :cond_5
    :goto_0
    return v1
.end method

.method public extendDuration(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 12

    move-object v0, p0

    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller;->mFlywheel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    move/from16 v5, p4

    int-to-float v6, v5

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move/from16 v5, p4

    :cond_2
    move v2, v5

    move v5, v3

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    iget-object v3, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v6, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z

    move-result p0

    invoke-static {v0, p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getCurrVelocityX()F
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)F

    move-result p0

    return p0
.end method

.method public getCurrVelocityY()F
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)F

    move-result p0

    return p0
.end method

.method public final getCurrX()I
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final getCurrY()I
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final getDuration()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getFinalX()I
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final getFinalY()I
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    return p0
.end method

.method public final getStartX()I
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final getStartY()I
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final isFinished()Z
    .locals 1

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverScrolled()Z
    .locals 1

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$700(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$700(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;

    invoke-direct {p1}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;-><init>()V

    :cond_0
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p1

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p2, p5, p6}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiuix/overscroller/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p2, p4, p5}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
