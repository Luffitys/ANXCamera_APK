.class Lmiui/app/transition/ExitFade;
.super Lmiui/app/transition/PhysicalFade;
.source ""


# static fields
.field private static final DEFAULT_EXIT_END_ALPHA:F = 0.0f

.field private static final DEFAULT_ZOOMLESS_SCALE:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/transition/PhysicalFade;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    sget p3, Lmiui/R$id;->fragment_bottom:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lmiui/app/transition/ViewCompat;->createTransitionAlphaAnim(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/transition/Fade;->getDuration()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/transition/Fade;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x0

    return-object p0
.end method
