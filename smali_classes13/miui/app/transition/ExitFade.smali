.class Lmiui/app/transition/ExitFade;
.super Lmiui/app/transition/PhysicalFade;
.source "ExitFade.java"


# static fields
.field private static final DEFAULT_EXIT_END_ALPHA:F = 0.0f

.field private static final DEFAULT_ZOOMLESS_SCALE:F = 1.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/app/transition/PhysicalFade;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lmiui/R$id;->fragment_bottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lmiui/app/transition/ViewCompat;->createTransitionAlphaAnim(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/app/transition/ExitFade;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lmiui/app/transition/ExitFade;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    const/4 v4, 0x0

    return-object v4
.end method
