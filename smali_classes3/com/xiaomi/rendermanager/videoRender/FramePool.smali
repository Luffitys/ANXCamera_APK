.class Lcom/xiaomi/rendermanager/videoRender/FramePool;
.super Ljava/lang/Object;
.source "FramePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;
    }
.end annotation


# static fields
.field private static final MAX_DIMENSION:I = 0x800

.field private static final TAG:Ljava/lang/String; = "FramePool"

.field private static frameCount:I = 0x10


# instance fields
.field private poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;-><init>(Lcom/xiaomi/rendermanager/videoRender/FramePool;)V

    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    return-void
.end method

.method private static summarizeFrameDimensions(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)J
    .locals 6

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    int-to-long v0, v0

    const-wide/16 v2, 0x800

    mul-long/2addr v0, v2

    iget v4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-object p0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v4, 0x0

    aget v4, p0, v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    const/4 v4, 0x1

    aget v4, p0, v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    aget p0, p0, v2

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static validateDimensions(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Z
    .locals 4

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x800

    if-gt v0, v3, :cond_0

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-gt v0, v3, :cond_0

    iget-object p0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v0, p0, v2

    if-gt v0, v3, :cond_0

    aget v0, p0, v1

    if-gt v0, v3, :cond_0

    const/4 v0, 0x2

    aget p0, p0, v0

    if-gt p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public getFrameSize()I
    .locals 0

    sget p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    return p0
.end method

.method public returnFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    iget-object p0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected frame dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takeFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    iget-object v1, v1, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    const/16 v3, 0x800

    if-gt v2, v3, :cond_1

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    iget-boolean v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->localPreview:Z

    iput-boolean v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->localPreview:Z

    iget-boolean v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->backCamera:Z

    iput-boolean v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->backCamera:Z

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iget-object v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    iput-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iput v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iget p1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    iput p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    sget p1, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    sub-int/2addr p1, v3

    sput p1, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "FramePool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer pool new a frame, totalAllocateCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    iget p0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->totalAllocateCount:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " size:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for strid:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v5, 0x0

    aget p0, p0, v5

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    aget p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    monitor-exit v0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution is out of boundary, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
