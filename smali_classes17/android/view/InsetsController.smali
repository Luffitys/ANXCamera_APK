.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;,
        Landroid/view/InsetsController$Host;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_HIDE_MS:I = 0x154

.field private static final ANIMATION_DURATION_SHOW_MS:I = 0x113

.field private static final ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field private static final ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final ANIMATION_TYPE_HIDE:I = 0x1

.field public static final ANIMATION_TYPE_NONE:I = -0x1

.field public static final ANIMATION_TYPE_SHOW:I = 0x0

.field public static final ANIMATION_TYPE_USER:I = 0x2

.field static final DEBUG:Z = false

.field private static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field private static final SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SYSTEM_BARS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "InsetsController"

.field static final WARN:Z

.field private static sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimCallback:Ljava/lang/Runnable;

.field private mAnimCallbackScheduled:Z

.field private mAnimationsDisabled:Z

.field private mCaptionInsetsHeight:I

.field private final mConsumerCreator:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledUserAnimationInsetsTypes:I

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Landroid/view/InsetsController$Host;

.field private mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

.field private final mLastDispatchedState:Landroid/view/InsetsState;

.field private mLastDisplayCutout:Landroid/view/DisplayCutout;

.field private mLastInsets:Landroid/view/WindowInsets;

.field private mLastLegacySoftInputMode:I

.field private mLastLegacySystemUiFlags:I

.field private mLastLegacyWindowFlags:I

.field private mLastStartedAnimTypes:I

.field private mPendingControlTimeout:Ljava/lang/Runnable;

.field private mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final mRequestedState:Landroid/view/InsetsState;

.field private final mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingAnimation:Z

.field private final mState:Landroid/view/InsetsState;

.field private final mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFinishedControls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsAnimationControlImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRunningAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mTypesBeingCancelled:I

.field private final mUnmodifiableTmpRunningAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Landroid/view/-$$Lambda$InsetsController$Cj7UJrCkdHvJAZ_cYKrXuTMsjz8;->INSTANCE:Landroid/view/-$$Lambda$InsetsController$Cj7UJrCkdHvJAZ_cYKrXuTMsjz8;

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsController$Host;)V
    .registers 4

    sget-object v0, Landroid/view/-$$Lambda$InsetsController$RZT3QkL9zMFTeHtZbfcaHIzvlsc;->INSTANCE:Landroid/view/-$$Lambda$InsetsController$RZT3QkL9zMFTeHtZbfcaHIzvlsc;

    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedState:Landroid/view/InsetsState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpRunningAnims:Ljava/util/ArrayList;

    nop

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController;->mUnmodifiableTmpRunningAnims:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    new-instance v0, Landroid/view/-$$Lambda$InsetsController$6uoSHBPvxV1C0JOZKhH1AyuNXmo;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$InsetsController$6uoSHBPvxV1C0JOZKhH1AyuNXmo;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/-$$Lambda$InsetsController$QTmHZEUVF9HpffXawWFTRAOvEno;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$InsetsController$QTmHZEUVF9HpffXawWFTRAOvEno;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/-$$Lambda$InsetsController$zpmOxHfTFV_3me2u3C8YaXSUauQ;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$InsetsController$zpmOxHfTFV_3me2u3C8YaXSUauQ;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private abortPendingImeControlRequest()V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300()Landroid/animation/TypeEvaluator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method private applyLocalVisibilityOverride()V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private calculateControllableTypes()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_33

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_30

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v4

    if-eqz v4, :cond_30

    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v0, v4

    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_33
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 9

    if-eqz p2, :cond_5

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    :cond_5
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_62

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v2, p1, :cond_5f

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    invoke-static {v2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2e
    if-ltz v3, :cond_4f

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/InsetsSourceConsumer;->setForceAnimation(Z)V

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->notifyAnimationFinished()Z

    move-result v5

    if-eqz v5, :cond_4c

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v5}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    :cond_4f
    if-eqz p2, :cond_62

    iget-boolean v3, v1, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v3, :cond_62

    iget-object v3, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_62

    :cond_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_62
    :goto_62
    return-void
.end method

