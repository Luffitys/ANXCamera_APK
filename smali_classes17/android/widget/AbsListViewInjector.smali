.class public Landroid/widget/AbsListViewInjector;
.super Ljava/lang/Object;
.source "AbsListViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewInjector$DummyEdgeEffect;
    }
.end annotation


# static fields
.field private static final MINIMUM_VELOCITY_IN_DP:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "AbsListViewInjector"

.field private static final mMinimumVelocity:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mMinimumVelocity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception v0

    const-string v1, "AbsListViewInjector"

    const-string/jumbo v2, "reflect mMinimumVelocity, skip"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move-object v0, v1

    :goto_18
    sput-object v0, Landroid/widget/AbsListViewInjector;->mMinimumVelocity:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doAnimationFrame(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OverFlingRunnable;)V
    .registers 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_98

    iget-object v12, v11, Landroid/widget/AbsListView$OverFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    sub-int v0, v14, v13

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    move v15, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "overfling scrollY: %d, currY: %d, springBack: %b"

    invoke-static {v2, v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v13, :cond_47

    if-eqz v15, :cond_68

    :cond_47
    if-nez v15, :cond_54

    invoke-static {v14}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    mul-int/2addr v1, v13

    if-gez v1, :cond_54

    neg-int v0, v13

    move/from16 v16, v0

    goto :goto_56

    :cond_54
    move/from16 v16, v0

    :goto_56
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v10, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v4, v13

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move/from16 v0, v16

    :cond_68
    if-nez v15, :cond_87

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_87

    const-string/jumbo v1, "scrollY fully consumed, do normal fling"

    invoke-static {v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    mul-int/2addr v1, v2

    invoke-virtual {v12}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v11, v1}, Landroid/widget/AbsListView$OverFlingRunnable;->start(I)V

    goto :goto_8d

    :cond_87
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_8d
    goto :goto_97

    :cond_8e
    const-string/jumbo v0, "overfling finish."

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView$OverFlingRunnable;->endFling()V

    :goto_97
    goto :goto_9b

    :cond_98
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView$OverFlingRunnable;->superDoAnimationFrame()V

    :goto_9b
    return-void
.end method

.method private static isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mUsingMiuiTheme:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static needFinishActionMode(Landroid/widget/AbsListView;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static onInit(Landroid/widget/AbsListView;)V
    .registers 4

    iget v0, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iput v0, p0, Landroid/widget/AbsListView;->mDefaultOverscrollDistance:I

    iget v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    iput v0, p0, Landroid/widget/AbsListView;->mDefaultOverflingDistance:I

    nop

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Landroid/widget/AbsListViewInjector;->setMinimumVelocity(Landroid/widget/AbsListView;I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mUsingMiuiTheme:Z

    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->setupSpring(Landroid/widget/AbsListView;)V

    :cond_2f
    return-void
.end method

.method static onLayout(Landroid/widget/AbsListView;ZIIII)V
    .registers 7

    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_e

    sub-int v0, p5, p3

    iput v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    sub-int v0, p5, p3

    iput v0, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    :cond_e
    return-void
.end method

.method static overScrollBy(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 23

    move/from16 v10, p8

    if-eqz p9, :cond_24

    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v10, :cond_17

    mul-int v1, v0, v10

    goto :goto_19

    :cond_17
    move/from16 v1, p4

    :goto_19
    invoke-static {v1, v10}, Landroid/widget/AbsListViewInjector;->overScrollWeight(II)F

    move-result v2

    move v3, p2

    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v3, v4

    move v12, v1

    move v11, v3

    goto :goto_28

    :cond_24
    move v3, p2

    move/from16 v12, p4

    move v11, v3

    :goto_28
    move-object v0, p0

    move v1, p1

    move v2, v11

    move/from16 v3, p3

    move v4, v12

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->superOverScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method private static overScrollWeight(II)F
    .registers 7

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    neg-double v1, v1

    double-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float v2, v1, v2

    return v2
.end method

.method private static setMinimumVelocity(Landroid/widget/AbsListView;I)V
    .registers 5

    sget-object v0, Landroid/widget/AbsListViewInjector;->mMinimumVelocity:Ljava/lang/reflect/Field;

    const-string v1, "AbsListViewInjector"

    if-eqz v0, :cond_16

    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    move-exception v0

    const-string/jumbo v2, "set mMinimumVelocity failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    goto :goto_1c

    :cond_16
    const-string/jumbo v0, "no mMinimumVelocity field, skipping"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method

.method private static setupSpring(Landroid/widget/AbsListView;)V
    .registers 3

    new-instance v0, Landroid/widget/AbsListView$OverFlingRunnable;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$OverFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    new-instance v0, Landroid/widget/AbsListViewInjector$DummyEdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AbsListViewInjector$DummyEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/AbsListViewInjector$DummyEdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AbsListViewInjector$DummyEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    :cond_38
    return-void
.end method

.method static startOverfling(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OverFlingRunnable;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/AbsListView$OverFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_24

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string/jumbo v3, "startOverfling: unknown direction, start normal fling with velocity %d"

    invoke-static {v3, v4}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Landroid/widget/AbsListView$OverFlingRunnable;->start(I)V

    return-void

    :cond_24
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->signum(I)I

    move-result v5

    mul-int/2addr v5, v2

    if-lez v5, :cond_54

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string/jumbo v3, "startOverfling: fling to boundary with velocity %d"

    invoke-static {v3, v4}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v0, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-static {v2, v3}, Landroid/widget/AbsListViewInjector;->overScrollWeight(II)F

    move-result v3

    iget-object v4, v1, Landroid/widget/AbsListView$OverFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v15, p2

    int-to-float v6, v15

    mul-float/2addr v6, v3

    float-to-int v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v0, Landroid/widget/AbsListView;->mOverflingDistance:I

    move v6, v2

    invoke-virtual/range {v4 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_8f

    :cond_54
    move/from16 v15, p2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const-string/jumbo v3, "startOverfling: fling to content with velocity %d, current scrollY %d"

    invoke-static {v3, v5}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v2, :cond_77

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_7d

    :cond_77
    const/4 v3, 0x0

    const v4, 0x7fffffff

    move/from16 v16, v4

    :goto_7d
    iget-object v4, v1, Landroid/widget/AbsListView$OverFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    iget v14, v0, Landroid/widget/AbsListView;->mOverflingDistance:I

    move v6, v2

    move/from16 v8, p2

    move v11, v3

    move/from16 v12, v16

    invoke-virtual/range {v4 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :goto_8f
    const/4 v3, 0x6

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
