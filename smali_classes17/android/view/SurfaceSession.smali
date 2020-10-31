.class public final Landroid/view/SurfaceSession;
.super Ljava/lang/Object;
.source "SurfaceSession.java"


# instance fields
.field private mNativeClient:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/SurfaceSession;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeKill(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeDestroy(J)V
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

.method public kill()V
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeKill(J)V

    return-void
.end method
