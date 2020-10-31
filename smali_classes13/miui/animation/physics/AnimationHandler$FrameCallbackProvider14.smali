.class Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;
.super Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider14"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastFrameTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    new-instance v0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;

    invoke-direct {v0, p0}, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14$1;-><init>(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;)V

    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$402(Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    return-wide p1
.end method


# virtual methods
.method postFrameCallback()V
    .registers 5

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

    iget-object v3, p0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
