.class public abstract Lcom/android/camera/animation/type/BaseOnSubScribe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mAniView:Landroid/view/View;

.field protected mDurationTime:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field protected mStartDelayTime:I

.field protected mTargetGone:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    iput-object p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    return-void
.end method

.method public static final setAnimateViewVisible(Landroid/view/View;I)V
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getAnimation()Landroidx/core/view/ViewPropertyAnimatorCompat;
.end method

.method protected onAnimationEnd()V
    .locals 0

    return-void
.end method

.method public setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mStartDelayTime:I

    return-object p0
.end method

.method public final startAnimationImmediately()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->getAnimation()Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mStartDelayTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/animation/AnimationDelegate;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/animation/type/BaseOnSubScribe$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe$1;-><init>(Lcom/android/camera/animation/type/BaseOnSubScribe;Lio/reactivex/CompletableEmitter;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mTargetGone:Z

    return-object p0
.end method
