.class public Landroid/graphics/DrawFilter;
.super Ljava/lang/Object;
.source "DrawFilter.java"


# instance fields
.field public mNativeInt:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:J

    invoke-static {v0, v1}, Landroid/graphics/DrawFilter;->nativeDestructor(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
