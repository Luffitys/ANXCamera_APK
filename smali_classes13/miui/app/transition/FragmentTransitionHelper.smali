.class Lmiui/app/transition/FragmentTransitionHelper;
.super Ljava/lang/Object;
.source "FragmentTransitionHelper.java"


# static fields
.field private static final DEFAULT_APP_TRANSITION_ROUND_CORNER_RADIUS:I = 0x3c

.field public static final DEFAULT_FRAGMENT_TRANSITION_DUR:I = 0x15e

.field public static final PHYSIC_BASED_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static STYLE:Lmiui/animation/utils/EaseManager$InterpolateEaseStyle; = null

.field private static final TAG:Ljava/lang/String; = "FragmentTransition"

.field private static mTopRoundedCorner:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I)V

    sput-object v0, Lmiui/app/transition/FragmentTransitionHelper;->STYLE:Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1e

    invoke-virtual {v0, v1}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    sget-object v0, Lmiui/app/transition/FragmentTransitionHelper;->STYLE:Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lmiui/app/transition/FragmentTransitionHelper;->PHYSIC_BASED_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const/4 v0, -0x1

    sput v0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    return-void

    nop

    :array_1e
    .array-data 4
        0x3f666666    # 0.9f
        0x3f5b645a    # 0.857f
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmiui/app/transition/FragmentTransitionHelper;->initDisplayTopRoundCorner(Landroid/content/Context;)V

    return-void
.end method

.method private static initDisplayTopRoundCorner(Landroid/content/Context;)V
    .registers 6

    sget v0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    if-gez v0, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "rounded_corner_radius_top"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_19
    if-gez v0, :cond_24

    const/16 v0, 0x3c

    const-string v3, "FragmentTransition"

    const-string v4, "top radius:use default round corner Radius"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    sput v0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    :cond_26
    return-void
.end method


# virtual methods
.method public getBottomRoundedCorner()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTopRoundedCorner()I
    .registers 2

    sget v0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    return v0
.end method
