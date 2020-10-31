.class public Lmiui/animation/utils/EaseManager;
.super Ljava/lang/Object;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/utils/EaseManager$SpringInterpolator;,
        Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;,
        Lmiui/animation/utils/EaseManager$EaseStyle;,
        Lmiui/animation/utils/EaseManager$EaseStyleDef;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .registers 4

    invoke-static {p0, p1}, Lmiui/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    return-object v1
.end method

.method public static getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;
    .registers 4

    if-eqz p0, :cond_a5

    iget v0, p0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->style:I

    packed-switch v0, :pswitch_data_a8

    goto/16 :goto_a5

    :pswitch_9
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    :pswitch_f
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    :pswitch_15
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    :pswitch_1b
    new-instance v0, Lmiui/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    return-object v0

    :pswitch_21
    new-instance v0, Lmiui/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object v0

    :pswitch_27
    new-instance v0, Lmiui/view/animation/ExponentialEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/ExponentialEaseInInterpolator;-><init>()V

    return-object v0

    :pswitch_2d
    new-instance v0, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    return-object v0

    :pswitch_33
    new-instance v0, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    return-object v0

    :pswitch_39
    new-instance v0, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    return-object v0

    :pswitch_3f
    new-instance v0, Lmiui/view/animation/QuinticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuinticEaseInOutInterpolator;-><init>()V

    return-object v0

    :pswitch_45
    new-instance v0, Lmiui/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuinticEaseOutInterpolator;-><init>()V

    return-object v0

    :pswitch_4b
    new-instance v0, Lmiui/view/animation/QuinticEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuinticEaseInInterpolator;-><init>()V

    return-object v0

    :pswitch_51
    new-instance v0, Lmiui/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    return-object v0

    :pswitch_57
    new-instance v0, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    return-object v0

    :pswitch_5d
    new-instance v0, Lmiui/view/animation/QuarticEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuarticEaseInInterpolator;-><init>()V

    return-object v0

    :pswitch_63
    new-instance v0, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    return-object v0

    :pswitch_69
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object v0

    :pswitch_6f
    new-instance v0, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    return-object v0

    :pswitch_75
    new-instance v0, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    return-object v0

    :pswitch_7b
    new-instance v0, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    return-object v0

    :pswitch_81
    new-instance v0, Lmiui/view/animation/QuadraticEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseInInterpolator;-><init>()V

    return-object v0

    :pswitch_87
    new-instance v0, Lmiui/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v0}, Lmiui/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    iget-object v1, p0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->factors:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiui/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->factors:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiui/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    return-object v0

    :pswitch_9f
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v0

    :cond_a5
    :goto_a5
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_a8
    .packed-switch -0x1
        :pswitch_9f
        :pswitch_87
        :pswitch_9f
        :pswitch_81
        :pswitch_7b
        :pswitch_75
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_5d
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1b
        :pswitch_15
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method private static varargs getInterpolatorStyle(I[F)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;
    .registers 3

    new-instance v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-direct {v0, p0}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I)V

    invoke-virtual {v0, p1}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object v0
.end method

.method public static varargs getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;
    .registers 7

    const/4 v0, -0x1

    if-lt p0, v0, :cond_1f

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_e

    array-length v0, p1

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    goto :goto_10

    :cond_e
    new-array v0, v1, [F

    :goto_10
    invoke-static {p0, v0}, Lmiui/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object v2

    array-length v3, p1

    if-lez v3, :cond_1e

    aget v1, p1, v1

    float-to-int v1, v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    :cond_1e
    return-object v2

    :cond_1f
    new-instance v0, Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-direct {v0, p0}, Lmiui/animation/utils/EaseManager$EaseStyle;-><init>(I)V

    invoke-virtual {v0, p1}, Lmiui/animation/utils/EaseManager$EaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object v0
.end method

.method public static isPhysicsStyle(I)Z
    .registers 2

    const/4 v0, -0x1

    if-ge p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method
