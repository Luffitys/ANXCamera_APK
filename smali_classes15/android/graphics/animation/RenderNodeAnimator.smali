.class public Landroid/graphics/animation/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;,
        Landroid/graphics/animation/RenderNodeAnimator$ViewListener;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xb

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFinalValue:F

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/graphics/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/graphics/animation/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    iput p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    iput p2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mFinalValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    invoke-static {p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateAnimator(IF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    return-void
.end method

.method public constructor <init>(IIFF)V
    .registers 7

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    nop

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    iput-wide v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    nop

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Landroid/graphics/animation/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->init(J)V

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/animation/RenderNodeAnimator;J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;->processDelayed(J)Z

    move-result v0

    return v0
.end method

.method private applyInterpolator()V
    .registers 5

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_33

    iget-object v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v1, :cond_9

    goto :goto_33

    :cond_9
    invoke-static {v0}, Landroid/graphics/animation/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast v0, Landroid/graphics/animation/NativeInterpolator;

    invoke-interface {v0}, Landroid/graphics/animation/NativeInterpolator;->createNativeInterpolator()J

    move-result-wide v0

    goto :goto_29

    :cond_18
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nGetDuration(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v0, v1}, Landroid/graphics/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v2

    move-wide v0, v2

    :goto_29
    iget-object v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nSetInterpolator(JJ)V

    return-void

    :cond_33
    :goto_33
    return-void
.end method

.method private static callOnFinished(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/animation/-$$Lambda$awqPSgriNRe12PWP0zkpAtPsfV4;

    invoke-direct {v1, p0}, Landroid/graphics/animation/-$$Lambda$awqPSgriNRe12PWP0zkpAtPsfV4;-><init>(Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26

    :cond_10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/animation/-$$Lambda$awqPSgriNRe12PWP0zkpAtPsfV4;

    invoke-direct {v1, p0}, Landroid/graphics/animation/-$$Lambda$awqPSgriNRe12PWP0zkpAtPsfV4;-><init>(Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_26
    return-void
.end method

.method private checkMutable()V
    .registers 3

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator has already started, cannot change it now!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    :cond_d
    return-object v0
.end method

.method private doStart()V
    .registers 3

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mRenderProperty:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    if-eqz v0, :cond_f

    iget v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mFinalValue:F

    invoke-interface {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator$ViewListener;->onAlphaAnimationStart(F)V

    :cond_f
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->moveToRunningState()V

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator$ViewListener;->invalidateParent(Z)V

    :cond_1a
    return-void
.end method

.method private static getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;
    .registers 2

    sget-object v0, Landroid/graphics/animation/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    if-nez v0, :cond_15

    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    invoke-direct {v1}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    move-object v0, v1

    sget-object v1, Landroid/graphics/animation/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method private init(J)V
    .registers 4

    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void
.end method

.method static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/animation/HasNativeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private moveToRunningState()V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nStart(J)V

    :cond_e
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->notifyStartListeners()V

    return-void
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetListener(JLandroid/graphics/animation/RenderNodeAnimator;)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(J)V
.end method

.method private notifyStartListeners()V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_c
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    return-void
.end method

.method private processDelayed(J)Z
    .registers 7

    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    iput-wide p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartTime:J

    goto :goto_18

    :cond_b
    sub-long v0, p1, v0

    iget-wide v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->doStart()V

    const/4 v0, 0x1

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method private releaseNativePtr()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_32

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->moveToRunningState()V

    :cond_14
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_20
    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2f
    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->end()V

    :cond_32
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .registers 3

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->doStart()V

    :cond_12
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->nEnd(J)V

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator$ViewListener;->invalidateParent(Z)V

    goto :goto_29

    :cond_26
    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->onFinished()V

    :cond_29
    :goto_29
    return-void
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getNativeAnimator()J
    .registers 3

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .registers 5

    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    iget-wide v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isRunning()Z
    .registers 4

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public isStarted()Z
    .registers 2

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected onFinished()V
    .registers 5

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->releaseNativePtr()V

    return-void

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->notifyStartListeners()V

    :cond_15
    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v1, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_24
    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_33
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->releaseNativePtr()V

    return-void
.end method

.method public pause()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;
    .registers 7

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1c

    iput-wide p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledDuration:J

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float v2, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->nSetDuration(JJ)V

    return-object p0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    iput-object p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    iput-wide p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUnscaledStartDelay:J

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDelay must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartValue(F)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->nSetStartValue(JF)V

    return-void
.end method

.method public final setTarget(Landroid/graphics/RecordingCanvas;)V
    .registers 3

    iget-object v0, p1, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, v0}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method protected setTarget(Landroid/graphics/RenderNode;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->checkMutable()V

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mTarget:Landroid/graphics/RenderNode;

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroid/graphics/animation/RenderNodeAnimator;->nSetListener(JLandroid/graphics/animation/RenderNodeAnimator;)V

    iput-object p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mTarget:Landroid/graphics/RenderNode;

    invoke-virtual {p1, p0}, Landroid/graphics/RenderNode;->addAnimator(Landroid/graphics/animation/RenderNodeAnimator;)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewListener(Landroid/graphics/animation/RenderNodeAnimator$ViewListener;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mViewListener:Landroid/graphics/animation/RenderNodeAnimator$ViewListener;

    return-void
.end method

.method public start()V
    .registers 5

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mTarget:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_4d

    iget v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    if-nez v0, :cond_45

    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mState:I

    iget-object v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_16

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Landroid/graphics/animation/RenderNodeAnimator;->mHandler:Landroid/os/Handler;

    :cond_16
    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->applyInterpolator()V

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/graphics/animation/RenderNodeAnimator;->cancel()V

    goto :goto_44

    :cond_21
    iget-wide v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    iget-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    if-nez v0, :cond_2e

    goto :goto_36

    :cond_2e
    invoke-static {}, Landroid/graphics/animation/RenderNodeAnimator;->getHelper()Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V

    goto :goto_44

    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/animation/RenderNodeAnimator;->mStartDelay:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->nSetStartDelay(JJ)V

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator;->doStart()V

    :goto_44
    return-void

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
