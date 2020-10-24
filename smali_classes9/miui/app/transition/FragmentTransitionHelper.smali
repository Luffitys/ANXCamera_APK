.class Lmiui/app/transition/FragmentTransitionHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_APP_TRANSITION_ROUND_CORNER_RADIUS:I = 0x3c

.field public static final DEFAULT_FRAGMENT_TRANSITION_DUR:I = 0x15e

.field public static final PHYSIC_BASED_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static STYLE:Lmiui/animation/utils/EaseManager$InterpolateEaseStyle; = null

.field private static final TAG:Ljava/lang/String; = "FragmentTransition"

.field private static mTopRoundedCorner:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I)V

    sput-object v0, Lmiui/app/transition/FragmentTransitionHelper;->STYLE:Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lmiui/animation/utils/EaseManager$EaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    sget-object v0, Lmiui/app/transition/FragmentTransitionHelper;->STYLE:Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lmiui/app/transition/FragmentTransitionHelper;->PHYSIC_BASED_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const/4 v0, -0x1

    sput v0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f5b645a    # 0.857f
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmiui/app/transition/FragmentTransitionHelper;->initDisplayTopRoundCorner(Landroid/content/Context;)V

    return-void
.end method

.method private static initDisplayTopRoundCorner(Landroid/content/Context;)V
    .locals 4

    sget v0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "rounded_corner_radius_top"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    const/16 v0, 0x3c

    const-string p0, "FragmentTransition"

    const-string v1, "top radius:use default round corner Radius"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput v0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getBottomRoundedCorner()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTopRoundedCorner()I
    .locals 0

    sget p0, Lmiui/app/transition/FragmentTransitionHelper;->mTopRoundedCorner:I

    return p0
.end method
