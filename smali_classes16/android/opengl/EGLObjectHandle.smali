.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "EGLObjectHandle.java"


# instance fields
.field private final mHandle:J


# direct methods
.method protected constructor <init>(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method

.method protected constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method


# virtual methods
.method public getHandle()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_e

    long-to-int v0, v0

    return v0

    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNativeHandle()J
    .registers 3

    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method
