.class Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;
.super Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source ""


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastFrameTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 2

    invoke-direct {p0, p1}, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    new-instance p1, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;

    invoke-direct {p1, p0}, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;-><init>(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;)V

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$402(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    return-wide p1
.end method


# virtual methods
.method postFrameCallback()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