.method private cancelExistingControllers(I)V
    .registers 7

    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    :try_start_7
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_28

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_32

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    :cond_32
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    nop

    return-void

    :catchall_36
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    throw v1
.end method

.method private captionInsetsUnchanged()Z
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-nez v0, :cond_f

    return v2

    :cond_f
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v3, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_2a

    return v2

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_8
    if-ltz v2, :cond_65

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    if-eqz p4, :cond_20

    const/4 v5, 0x2

    if-ne p4, v5, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v5, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move v5, v3

    :goto_21
    const/4 v6, 0x0

    if-eqz v5, :cond_32

    invoke-virtual {v4, p1}, Landroid/view/InsetsSourceConsumer;->requestShow(Z)I

    move-result v7

    if-eqz v7, :cond_2f

    if-eq v7, v3, :cond_2d

    goto :goto_31

    :cond_2d
    const/4 v1, 0x0

    goto :goto_31

    :cond_2f
    const/4 v6, 0x1

    nop

    :goto_31
    goto :goto_38

    :cond_32
    if-nez p1, :cond_37

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->notifyHidden()V

    :cond_37
    const/4 v6, 0x1

    :goto_38
    if-nez v6, :cond_3b

    goto :goto_62

    :cond_3b
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v7

    if-eqz v7, :cond_57

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    new-instance v9, Landroid/view/InsetsSourceControl;

    invoke-direct {v9, v7}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {p3, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v0, v8

    goto :goto_62

    :cond_57
    if-nez p4, :cond_5d

    invoke-virtual {v4, p1}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    goto :goto_62

    :cond_5d
    if-ne p4, v3, :cond_62

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->hide()V

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_65
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V
    .registers 35

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    move/from16 v11, p9

    iget v0, v12, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int v0, p1, v0

    if-nez v0, :cond_10f

    const/4 v0, 0x2

    if-ne v11, v0, :cond_3b

    iget v0, v12, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    and-int v1, p1, v0

    not-int v0, v0

    and-int v0, p1, v0

    if-eqz v15, :cond_39

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_39

    iget-object v2, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v12, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v11}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    :cond_39
    move v10, v0

    goto :goto_3d

    :cond_3b
    move/from16 v10, p1

    :goto_3d
    const/4 v0, 0x0

    if-nez v10, :cond_44

    invoke-interface {v14, v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    return-void

    :cond_44
    invoke-direct {v12, v10}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    iget v1, v12, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v1, v10

    iput v1, v12, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    invoke-static {v10}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v9

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v1

    invoke-direct {v12, v15, v9, v8, v11}, Landroid/view/InsetsController;->collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_a1

    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    new-instance v18, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v0, v18

    move v1, v10

    move-object/from16 v2, p3

    move-wide/from16 v3, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v19, v7

    move/from16 v7, p10

    move-object/from16 v20, v8

    move-object/from16 v8, p2

    move-object/from16 v21, v9

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    iput-object v0, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v1, v12, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, v12, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v13, :cond_a0

    new-instance v1, Landroid/view/-$$Lambda$InsetsController$2eTQCcgXs2h2fCMtnCUpVNcB9ps;

    invoke-direct {v1, v12, v0}, Landroid/view/-$$Lambda$InsetsController$2eTQCcgXs2h2fCMtnCUpVNcB9ps;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v13, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_a0
    return-void

    :cond_a1
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    if-nez v16, :cond_ad

    invoke-interface {v14, v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    return-void

    :cond_ad
    if-eqz p11, :cond_d3

    new-instance v18, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move v14, v10

    move/from16 v10, p9

    move v15, v11

    move-object/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;ILandroid/os/Handler;)V

    goto :goto_ee

    :cond_d3
    move v14, v10

    move v15, v11

    new-instance v18, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;I)V

    :goto_ee
    move-object/from16 v0, v18

    iget-object v1, v12, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    invoke-direct {v2, v0, v15}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_104

    new-instance v1, Landroid/view/-$$Lambda$InsetsController$fj4b0iMlmzNGo8WMz8tFflJUfrs;

    invoke-direct {v1, v12, v0}, Landroid/view/-$$Lambda$InsetsController$fj4b0iMlmzNGo8WMz8tFflJUfrs;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v13, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_104
    if-nez p10, :cond_10a

    invoke-direct {v12, v14}, Landroid/view/InsetsController;->showDirectly(I)V

    goto :goto_10e

    :cond_10a
    const/4 v1, 0x0

    invoke-direct {v12, v14, v1, v15}, Landroid/view/InsetsController;->hideDirectly(IZI)V

    :goto_10e
    return-void

    :cond_10f
    move v15, v11

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start a new insets animation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while an existing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is being cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V
    .registers 23

    move-object v12, p0

    iget-object v0, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    move-object/from16 v13, p3

    invoke-interface {v13, v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    return-void

    :cond_13
    move-object/from16 v13, p3

    iget-object v4, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(I)I

    move-result v10

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    return-void
.end method

.method private getLayoutInsetsDuringAnimationMode(I)I
    .registers 7

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_2c

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    if-nez v3, :cond_21

    goto :goto_29

    :cond_21
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v2, 0x0

    return v2

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_2c
    return v2
.end method

.method private hideDirectly(IZI)V
    .registers 7

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method private invokeControllableInsetsChangedListeners()I
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_25

    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_25
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method public static synthetic lambda$6uoSHBPvxV1C0JOZKhH1AyuNXmo(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic lambda$QTmHZEUVF9HpffXawWFTRAOvEno(Landroid/view/InsetsController;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$1(Landroid/view/InsetsController;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_12

    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget-object v2, Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;->INSTANCE:Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    :cond_12
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget-object v3, Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;->INSTANCE:Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method static synthetic lambda$static$0(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 9

    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private showDirectly(I)V
    .registers 6

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_21
    return-void
.end method

.method private updateDisabledUserAnimationTypes(I)V
    .registers 7

    iget v0, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    xor-int/2addr v0, p1

    if-eqz v0, :cond_3c

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_3a

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3a

    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_3a
    :goto_3a
    iput p1, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    :cond_3c
    return-void
.end method

.method private updateRequestedState()V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_4e

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    goto :goto_4b

    :cond_1b
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_4b

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedState:Landroid/view/InsetsState;

    invoke-virtual {v5, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedState:Landroid/view/InsetsState;

    new-instance v6, Landroid/view/InsetsSource;

    invoke-direct {v6, v4}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v5, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    const/4 v0, 0x1

    :cond_3e
    iget-object v5, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v5, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_4e
    if-nez v0, :cond_51

    return-void

    :cond_51
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedState:Landroid/view/InsetsState;

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->onInsetsModified(Landroid/view/InsetsState;)V

    return-void
.end method

.method private updateState(Landroid/view/InsetsState;)V
    .registers 12

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_11
    const/4 v4, 0x2

    const/16 v5, 0x10

    if-ge v3, v5, :cond_3e

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    if-nez v5, :cond_1d

    goto :goto_3b

    :cond_1d
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    if-ne v6, v4, :cond_34

    const/4 v6, -0x1

    aget v4, v1, v2

    or-int/2addr v4, v7

    aput v4, v1, v2

    :cond_34
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    if-ge v3, v5, :cond_58

    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    if-nez v6, :cond_4a

    goto :goto_55

    :cond_4a
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    if-nez v7, :cond_55

    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v7, v3}, Landroid/view/InsetsState;->removeSource(I)V

    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_58
    iget v3, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    :cond_7d
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->updateDisabledUserAnimationTypes(I)V

    aget v2, v1, v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/-$$Lambda$InsetsController$Q7zlA88P3JZ91fuDPXoGY-WBbiw;

    invoke-direct {v3, p0, v1}, Landroid/view/-$$Lambda$InsetsController$Q7zlA88P3JZ91fuDPXoGY-WBbiw;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8e
    return-void
.end method


# virtual methods
.method public addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public applyAnimation(IZZ)V
    .registers 18

    move-object v12, p0

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v13

    new-instance v6, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-boolean v4, v12, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    const/16 v1, -0x50

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v5

    move-object v0, v6

    move/from16 v1, p2

    move v2, v13

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIZI)V

    move-object v3, v6

    const/4 v2, 0x0

    iget-object v0, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getDurationMs()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    nop

    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    xor-int/lit8 v11, v13, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    return-void
.end method

.method public applyImeVisibility(Z)V
    .registers 4

    const/16 v0, 0x8

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InsetsController;->show(IZ)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->hide(I)V

    :goto_c
    return-void
.end method

.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method public calculateInsets(ZZLandroid/view/DisplayCutout;III)Landroid/view/WindowInsets;
    .registers 22

    move-object v0, p0

    move/from16 v11, p4

    iput v11, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    move/from16 v12, p5

    iput v12, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    move/from16 v13, p6

    iput v13, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    move-object/from16 v14, p3

    iput-object v14, v0, Landroid/view/InsetsController;->mLastDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v1, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v10, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZLandroid/view/DisplayCutout;IIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object v1
.end method

.method public calculateVisibleInsets(I)Landroid/graphics/Rect;
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public cancelExistingAnimations()V
    .registers 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method public controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 16

    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p6

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "InsetsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAnimationType(I)I
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsInternalType(I)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method getHost()Landroid/view/InsetsController$Host;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public getLastDispatchedState()Landroid/view/InsetsState;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getState()Landroid/view/InsetsState;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public getSystemBarsAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    return v0
.end method

.method public getSystemBarsBehavior()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public hide(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->hide(IZ)V

    return-void
.end method

.method hide(IZ)V
    .registers 11

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_37

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v7

    if-nez v7, :cond_28

    const/4 v7, -0x1

    if-eq v5, v7, :cond_34

    :cond_28
    if-ne v5, v3, :cond_2b

    goto :goto_34

    :cond_2b
    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_37
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p2}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    return-void
.end method

.method public isRequestedVisible(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$controlAnimationUnchecked$4$InsetsController(Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_7

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_7
    return-void
.end method

.method public synthetic lambda$controlAnimationUnchecked$5$InsetsController(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method public synthetic lambda$new$2$InsetsController()V
    .registers 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/view/InsetsController;->mTmpRunningAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_25
    if-ltz v1, :cond_53

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v4, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    instance-of v5, v4, Landroid/view/InsetsAnimationControlImpl;

    if-eqz v5, :cond_50

    move-object v5, v4

    check-cast v5, Landroid/view/InsetsAnimationControlImpl;

    iget-boolean v6, v3, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v6, :cond_45

    iget-object v6, p0, Landroid/view/InsetsController;->mTmpRunningAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/view/InsetsAnimationControlImpl;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    invoke-virtual {v5, v0}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v6

    if-eqz v6, :cond_50

    iget-object v6, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :cond_53
    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v6

    iget-object v1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v7

    iget-object v8, p0, Landroid/view/InsetsController;->mLastDisplayCutout:Landroid/view/DisplayCutout;

    iget v9, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v10, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget v11, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    const/4 v12, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZLandroid/view/DisplayCutout;IIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v4, p0, Landroid/view/InsetsController;->mUnmodifiableTmpRunningAnims:Ljava/util/List;

    invoke-interface {v3, v1, v4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    iget-object v3, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_7f
    if-ltz v3, :cond_93

    iget-object v2, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v2}, Landroid/view/InsetsAnimationControlImpl;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_7f

    :cond_93
    return-void
.end method

.method public synthetic lambda$startAnimation$6$InsetsController(Landroid/view/InsetsAnimationControlImpl;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/InsetsAnimationControlImpl;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InsetsAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_29
    if-ltz v0, :cond_3c

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v3, p1, :cond_39

    iput-boolean v1, v2, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_3c
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    iput-boolean v1, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    iput-boolean v1, p1, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    invoke-interface {p5, p1, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    return-void
.end method

.method public synthetic lambda$updateState$3$InsetsController([I)V
    .registers 3

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .registers 7

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_29

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_26

    invoke-direct {p0, v2, v1}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_29
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_34

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_34
    return-void
.end method

.method public notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    if-eqz p2, :cond_e

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->showDirectly(I)V

    goto :goto_1a

    :cond_e
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/view/InsetsController;->hideDirectly(IZI)V

    :goto_1a
    return-void
.end method

.method public notifyVisibilityChanged()V
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedState()V

    return-void
.end method

.method public onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .registers 15

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    array-length v1, p1

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    if-eqz v3, :cond_14

    iget-object v4, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    iget-object v5, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_24
    if-ltz v5, :cond_40

    iget-object v6, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceConsumer;

    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceControl;

    invoke-virtual {v6, v7, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    :cond_40
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_47
    if-ltz v5, :cond_82

    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceControl;

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    invoke-virtual {v8, v6, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)V

    if-nez v1, :cond_7f

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v9

    iget-object v10, p0, Landroid/view/InsetsController;->mRequestedState:Landroid/view/InsetsState;

    invoke-virtual {v10, v7}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v10

    if-eq v9, v10, :cond_6c

    move v10, v2

    goto :goto_6d

    :cond_6c
    move v10, v0

    :goto_6d
    const/16 v11, 0xd

    if-ne v7, v11, :cond_75

    if-eqz v9, :cond_75

    move v11, v2

    goto :goto_76

    :cond_75
    move v11, v0

    :goto_76
    if-nez v10, :cond_7d

    if-eqz v11, :cond_7b

    goto :goto_7d

    :cond_7b
    move v12, v0

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v12, v2

    :goto_7e
    move v1, v12

    :cond_7f
    add-int/lit8 v5, v5, -0x1

    goto :goto_47

    :cond_82
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v5

    aget v6, v3, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v3, v0

    aget v6, v4, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v4, v0

    aget v6, v3, v0

    if-eqz v6, :cond_a0

    aget v6, v3, v0

    invoke-virtual {p0, v6, v2, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    :cond_a0
    aget v2, v4, v0

    if-eqz v2, :cond_a9

    aget v2, v4, v0

    invoke-virtual {p0, v2, v0, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    :cond_a9
    if-eqz v1, :cond_ae

    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedState()V

    :cond_ae
    return-void
.end method

.method public onFrameChanged(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChanged(Landroid/view/InsetsState;)Z
    .registers 6

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/InsetsController;->captionInsetsUnchanged()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v2

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v1

    :goto_14
    if-nez v0, :cond_1f

    iget-object v3, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v3, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v2

    :cond_1f
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v2, v3, v1, v1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v3, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    if-eqz v2, :cond_3d

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedState()V

    :cond_3d
    return v1
.end method

.method public onWindowFocusGained()V
    .registers 2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained()V

    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportPerceptible(IZ)V
    .registers 8

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_29

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_29
    return-void
.end method

.method public scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_1b

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_1b

    :cond_c
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    :cond_1a
    return-void

    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    return-void
.end method

.method public setAnimationsDisabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    return-void
.end method

.method public setCaptionInsetsHeight(I)V
    .registers 2

    iput p1, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    return-void
.end method

.method public setSystemBarsAppearance(II)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    return-void
.end method

.method public show(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->show(IZ)V

    return-void
.end method

.method public show(IZ)V
    .registers 18

    move-object v12, p0

    move/from16 v13, p2

    if-eqz v13, :cond_2d

    iget-object v0, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_2d

    iget-object v14, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v0, 0x0

    iput-object v0, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, v12, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, v12, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, v14, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v14, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v14, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v4, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v5, 0x1

    iget-wide v6, v14, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iget-object v8, v14, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iget v9, v14, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v10, v14, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v11, v14, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    return-void

    :cond_2d
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_38
    if-ltz v2, :cond_6a

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v7

    if-eqz v7, :cond_55

    const/4 v7, -0x1

    if-eq v5, v7, :cond_67

    :cond_55
    if-nez v5, :cond_58

    goto :goto_67

    :cond_58
    if-eqz v13, :cond_5e

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5e

    goto :goto_67

    :cond_5e
    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :cond_6a
    invoke-virtual {p0, v0, v3, v13}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    return-void
.end method

.method public startAnimation(Landroid/view/InsetsAnimationControlImpl;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .registers 15

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v8, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlImpl;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v8}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCompatSysUiVisibility(IZZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(IZZ)V

    return-void
.end method
