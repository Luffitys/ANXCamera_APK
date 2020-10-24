.class Lcom/xiaomi/camera/core/MultiFrameProcessor$ProcessDataAndTaskSession;
.super Ljava/lang/Object;
.source ""


# instance fields
.field data:Lcom/xiaomi/camera/core/CaptureData;

.field taskSession:Lcom/xiaomi/engine/TaskSession;

.field final synthetic this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$ProcessDataAndTaskSession;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$ProcessDataAndTaskSession;->data:Lcom/xiaomi/camera/core/CaptureData;

    iput-object p3, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$ProcessDataAndTaskSession;->taskSession:Lcom/xiaomi/engine/TaskSession;

    return-void
.end method
