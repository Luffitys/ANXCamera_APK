.class public abstract Landroid/view/CompositionSamplingListener;
.super Ljava/lang/Object;
.source "CompositionSamplingListener.java"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mNativeListener:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->nativeCreate(Landroid/view/CompositionSamplingListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    return-void
.end method

.method private static dispatchOnSampleCollected(Landroid/view/CompositionSamplingListener;F)V
    .registers 4

    iget-object v0, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;

    invoke-direct {v1, p0, p1}, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;-><init>(Landroid/view/CompositionSamplingListener;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$dispatchOnSampleCollected$0(Landroid/view/CompositionSamplingListener;F)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/CompositionSamplingListener;->onSampleCollected(F)V

    return-void
.end method

.method private static native nativeCreate(Landroid/view/CompositionSamplingListener;)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeRegister(JJIIII)V
.end method

.method private static native nativeUnregister(J)V
.end method

.method public static register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 16

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "default display only for now"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_17

    iget-wide v2, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    :cond_17
    move-wide v6, v2

    iget-wide v4, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    iget v8, p3, Landroid/graphics/Rect;->left:I

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p3, Landroid/graphics/Rect;->right:I

    iget v11, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v4 .. v11}, Landroid/view/CompositionSamplingListener;->nativeRegister(JJIIII)V

    return-void
.end method

.method public static unregister(Landroid/view/CompositionSamplingListener;)V
    .registers 5

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeUnregister(J)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 5

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/view/CompositionSamplingListener;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract onSampleCollected(F)V
.end method
