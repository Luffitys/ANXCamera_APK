.class Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;
.super Ljava/lang/Object;
.source "FramePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/rendermanager/videoRender/FramePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferPoolInfo"
.end annotation


# instance fields
.field freeFrameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/rendermanager/videoRender/FramePool;

.field totalAllocateCount:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/rendermanager/videoRender/FramePool;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->this$0:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->totalAllocateCount:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v15, v2

    :goto_0
    iget v2, v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->totalAllocateCount:I

    if-ge v15, v2, :cond_0

    new-instance v14, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    const/16 v3, 0x800

    const/16 v4, 0x800

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v2, v14

    move-object v7, v1

    move-object/from16 p1, v1

    move-object v1, v14

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;-><init>(IIZZ[I[Ljava/nio/ByteBuffer;FFFFFI)V

    iget-object v2, v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x800
        0x400
        0x400
    .end array-data
.end method
