.class public final Landroid/media/MediaCodec$OutputFrame;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFrame"
.end annotation


# instance fields
.field private mAccessible:Z

.field private final mChangedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private mFormat:Landroid/media/MediaFormat;

.field private mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final mIndex:I

.field private final mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private mLoaded:Z

.field private mPresentationTimeUs:J


# direct methods
.method constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    iput p1, p0, Landroid/media/MediaCodec$OutputFrame;->mIndex:I

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return-void
.end method

.method public getChangedKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    iget-object v1, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_17
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    return v0
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not graphic"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLinearBlock()Landroid/media/MediaCodec$LinearBlock;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not linear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPresentationTimeUs()J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    return-wide v0
.end method

.method isAccessible()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    return v0
.end method

.method isLoaded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return v0
.end method

.method setAccessible(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    return-void
.end method

.method setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    return-void
.end method

.method setLoaded(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return-void
.end method
