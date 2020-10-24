.class public Lmiui/animation/utils/EaseManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_DURATION:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .locals 0

    invoke-static {p0, p1}, Lmiui/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    invoke-static {p0}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;
    .locals 3

    if-eqz p0, :cond_0

    iget v0, p0, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lmiui/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lmiui/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lmiui/view/animation/ExponentialEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/ExponentialEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lmiui/view/animation/QuinticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuinticEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lmiui/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuinticEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lmiui/view/animation/QuinticEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuinticEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, Lmiui/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lmiui/view/animation/QuarticEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuarticEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_10
    new-instance p0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_11
    new-instance p0, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_12
    new-instance p0, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_13
    new-instance p0, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_14
    new-instance p0, Lmiui/view/animation/QuadraticEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuadraticEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_15
    new-instance v0, Lmiui/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v0}, Lmiui/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    iget-object v1, p0, Lmiui/animation/utils/EaseManager$EaseStyle;->factors:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiui/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    iget-object p0, p0, Lmiui/animation/utils/EaseManager$EaseStyle;->factors:[F

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Lmiui/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiui/animation/utils/EaseManager$SpringInterpolator;

    move-result-object p0

    return-object p0

    :pswitch_16
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs getInterpolatorStyle(I[F)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;
    .locals 1

    new-instance v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-direct {v0, p0}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I)V

    invoke-virtual {v0, p1}, Lmiui/animation/utils/EaseManager$EaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object v0
.end method

.method public static varargs getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;
    .locals 3

    const/4 v0, -0x1

    if-lt p0, v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    array-length v0, p1

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [F

    :goto_0
    invoke-static {p0, v0}, Lmiui/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    array-length v0, p1

    if-lez v0, :cond_1

    aget p1, p1, v1

    float-to-int p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-direct {v0, p0}, Lmiui/animation/utils/EaseManager$EaseStyle;-><init>(I)V

    invoke-virtual {v0, p1}, Lmiui/animation/utils/EaseManager$EaseStyle;->setFactors([F)Lmiui/animation/utils/EaseManager$EaseStyle;

    return-object v0
.end method

.method public static isPhysicsStyle(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
