.class public Lcom/android/internal/telephony/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;
    }
.end annotation


# instance fields
.field private mCurrentDelayMs:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

.field private mMaximumDelayMs:J

.field private mMultiplier:I

.field private mRetryCounter:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartDelayMs:J


# direct methods
.method public constructor <init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/ExponentialBackoff$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ExponentialBackoff$1;-><init>(Lcom/android/internal/telephony/ExponentialBackoff;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iput-wide p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    iput-wide p3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    iput p5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    iput-object p6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V
    .registers 16

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ExponentialBackoff;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getCurrentDelay()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    return-wide v0
.end method

.method public notifyFailed()V
    .registers 10

    iget v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iget-wide v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    iget-wide v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    long-to-double v3, v3

    iget v5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    int-to-double v5, v5

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setHandlerAdapter(Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    return-void
.end method

.method public start()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
