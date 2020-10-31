.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPtr:J

.field private final mStrategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeInitialize(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    iput-object p1, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    return-void
.end method

.method private static native nativeAddMovement(JLandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeComputeCurrentVelocity(JIF)V
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(JI)F
.end method

.method private static native nativeGetYVelocity(JI)F
.end method

.method private static native nativeInitialize(Ljava/lang/String;)J
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .registers 3

    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_12

    :cond_c
    new-instance v1, Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    :goto_12
    return-object v1
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .registers 2

    if-nez p0, :cond_7

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(JLandroid/view/MotionEvent;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 3

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeClear(J)V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 5

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1, p1, v2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 5

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/VelocityTracker;->mPtr:J
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z
    .registers 5

    if-eqz p2, :cond_9

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outEstimator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXVelocity()F
    .registers 4

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .registers 4

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .registers 4

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .registers 4

    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    iget-object v0, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method
