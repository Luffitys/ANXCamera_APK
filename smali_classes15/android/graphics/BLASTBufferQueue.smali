.class public final Landroid/graphics/BLASTBufferQueue;
.super Ljava/lang/Object;
.source "BLASTBufferQueue.java"


# instance fields
.field private mNativeObject:J


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;IIZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v2, p2

    int-to-long v4, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/BLASTBufferQueue;->nativeCreate(JJJZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    return-void
.end method

.method private static native nativeCreate(JJJZ)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSurface(J)Landroid/view/Surface;
.end method

.method private static native nativeSetNextTransaction(JJ)V
.end method

.method private static native nativeUpdate(JJJJ)V
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V

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
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 3

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public setNextTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->nativeSetNextTransaction(JJ)V

    return-void
.end method

.method public update(Landroid/view/SurfaceControl;II)V
    .registers 12

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v0 .. v7}, Landroid/graphics/BLASTBufferQueue;->nativeUpdate(JJJJ)V

    return-void
.end method
